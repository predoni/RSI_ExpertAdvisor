//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include "SymbolConfig.mqh"
#include "TraderRSI.mqh"
#include "TradeDaily.mqh"
#include "MyPositions.mqh"
#include "TimeClass.mqh"
//+------------------------------------------------------------------+
string versionECN = "ROBO 4.35";
bool   executed = false;
double rsiMaxValue = 98.00;
double rsiMinValue = 2.37;
int    handleRSI = 0;
double iRSIBuffer[];
bool   notifedRSI = false;
int    handleStochastic = 0;
double iStochasticMainBuffer[];
double iStochasticSignalBuffer[];
bool   notifedStochastic = false;

bool   notifiedSpread_100 = false;
bool   notifiedSpread_110 = false;
bool   notifiedSpread_120 = false;
bool   notifiedSpread_130 = false;
bool   notifiedSpread_140 = false;
bool   notifiedSpread_150 = false;
bool   notifiedSpread_200 = false;
bool   notifiedSpread_250 = false;
bool   notifiedSpread_300 = false;
bool   notifiedSpread_325 = false;
bool   notifiedSpread_350 = false;
bool   notifiedSpread_375 = false;
bool   notifiedSpread_400 = false;

SymbolConfig mySymbolConfig;
trade_Symbol myTrade_Symbol;
TraderRSI    myTraderRSI;
TradeDaily   myTradeDaily;
//+------------------------------------------------------------------+
int OnInit()
{
   //SendNotification(_Symbol + ": Trader versionECN: " + versionECN);
   Print(_Symbol + ": Trader versionECN: " + versionECN);
   
   MqlDateTime timeCurrent;
   datetime dtTimeCurrent = TimeCurrent(timeCurrent);
   myTrade_Symbol = mySymbolConfig.Get(dtTimeCurrent, timeCurrent, _Symbol);
   
   ResetLastError();
   SetIndexBuffer(0,iRSIBuffer,INDICATOR_DATA);
   handleRSI = iRSI(_Symbol,PERIOD_CURRENT,7,PRICE_CLOSE); 
   if(handleRSI == INVALID_HANDLE) 
   {
      PrintFormat("Failed to create handle of the iRSI indicator for the symbol %s/%s, error code %d", 
                  _Symbol, 
                  EnumToString(PERIOD_CURRENT), 
                  GetLastError());
      return(INIT_FAILED); // In this case stop the programm!!!
   }
   
   ResetLastError();
   SetIndexBuffer(0,iStochasticMainBuffer,INDICATOR_DATA);
   SetIndexBuffer(0,iStochasticSignalBuffer,INDICATOR_DATA);
   handleStochastic = iStochastic(_Symbol, PERIOD_CURRENT, 5, 3, 3, MODE_SMA, STO_LOWHIGH); 
   if(handleStochastic == INVALID_HANDLE) 
   {
      PrintFormat("Failed to create handle of the iStochastic indicator for the symbol %s/%s, error code %d", 
                  _Symbol, 
                  EnumToString(PERIOD_CURRENT), 
                  GetLastError());
      return(INIT_FAILED); // In this case stop the programm!!!
   }

   return(INIT_SUCCEEDED);
}
//+------------------------------------------------------------------+
void OnDeinit(const int reason) {}
//+------------------------------------------------------------------+
void OnTick()
{
   //if (executed) { return; }
   MqlDateTime timeCurrent;
   datetime dtTimeCurrent = TimeCurrent(timeCurrent);
   
   MqlTick currentTick;
   SymbolInfoTick(_Symbol, currentTick);
   
   // myTradeDaily.Execute(dtTimeCurrent, timeCurrent, currentTick, myTrade_Symbol);
   
   if (!TimeClass::IsTradingPeriod(dtTimeCurrent, timeCurrent)) {
      return;
   }
   
   // NotifySpread(dtTimeCurrent, timeCurrent, currentTick);
   NotifyRSI(dtTimeCurrent, timeCurrent, currentTick);
   ExecuteRSI(dtTimeCurrent, timeCurrent, currentTick);
}
//+------------------------------------------------------------------+
void NotifySpread(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick)
{
   MqlRates rates[];
   int copiedMqlRates = CopyRates(_Symbol, PERIOD_CURRENT, 0, 1, rates);
   if (copiedMqlRates <= 0)
      Print("Error copying price data ", GetLastError());
   
   MqlRates ratesUltima = rates[0];
   double hlSpread = ratesUltima.high - ratesUltima.low;
   double pip100 = 1000 * _Point;
   double pip110 = 1100 * _Point;
   double pip120 = 1200 * _Point;
   double pip130 = 1300 * _Point;
   double pip140 = 1400 * _Point;
   double pip150 = 1500 * _Point;
   
   double pip200 = 2000 * _Point;
   double pip250 = 2500 * _Point;
   double pip300 = 3000 * _Point;
   double pip325 = 3250 * _Point;
   double pip350 = 3500 * _Point;
   double pip375 = 3750 * _Point;
   double pip400 = 4000 * _Point;
   
   if (!notifiedSpread_100 && hlSpread >= pip100) {
      SendNotification(_Symbol + ": high - low >= 100 pip");
      notifiedSpread_100 = true;
      return;
   }
   
   if (!notifiedSpread_110 && hlSpread >= pip110) {
      SendNotification(_Symbol + ": high - low >= 110 pip");
      notifiedSpread_110 = true;
      return;
   }
   
   if (!notifiedSpread_120 && hlSpread >= pip120) {
      SendNotification(_Symbol + ": high - low >= 120 pip");
      notifiedSpread_120 = true;
      return;
   }
   
   if (!notifiedSpread_130 && hlSpread >= pip130) {
      SendNotification(_Symbol + ": high - low >= 130 pip");
      notifiedSpread_130 = true;
      return;
   }
   
   if (!notifiedSpread_140 && hlSpread >= pip140) {
      SendNotification(_Symbol + ": high - low >= 140 pip");
      notifiedSpread_140 = true;
      return;
   }
   
   if (!notifiedSpread_150 && hlSpread >= pip150) {
      SendNotification(_Symbol + ": high - low >= 150 pip");
      notifiedSpread_150 = true;
      return;
   }
   
   if (!notifiedSpread_200 && hlSpread >= pip200) {
      SendNotification(_Symbol + ": high - low >= 200 pip");
      notifiedSpread_200 = true;
      return;
   }
   
   if (!notifiedSpread_250 && hlSpread >= pip250) {
      SendNotification(_Symbol + ": high - low >= 250 pip");
      notifiedSpread_250 = true;
      return;
   }
   
   if (!notifiedSpread_300 && hlSpread >= pip300) {
      SendNotification(_Symbol + ": high - low >= 300 pip");
      notifiedSpread_300 = true;
      return;
   }
   
   if (!notifiedSpread_325 && hlSpread >= pip325) {
      SendNotification(_Symbol + ": high - low >= 325 pip");
      notifiedSpread_325 = true;
      return;
   }
   
   if (!notifiedSpread_350 && hlSpread >= pip350) {
      SendNotification(_Symbol + ": high - low >= 350 pip");
      notifiedSpread_350 = true;
      return;
   }
   
   if (!notifiedSpread_375 && hlSpread >= pip375) {
      SendNotification(_Symbol + ": high - low >= 375 pip");
      notifiedSpread_375 = true;
      return;
   }
   
   if (!notifiedSpread_400 && hlSpread >= pip400) {
      SendNotification(_Symbol + ": high - low >= 400 pip");
      notifiedSpread_400 = true;
      return;
   }
}
//+------------------------------------------------------------------+
void NotifyRSI(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick)
{
   ArrayFree(iRSIBuffer);
   CopyBuffer(handleRSI,0,0,1,iRSIBuffer);
   
   //PrintFormat("RSI current value = %s", DoubleToString(iRSIBuffer[0]));
   
   if (!notifedRSI && (iRSIBuffer[0] >= 90 || iRSIBuffer[0] <= 10))
   {
      SendNotification(_Symbol + " - RSI: " + DoubleToString(iRSIBuffer[0]));
      notifedRSI = true;
   }
   
   if (notifedRSI && 20 < iRSIBuffer[0] && iRSIBuffer[0] < 80)
      notifedRSI = false;
}
//+------------------------------------------------------------------+
void NotifyStochastic(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick)
{
   //--- reset error code 
   ResetLastError(); 
   
   ArrayFree(iStochasticMainBuffer);
   ArrayFree(iStochasticSignalBuffer);
   
   if (CopyBuffer(handleStochastic,MAIN_LINE,0,1,iStochasticMainBuffer) < 0)
      PrintFormat("Failed to copy data from the iStochastic indicator, error code %d",GetLastError()); 
   
   if (CopyBuffer(handleStochastic,SIGNAL_LINE,0,1,iStochasticSignalBuffer) < 0)
      PrintFormat("Failed to copy data from the iStochastic indicator, error code %d",GetLastError()); 
   
   //PrintFormat("RSI current value = %s", DoubleToString(iRSIBuffer[0]));
   
   //if (!notifedStochastic && (iStochasticMainBuffer[0] >= 99 || iStochasticMainBuffer[0] <= 1))
   //{
   //   SendNotification(_Symbol + " - Stochastic: " + DoubleToString(iStochasticMainBuffer[0]));
   //   notifedStochastic = true;
   //}
   
   if (!notifedStochastic && (iStochasticSignalBuffer[0] >= 95 || iStochasticSignalBuffer[0] <= 5))
   {
      SendNotification(_Symbol + " - Stochastic: " + DoubleToString(iStochasticSignalBuffer[0]));
      notifedStochastic = true;
   }
   
   if (notifedStochastic && 15 < iStochasticMainBuffer[0] && iStochasticMainBuffer[0] < 85)
      notifedStochastic = false;
}
//+------------------------------------------------------------------+
void ExecuteRSI(datetime dtTimeCurrent, MqlDateTime &timeCurrent, MqlTick &currentTick)
{
   ArrayFree(iRSIBuffer);
   CopyBuffer(handleRSI,0,0,1,iRSIBuffer);
   
   if (iRSIBuffer[0] > rsiMaxValue) {
      rsiMaxValue = iRSIBuffer[0];
      PrintFormat("%s: RSI max value = %f", _Symbol, rsiMaxValue);
   }
   
   if (iRSIBuffer[0] < rsiMinValue) {
      rsiMinValue = iRSIBuffer[0];
      PrintFormat("%s: RSI min value = %f", _Symbol, rsiMinValue);
   }
   
   double spread = currentTick.ask - currentTick.bid;
   trade_Symbol symbolConfig = mySymbolConfig.Get(iRSIBuffer[0], spread, dtTimeCurrent, timeCurrent, _Symbol);
   
   // Do not take in consideration the spread for this moment.
   //if (spread > symbolConfig.maxSpread)
   //   return;
   
   //PrintFormat("RSI current value = %s", DoubleToString(iRSIBuffer[0]));
   
   if (iRSIBuffer[0] >= symbolConfig.RSI_High) 
      myTraderRSI.SellLimit(dtTimeCurrent, timeCurrent, currentTick, symbolConfig);
   
   if (iRSIBuffer[0] <= symbolConfig.RSI_Low) 
      myTraderRSI.BuyLimit(dtTimeCurrent, timeCurrent, currentTick, symbolConfig);
}
//+------------------------------------------------------------------+