//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include "SymbolConfig.mqh"
#include "TraderRSI.mqh"
#include "MyPositions.mqh"
#include "TimeClass.mqh"
//+------------------------------------------------------------------+
string versionECN = "ROBO 4.21";
bool executed = false;
double rsiMaxValue = 97.51;
double rsiMinValue = 2.37;
int handleRSI = 0;
double iRSIBuffer[];
SymbolConfig mySymbolConfig;
TraderRSI myTraderRSI;
//+------------------------------------------------------------------+
int OnInit()
{
   SendNotification(_Symbol + ": Trader versionECN: " + versionECN);
   Print(_Symbol + ": Trader versionECN: " + versionECN);
   
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
   
   if (!TimeClass::EstePerioadaDeTranzactionare(dtTimeCurrent, timeCurrent)) {
      return;
   }
   
   MqlTick currentTick;
   SymbolInfoTick(_Symbol, currentTick);
   
   ExecuteRSI(dtTimeCurrent, timeCurrent, currentTick);
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