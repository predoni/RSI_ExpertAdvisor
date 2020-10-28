//+------------------------------------------------------------------+
//|                                                       Trader.mqh |
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
class TraderRSI
{
   public:
      string m_Algorithm;
      SymbolConfig m_SymbolConfig;
      CTrade m_Trade;
      
   public:
      TraderRSI();
      ~TraderRSI();
      
      void BuyLimit(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig);
      void SellLimit(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig);
};
//+------------------------------------------------------------------+
TraderRSI::TraderRSI()
{
   m_Algorithm = "RSI";
}
//+------------------------------------------------------------------+
TraderRSI::~TraderRSI(){}
//+------------------------------------------------------------------+
void TraderRSI::BuyLimit(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig)
{
   if (MyPositions::IsPositionsActiveForType(POSITION_TYPE_BUY, m_Algorithm) ||
       MyPositions::IsOrdersActiveForType(ORDER_TYPE_BUY_LIMIT, m_Algorithm))
      return;
      
   double spread = currentTick.ask - currentTick.bid;
   if (spread > symbolConfig.maxSpread)
      return;
   
   MqlRates rates[];
   int copiedMqlRates = CopyRates(_Symbol, PERIOD_CURRENT, 0, 2, rates);
   if (copiedMqlRates <= 0)
      Print("Error copying price data ", GetLastError());
   
   MqlRates ratesUltima   = rates[1];
   // MqlRates ratesPeultima = rates[0];
   
   datetime dtExpiration = ratesUltima.time + 60 * 5;
   datetime dtDiff = dtExpiration - dtTimeCurrent;
   if (dtDiff < 60)
      return;
   
   double price = ratesUltima.low;
   double sl    = price - symbolConfig.stopLoose;
   double tp    = price + symbolConfig.takeProfit;
   
   bool ret = m_Trade.BuyLimit(symbolConfig.lot, price, _Symbol, sl, tp, ENUM_ORDER_TYPE_TIME::ORDER_TIME_SPECIFIED, dtExpiration, m_Algorithm);
   if (!ret)
      Print("ERROR BUY: CandleAlg::ExecuteAlg: ", GetLastError());
   
   ArrayFree(rates);
}
//+------------------------------------------------------------------+
void TraderRSI::SellLimit(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick, trade_Symbol &symbolConfig)
{
   if (MyPositions::IsPositionsActiveForType(POSITION_TYPE_SELL, m_Algorithm) ||
       MyPositions::IsOrdersActiveForType(ORDER_TYPE_SELL_LIMIT, m_Algorithm))
      return;
      
   double spread = currentTick.ask - currentTick.bid;
   if (spread > symbolConfig.maxSpread)
      return;
   
   MqlRates rates[];
   int copiedMqlRates = CopyRates(_Symbol, PERIOD_CURRENT, 0, 2, rates);
   if (copiedMqlRates <= 0)
      Print("Error copying price data ", GetLastError());
   
   MqlRates ratesUltima   = rates[1];
   // MqlRates ratesPeultima = rates[0];
   
   datetime dtExpiration = ratesUltima.time + 60 * 5;
   datetime dtDiff = dtExpiration - dtTimeCurrent;
   if (dtDiff < 60)
      return;
   
   double price = ratesUltima.high;
   double sl    = price + symbolConfig.stopLoose;
   double tp    = price - symbolConfig.takeProfit;
   
   bool ret = m_Trade.SellLimit(symbolConfig.lot, price, _Symbol, sl, tp, ENUM_ORDER_TYPE_TIME::ORDER_TIME_SPECIFIED, dtExpiration, m_Algorithm);
   if (!ret)
      Print("ERROR BUY: CandleAlg::ExecuteAlg: ", GetLastError());
   
   ArrayFree(rates);
}
//+------------------------------------------------------------------+
