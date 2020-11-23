//+------------------------------------------------------------------+
//|                                                   TradeDaily.mqh |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
#include <Trade\Trade.mqh>
#include <Trade\PositionInfo.mqh>

#include "SymbolConfig.mqh"
#include "MyPositions.mqh"
//+------------------------------------------------------------------+
class TradeDaily
{
   public:
      bool   m_BuyNotificationSent;
      bool   m_SellNotificationSent;
      
      string m_Algorithm;
      SymbolConfig m_SymbolConfig;
      CTrade m_Trade;
      
   public:
      TradeDaily();
     ~TradeDaily();
   
      void Execute(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig);
   private:
      void BuyLimit(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig);
      void SellLimit(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig);
      void VerifyPrice(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig);
};
//+------------------------------------------------------------------+
TradeDaily::TradeDaily()
{
   m_BuyNotificationSent  = false;
   m_SellNotificationSent = false;
   
   m_Algorithm = "Daily Trade Limits";
}
//+------------------------------------------------------------------+
TradeDaily::~TradeDaily(){}
//+------------------------------------------------------------------+
void TradeDaily::BuyLimit(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig)
{
   //if (MyPositions::IsPositionsActiveForType(POSITION_TYPE_BUY, m_Algorithm) ||
   //    MyPositions::IsOrdersActiveForType(ORDER_TYPE_BUY_LIMIT, m_Algorithm))
   //   return;
   
   MqlRates rates[];
   int copiedMqlRates = CopyRates(_Symbol, PERIOD_D1, 0, 1, rates);
   if (copiedMqlRates <= 0)
      Print("Error copying price data ", GetLastError());
   
   MqlRates ratesUltima   = rates[0];
   datetime dtExpiration = ratesUltima.time + (60 * 60 * 24) - 1; // 24 ore
   
   double price = ratesUltima.open - (symbolConfig.point * 2000);
   double sl    = price - (symbolConfig.point * 500);
   double tp    = price + (symbolConfig.point * 250);
   
   bool ret = m_Trade.BuyLimit(symbolConfig.lot, price, _Symbol, sl, tp, ENUM_ORDER_TYPE_TIME::ORDER_TIME_SPECIFIED, dtExpiration, m_Algorithm);
   if (!ret)
      Print("ERROR BUY: TradeDaily::ExecuteAlg: ", GetLastError());
   
   ArrayFree(rates);
}
//+------------------------------------------------------------------+
void TradeDaily::SellLimit(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig)
{
   //if (MyPositions::IsPositionsActiveForType(POSITION_TYPE_SELL, m_Algorithm) ||
   //    MyPositions::IsOrdersActiveForType(ORDER_TYPE_SELL_LIMIT, m_Algorithm))
   //   return;
      
   MqlRates rates[];
   int copiedMqlRates = CopyRates(_Symbol, PERIOD_D1, 0, 1, rates);
   if (copiedMqlRates <= 0)
      Print("Error copying price data ", GetLastError());
   
   MqlRates ratesUltima   = rates[0];
   datetime dtExpiration = ratesUltima.time + (60 * 60 * 24) - 1; // 24 ore
   
   double price = ratesUltima.open + (symbolConfig.point * 2000);
   double sl    = price + (symbolConfig.point * 500);
   double tp    = price - (symbolConfig.point * 250);
   
   bool ret = m_Trade.SellLimit(symbolConfig.lot, price, _Symbol, sl, tp, ENUM_ORDER_TYPE_TIME::ORDER_TIME_SPECIFIED, dtExpiration, m_Algorithm);
   if (!ret)
      Print("ERROR BUY: TradeDaily::ExecuteAlg: ", GetLastError());
   
   ArrayFree(rates);
}
//+------------------------------------------------------------------+
void TradeDaily::VerifyPrice(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig)
{
   ulong ticketBuyOrder  = MyPositions::GetTicket_OrdersActiveForType(ORDER_TYPE_BUY_LIMIT,  m_Algorithm);
   ulong ticketSellOrder = MyPositions::GetTicket_OrdersActiveForType(ORDER_TYPE_SELL_LIMIT, m_Algorithm);
   
   double minDistPoints   = 200 * symbolConfig.point;
   double resetDistPoints = 300 * symbolConfig.point;
   
   if (ticketBuyOrder > 0) {
      if (OrderSelect(ticketBuyOrder)) {
         double priceOpen = OrderGetDouble(ORDER_PRICE_OPEN);
         double distancePoints = currentTick.bid - priceOpen;
         
         if (!m_BuyNotificationSent && distancePoints <= minDistPoints) {
            string msg = _Symbol + ": buy distance <= 20 pips";
            SendNotification(msg);
            Print(msg);
            
            m_BuyNotificationSent = true;
         }
         
         if (distancePoints >= resetDistPoints)
            m_BuyNotificationSent = false;
      }
   }
   
   if (ticketSellOrder > 0) {
      if (OrderSelect(ticketSellOrder)) {
         double priceOpen = OrderGetDouble(ORDER_PRICE_OPEN);
         double distancePoints = priceOpen - currentTick.bid;
         
         if (!m_SellNotificationSent && distancePoints <= minDistPoints) {
            string msg = _Symbol + ": sell distance <= 20 pips";
            SendNotification(msg);
            Print(msg);
            
            m_SellNotificationSent = true;
         }
         
         if (distancePoints >= resetDistPoints)
            m_SellNotificationSent = false;
      }
   }
}
//+------------------------------------------------------------------+
void TradeDaily::Execute(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig)
{
   if (MyPositions::IsOrdersActiveForType(ORDER_TYPE_BUY_LIMIT,  m_Algorithm) ||
       MyPositions::IsOrdersActiveForType(ORDER_TYPE_SELL_LIMIT, m_Algorithm))
   {
      VerifyPrice(dtTimeCurrent, timeCurrent, currentTick, symbolConfig);
      return;
   }
   
   if (MyPositions::IsPositionsActiveForType(POSITION_TYPE_BUY,  m_Algorithm) ||
       MyPositions::IsPositionsActiveForType(POSITION_TYPE_SELL, m_Algorithm))
      return;
   
   if (ChartSetSymbolPeriod(0, NULL, PERIOD_D1)) {
      BuyLimit(dtTimeCurrent, timeCurrent, currentTick, symbolConfig);
      SellLimit(dtTimeCurrent, timeCurrent, currentTick, symbolConfig);
   } else {
      Print("ERROR: TradeDaily::Execute Unable to change the chart to D1. => ", GetLastError());
   }
     
   if(!ChartSetSymbolPeriod(0, NULL, PERIOD_M5)) {
      Print("ERROR: TradeDaily::Execute Unable to change the chart to M5. => ", GetLastError());
   }
}
//+------------------------------------------------------------------+