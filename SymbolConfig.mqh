//+------------------------------------------------------------------+
//|                                                 SymbolConfig.mqh |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
#include <Trade\AccountInfo.mqh>
#include "TimeClass.mqh"
//+------------------------------------------------------------------+
struct trade_Symbol
{
   string symbol;
   double point;
   int    digits;
   double maxSpread;
   
   double lot;
   double takeProfit;
   double stopLoose;
   double trailStop;
   
   double RSI_High;
   double RSI_Low;
};
//+------------------------------------------------------------------+
class SymbolConfig
{
   public:
      trade_Symbol emptySymbol;
      CAccountInfo AccountInfo;
      
      trade_Symbol AUDCAD;
      trade_Symbol AUDCHF;
      trade_Symbol AUDJPY;
      trade_Symbol AUDNZD;
      trade_Symbol AUDUSD;
      trade_Symbol CADCHF;
      trade_Symbol CADJPY;
      trade_Symbol CHFJPY;
      trade_Symbol EURAUD;
      trade_Symbol EURCAD;
      trade_Symbol EURCHF;
      trade_Symbol EURGBP;
      trade_Symbol EURJPY;
      trade_Symbol EURNZD;
      trade_Symbol EURPLN;
      trade_Symbol EURUSD;
      trade_Symbol GBPAUD;
      trade_Symbol GBPCAD;
      trade_Symbol GBPCHF;
      trade_Symbol GBPJPY;
      trade_Symbol GBPNZD;
      trade_Symbol GBPUSD;
      trade_Symbol NZDCAD;
      trade_Symbol NZDCHF;
      trade_Symbol NZDJPY;
      trade_Symbol NZDUSD;
      trade_Symbol USDCAD;
      trade_Symbol USDCHF;
      trade_Symbol USDCNH;
      trade_Symbol USDJPY;
      trade_Symbol USDMXN;
      trade_Symbol USDPLN;
      trade_Symbol USDRUB;
      trade_Symbol USDZAR;
      trade_Symbol XAGUSD;
      trade_Symbol XAUUSD;
   public:
      SymbolConfig();
      ~SymbolConfig();
      
   public:
      double GetLots_DynamicForENC_1_to_300();
      void   PrintAllSymbolNames();
      double GetTakeProfit(double pointValue, double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      double GetStopLoose(double pointValue, double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      double GetTrailStop(double pointValue, double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      double GetRSI_High(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      double GetRSI_Low(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      
      trade_Symbol SetAUDCAD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetAUDCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetAUDJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetAUDNZD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetAUDUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetCADCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetCADJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetCHFJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetEURAUD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetEURCAD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetEURCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetEURGBP(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetEURJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetEURNZD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetEURPLN(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetEURUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetGBPAUD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetGBPCAD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetGBPCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetGBPJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetGBPNZD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetGBPUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetNZDCAD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetNZDCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetNZDJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetNZDUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetUSDCAD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetUSDCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetUSDCNH(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetUSDJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetUSDMXN(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetUSDPLN(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetUSDRUB(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetUSDZAR(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetXAGUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      trade_Symbol SetXAUUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      
      trade_Symbol Get(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent, string symbol);
};
//+------------------------------------------------------------------+
SymbolConfig::SymbolConfig(){}
//+------------------------------------------------------------------+
SymbolConfig::~SymbolConfig(){}
//+------------------------------------------------------------------+
double SymbolConfig::GetLots_DynamicForENC_1_to_300()
{
   if (AccountInfo.Balance() <= 20.0)
      return 0.01;
   
   return NormalizeDouble((AccountInfo.Balance() / 20.0) * 0.01, 2);
}
//+------------------------------------------------------------------+
void SymbolConfig::PrintAllSymbolNames()
{
   int total=SymbolsTotal(true)-1;
   
   for(int i=0;i<total;i++)
   {
      string simbol = SymbolName(i,true);
      Print(simbol);
   }
}
//+------------------------------------------------------------------+
double SymbolConfig::GetTakeProfit(double pointValue, double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent)
{
   int points = 14;
   if (rsiValue >= 85.00) { points = 14; }
   if (rsiValue >= 90.00) { points = 16; }
   if (rsiValue >= 95.00) { points = 18; }
   if (rsiValue >= 96.00) { points = 20; }
   
   if (rsiValue <=  6.00) { points = 20; }
   if (rsiValue <=  7.00) { points = 18; }
   if (rsiValue <=  9.00) { points = 16; }
   if (rsiValue <= 13.00) { points = 14; }
   
   return pointValue * points;
}
//+------------------------------------------------------------------+
double SymbolConfig::GetStopLoose(double pointValue, double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent)
{
   return pointValue * 250.0;
}
//+------------------------------------------------------------------+
double SymbolConfig::GetTrailStop(double pointValue, double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent)
{
   return pointValue * 250.0;
}
//+------------------------------------------------------------------+
double SymbolConfig::GetRSI_High(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent)
{
   MqlDateTime time_struct;
   datetime dtHour01_00 = TimeClass::GetHour01_00(timeCurrent, time_struct);
   datetime dtHour02_00 = TimeClass::GetHour02_00(timeCurrent, time_struct);
   datetime dtHour04_00 = TimeClass::GetHour04_00(timeCurrent, time_struct);
   datetime dtHour08_00 = TimeClass::GetHour08_00(timeCurrent, time_struct);
   datetime dtHour10_00 = TimeClass::GetHour10_00(timeCurrent, time_struct);
   datetime dtHour12_00 = TimeClass::GetHour12_00(timeCurrent, time_struct);
   datetime dtHour14_00 = TimeClass::GetHour14_00(timeCurrent, time_struct);
   datetime dtHour16_00 = TimeClass::GetHour16_00(timeCurrent, time_struct);
   datetime dtHour18_00 = TimeClass::GetHour18_00(timeCurrent, time_struct);
   datetime dtHour20_00 = TimeClass::GetHour20_00(timeCurrent, time_struct);
   datetime dtHour22_00 = TimeClass::GetHour22_00(timeCurrent, time_struct);
   datetime dtHour23_00 = TimeClass::GetHour23_00(timeCurrent, time_struct);
   
   if (dtHour01_00 <= dtTimeCurrent && dtTimeCurrent < dtHour02_00) { return 98.00; }
   if (dtHour02_00 <= dtTimeCurrent && dtTimeCurrent < dtHour04_00) { return 94.00; }
   if (dtHour04_00 <= dtTimeCurrent && dtTimeCurrent < dtHour08_00) { return 86.00; }
   if (dtHour08_00 <= dtTimeCurrent && dtTimeCurrent < dtHour10_00) { return 94.00; }
   if (dtHour10_00 <= dtTimeCurrent && dtTimeCurrent < dtHour12_00) { return 98.00; }
   if (dtHour12_00 <= dtTimeCurrent && dtTimeCurrent < dtHour14_00) { return 96.00; }
   if (dtHour14_00 <= dtTimeCurrent && dtTimeCurrent < dtHour16_00) { return 96.00; }
   if (dtHour16_00 <= dtTimeCurrent && dtTimeCurrent < dtHour18_00) { return 98.00; }
   if (dtHour18_00 <= dtTimeCurrent && dtTimeCurrent < dtHour20_00) { return 96.00; }
   if (dtHour20_00 <= dtTimeCurrent && dtTimeCurrent < dtHour23_00) { return 94.00; }
   
   return 97.00;
}
//+------------------------------------------------------------------+
double SymbolConfig::GetRSI_Low(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent)
{
   MqlDateTime time_struct;
   datetime dtHour01_00 = TimeClass::GetHour01_00(timeCurrent, time_struct);
   datetime dtHour02_00 = TimeClass::GetHour02_00(timeCurrent, time_struct);
   datetime dtHour04_00 = TimeClass::GetHour04_00(timeCurrent, time_struct);
   datetime dtHour08_00 = TimeClass::GetHour08_00(timeCurrent, time_struct);
   datetime dtHour10_00 = TimeClass::GetHour10_00(timeCurrent, time_struct);
   datetime dtHour12_00 = TimeClass::GetHour12_00(timeCurrent, time_struct);
   datetime dtHour14_00 = TimeClass::GetHour14_00(timeCurrent, time_struct);
   datetime dtHour16_00 = TimeClass::GetHour16_00(timeCurrent, time_struct);
   datetime dtHour18_00 = TimeClass::GetHour18_00(timeCurrent, time_struct);
   datetime dtHour20_00 = TimeClass::GetHour20_00(timeCurrent, time_struct);
   datetime dtHour22_00 = TimeClass::GetHour22_00(timeCurrent, time_struct);
   datetime dtHour23_00 = TimeClass::GetHour23_00(timeCurrent, time_struct);
   
   if (dtHour01_00 <= dtTimeCurrent && dtTimeCurrent < dtHour02_00) { return  2.50; }
   if (dtHour02_00 <= dtTimeCurrent && dtTimeCurrent < dtHour04_00) { return  6.00; }
   if (dtHour04_00 <= dtTimeCurrent && dtTimeCurrent < dtHour08_00) { return 13.00; }
   if (dtHour08_00 <= dtTimeCurrent && dtTimeCurrent < dtHour10_00) { return  4.00; }
   if (dtHour10_00 <= dtTimeCurrent && dtTimeCurrent < dtHour12_00) { return  2.50; }
   if (dtHour12_00 <= dtTimeCurrent && dtTimeCurrent < dtHour14_00) { return  4.00; }
   if (dtHour14_00 <= dtTimeCurrent && dtTimeCurrent < dtHour16_00) { return  4.00; }
   if (dtHour16_00 <= dtTimeCurrent && dtTimeCurrent < dtHour18_00) { return  2.50; }
   if (dtHour18_00 <= dtTimeCurrent && dtTimeCurrent < dtHour20_00) { return  4.00; }
   if (dtHour20_00 <= dtTimeCurrent && dtTimeCurrent < dtHour23_00) { return  6.00; }
   
   return 3.00;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::Get(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent, string symbol)
{
   if (symbol == "AUDCAD") return this.SetAUDCAD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "AUDCHF") return this.SetAUDCHF(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "AUDJPY") return this.SetAUDJPY(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "AUDNZD") return this.SetAUDNZD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "AUDUSD") return this.SetAUDUSD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "CADCHF") return this.SetCADCHF(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "CADJPY") return this.SetCADJPY(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "CHFJPY") return this.SetCHFJPY(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "EURAUD") return this.SetEURAUD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "EURCAD") return this.SetEURCAD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "EURCHF") return this.SetEURCHF(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "EURGBP") return this.SetEURGBP(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "EURJPY") return this.SetEURJPY(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "EURNZD") return this.SetEURNZD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "EURPLN") return this.SetEURPLN(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "EURUSD") return this.SetEURUSD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "GBPAUD") return this.SetGBPAUD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "GBPCAD") return this.SetGBPCAD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "GBPCHF") return this.SetGBPCHF(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "GBPJPY") return this.SetGBPJPY(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "GBPNZD") return this.SetGBPNZD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "GBPUSD") return this.SetGBPUSD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "NZDCAD") return this.SetNZDCAD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "NZDCHF") return this.SetNZDCHF(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "NZDJPY") return this.SetNZDJPY(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "NZDUSD") return this.SetNZDUSD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "USDCAD") return this.SetUSDCAD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "USDCHF") return this.SetUSDCHF(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "USDCNH") return this.SetUSDCNH(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "USDJPY") return this.SetUSDJPY(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "USDMXN") return this.SetUSDMXN(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "USDPLN") return this.SetUSDPLN(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "USDRUB") return this.SetUSDRUB(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "USDZAR") return this.SetUSDZAR(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "XAGUSD") return this.SetXAGUSD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   if (symbol == "XAUUSD") return this.SetXAUUSD(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.emptySymbol;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetAUDCAD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.AUDCAD.symbol     = "AUDCAD";
   this.AUDCAD.point      = 0.00001;
   this.AUDCAD.digits     = 5;
   this.AUDCAD.maxSpread  = 0.00030;
   this.AUDCAD.lot        = GetLots_DynamicForENC_1_to_300();
   this.AUDCAD.takeProfit = GetTakeProfit(this.AUDCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDCAD.stopLoose  = GetStopLoose(this.AUDCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDCAD.trailStop  = GetTrailStop(this.AUDCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDCAD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDCAD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.AUDCAD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetAUDCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.AUDCHF.symbol     = "AUDCHF";
   this.AUDCHF.point      = 0.00001;
   this.AUDCHF.digits     = 5;
   this.AUDCHF.maxSpread  = 0.00030;
   this.AUDCHF.lot        = GetLots_DynamicForENC_1_to_300();
   this.AUDCHF.takeProfit = GetTakeProfit(this.AUDCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDCHF.stopLoose  = GetStopLoose(this.AUDCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDCHF.trailStop  = GetTrailStop(this.AUDCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDCHF.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDCHF.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.AUDCHF;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetAUDJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.AUDJPY.symbol     = "AUDJPY";
   this.AUDJPY.point      = 0.001;
   this.AUDJPY.digits     = 3;
   this.AUDJPY.maxSpread  = 0.030;
   this.AUDJPY.lot        = GetLots_DynamicForENC_1_to_300();
   this.AUDJPY.takeProfit = GetTakeProfit(this.AUDJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDJPY.stopLoose  = GetStopLoose(this.AUDJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDJPY.trailStop  = GetTrailStop(this.AUDJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDJPY.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDJPY.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.AUDJPY;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetAUDNZD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.AUDNZD.symbol     = "AUDNZD";
   this.AUDNZD.point      = 0.00001;
   this.AUDNZD.digits     = 5;
   this.AUDNZD.maxSpread  = 0.00030;
   this.AUDNZD.lot        = GetLots_DynamicForENC_1_to_300();
   this.AUDNZD.takeProfit = GetTakeProfit(this.AUDNZD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDNZD.stopLoose  = GetStopLoose(this.AUDNZD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDNZD.trailStop  = GetTrailStop(this.AUDNZD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDNZD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDNZD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.AUDNZD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetAUDUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.AUDUSD.symbol     = "AUDUSD";
   this.AUDUSD.point      = 0.00001;
   this.AUDUSD.digits     = 5;
   this.AUDUSD.maxSpread  = 0.00030;
   this.AUDUSD.lot        = GetLots_DynamicForENC_1_to_300();
   this.AUDUSD.takeProfit = GetTakeProfit(this.AUDUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDUSD.stopLoose  = GetStopLoose(this.AUDUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDUSD.trailStop  = GetTrailStop(this.AUDUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDUSD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.AUDUSD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.AUDUSD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetCADCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.CADCHF.symbol     = "CADCHF";
   this.CADCHF.point      = 0.00001;
   this.CADCHF.digits     = 5;
   this.CADCHF.maxSpread  = 0.00030;
   this.CADCHF.lot        = GetLots_DynamicForENC_1_to_300();
   this.CADCHF.takeProfit = GetTakeProfit(this.CADCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CADCHF.stopLoose  = GetStopLoose(this.CADCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CADCHF.trailStop  = GetTrailStop(this.CADCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CADCHF.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CADCHF.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.CADCHF;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetCADJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.CADJPY.symbol     = "CADJPY";
   this.CADJPY.point      = 0.001;
   this.CADJPY.digits     = 3;
   this.CADJPY.maxSpread  = 0.030;
   this.CADJPY.lot        = GetLots_DynamicForENC_1_to_300();
   this.CADJPY.takeProfit = GetTakeProfit(this.CADJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CADJPY.stopLoose  = GetStopLoose(this.CADJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CADJPY.trailStop  = GetTrailStop(this.CADJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CADJPY.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CADJPY.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.CADJPY;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetCHFJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.CHFJPY.symbol     = "CHFJPY";
   this.CHFJPY.point      = 0.001;
   this.CHFJPY.digits     = 3;
   this.CHFJPY.maxSpread  = 0.030;
   this.CHFJPY.lot        = GetLots_DynamicForENC_1_to_300();
   this.CHFJPY.takeProfit = GetTakeProfit(this.CHFJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CHFJPY.stopLoose  = GetStopLoose(this.CHFJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CHFJPY.trailStop  = GetTrailStop(this.CHFJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CHFJPY.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.CHFJPY.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.CHFJPY;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetEURAUD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.EURAUD.symbol     = "EURAUD";
   this.EURAUD.point      = 0.00001;
   this.EURAUD.digits     = 5;
   this.EURAUD.maxSpread  = 0.00030;
   this.EURAUD.lot        = GetLots_DynamicForENC_1_to_300();
   this.EURAUD.takeProfit = GetTakeProfit(this.EURAUD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURAUD.stopLoose  = GetStopLoose(this.EURAUD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURAUD.trailStop  = GetTrailStop(this.EURAUD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURAUD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURAUD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.EURAUD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetEURCAD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.EURCAD.symbol     = "EURCAD";
   this.EURCAD.point      = 0.00001;
   this.EURCAD.digits     = 5;
   this.EURCAD.maxSpread  = 0.00030;
   this.EURCAD.lot        = GetLots_DynamicForENC_1_to_300();
   this.EURCAD.takeProfit = GetTakeProfit(this.EURCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURCAD.stopLoose  = GetStopLoose(this.EURCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURCAD.trailStop  = GetTrailStop(this.EURCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURCAD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURCAD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.EURCAD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetEURCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.EURCHF.symbol     = "EURCHF";
   this.EURCHF.point      = 0.00001;
   this.EURCHF.digits     = 5;
   this.EURCHF.maxSpread  = 0.00030;
   this.EURCHF.lot        = GetLots_DynamicForENC_1_to_300();
   this.EURCHF.takeProfit = GetTakeProfit(this.EURCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURCHF.stopLoose  = GetStopLoose(this.EURCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURCHF.trailStop  = GetTrailStop(this.EURCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURCHF.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURCHF.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.EURCHF;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetEURGBP(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.EURGBP.symbol     = "EURGBP";
   this.EURGBP.point      = 0.00001;
   this.EURGBP.digits     = 5;
   this.EURGBP.maxSpread  = 0.00030;
   this.EURGBP.lot        = GetLots_DynamicForENC_1_to_300();
   this.EURGBP.takeProfit = GetTakeProfit(this.EURGBP.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURGBP.stopLoose  = GetStopLoose(this.EURGBP.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURGBP.trailStop  = GetTrailStop(this.EURGBP.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURGBP.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURGBP.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.EURGBP;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetEURJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.EURJPY.symbol     = "EURJPY";
   this.EURJPY.point      = 0.001;
   this.EURJPY.digits     = 3;
   this.EURJPY.maxSpread  = 0.030;
   this.EURJPY.lot        = GetLots_DynamicForENC_1_to_300();
   this.EURJPY.takeProfit = GetTakeProfit(this.EURJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURJPY.stopLoose  = GetStopLoose(this.EURJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURJPY.trailStop  = GetTrailStop(this.EURJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURJPY.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURJPY.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.EURJPY;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetEURNZD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.EURNZD.symbol     = "EURNZD";
   this.EURNZD.point      = 0.00001;
   this.EURNZD.digits     = 5;
   this.EURNZD.maxSpread  = 0.00030;
   this.EURNZD.lot        = GetLots_DynamicForENC_1_to_300();
   this.EURNZD.takeProfit = GetTakeProfit(this.EURNZD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURNZD.stopLoose  = GetStopLoose(this.EURNZD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURNZD.trailStop  = GetTrailStop(this.EURNZD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURNZD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURNZD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.EURNZD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetEURPLN(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.EURPLN.symbol     = "EURPLN";
   this.EURPLN.point      = 0.00001;
   this.EURPLN.digits     = 5;
   this.EURPLN.maxSpread  = 0.00030;
   this.EURPLN.lot        = GetLots_DynamicForENC_1_to_300();
   this.EURPLN.takeProfit = GetTakeProfit(this.EURPLN.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURPLN.stopLoose  = GetStopLoose(this.EURPLN.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURPLN.trailStop  = GetTrailStop(this.EURPLN.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURPLN.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURPLN.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.EURPLN;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetEURUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent)
{
   this.EURUSD.symbol     = "EURUSD";
   this.EURUSD.point      = 0.00001;
   this.EURUSD.digits     = 5;
   this.EURUSD.maxSpread  = 0.00030;
   this.EURUSD.lot        = GetLots_DynamicForENC_1_to_300();
   this.EURUSD.takeProfit = GetTakeProfit(this.EURUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURUSD.stopLoose  = GetStopLoose(this.EURUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURUSD.trailStop  = GetTrailStop(this.EURUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURUSD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.EURUSD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.EURUSD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetGBPAUD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.GBPAUD.symbol     = "GBPAUD";
   this.GBPAUD.point      = 0.00001;
   this.GBPAUD.digits     = 5;
   this.GBPAUD.maxSpread  = 0.00030;
   this.GBPAUD.lot        = GetLots_DynamicForENC_1_to_300();
   this.GBPAUD.takeProfit = GetTakeProfit(this.GBPAUD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPAUD.stopLoose  = GetStopLoose(this.GBPAUD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPAUD.trailStop  = GetTrailStop(this.GBPAUD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPAUD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPAUD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.GBPAUD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetGBPCAD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.GBPCAD.symbol     = "GBPCAD";
   this.GBPCAD.point      = 0.00001;
   this.GBPCAD.digits     = 5;
   this.GBPCAD.maxSpread  = 0.00030;
   this.GBPCAD.lot        = GetLots_DynamicForENC_1_to_300();
   this.GBPCAD.takeProfit = GetTakeProfit(this.GBPCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPCAD.stopLoose  = GetStopLoose(this.GBPCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPCAD.trailStop  = GetTrailStop(this.GBPCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPCAD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPCAD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.GBPCAD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetGBPCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.GBPCHF.symbol     = "GBPCHF";
   this.GBPCHF.point      = 0.00001;
   this.GBPCHF.digits     = 5;
   this.GBPCHF.maxSpread  = 0.00030;
   this.GBPCHF.lot        = GetLots_DynamicForENC_1_to_300();
   this.GBPCHF.takeProfit = GetTakeProfit(this.GBPCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPCHF.stopLoose  = GetStopLoose(this.GBPCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPCHF.trailStop  = GetTrailStop(this.GBPCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPCHF.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPCHF.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.GBPCHF;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetGBPJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.GBPJPY.symbol     = "GBPJPY";
   this.GBPJPY.point      = 0.001;
   this.GBPJPY.digits     = 3;
   this.GBPJPY.maxSpread  = 0.030;
   this.GBPJPY.lot        = GetLots_DynamicForENC_1_to_300();
   this.GBPJPY.takeProfit = GetTakeProfit(this.GBPJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPJPY.stopLoose  = GetStopLoose(this.GBPJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPJPY.trailStop  = GetTrailStop(this.GBPJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPJPY.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPJPY.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.GBPJPY;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetGBPNZD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.GBPNZD.symbol     = "GBPNZD";
   this.GBPNZD.point      = 0.00001;
   this.GBPNZD.digits     = 5;
   this.GBPNZD.maxSpread  = 0.00030;
   this.GBPNZD.lot        = GetLots_DynamicForENC_1_to_300();
   this.GBPNZD.takeProfit = GetTakeProfit(this.GBPNZD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPNZD.stopLoose  = GetStopLoose(this.GBPNZD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPNZD.trailStop  = GetTrailStop(this.GBPNZD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPNZD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPNZD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.GBPNZD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetGBPUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent)
{
   this.GBPUSD.symbol     = "GBPUSD";
   this.GBPUSD.point      = 0.00001;
   this.GBPUSD.digits     = 5;
   this.GBPUSD.maxSpread  = 0.00030;
   this.GBPUSD.lot        = GetLots_DynamicForENC_1_to_300();
   this.GBPUSD.takeProfit = GetTakeProfit(this.GBPUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPUSD.stopLoose  = GetStopLoose(this.GBPUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPUSD.trailStop  = GetTrailStop(this.GBPUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPUSD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.GBPUSD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.GBPUSD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetNZDCAD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.NZDCAD.symbol     = "NZDCAD";
   this.NZDCAD.point      = 0.00001;
   this.NZDCAD.digits     = 5;
   this.NZDCAD.maxSpread  = 0.00030;
   this.NZDCAD.lot        = GetLots_DynamicForENC_1_to_300();
   this.NZDCAD.takeProfit = GetTakeProfit(this.NZDCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDCAD.stopLoose  = GetStopLoose(this.NZDCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDCAD.trailStop  = GetTrailStop(this.NZDCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDCAD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDCAD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.NZDCAD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetNZDCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.NZDCHF.symbol     = "NZDCHF";
   this.NZDCHF.point      = 0.00001;
   this.NZDCHF.digits     = 5;
   this.NZDCHF.maxSpread  = 0.00030;
   this.NZDCHF.lot        = GetLots_DynamicForENC_1_to_300();
   this.NZDCHF.takeProfit = GetTakeProfit(this.NZDCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDCHF.stopLoose  = GetStopLoose(this.NZDCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDCHF.trailStop  = GetTrailStop(this.NZDCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDCHF.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDCHF.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.NZDCHF;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetNZDJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.NZDJPY.symbol     = "NZDJPY";
   this.NZDJPY.point      = 0.001;
   this.NZDJPY.digits     = 3;
   this.NZDJPY.maxSpread  = 0.030;
   this.NZDJPY.lot        = GetLots_DynamicForENC_1_to_300();
   this.NZDJPY.takeProfit = GetTakeProfit(this.NZDJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDJPY.stopLoose  = GetStopLoose(this.NZDJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDJPY.trailStop  = GetTrailStop(this.NZDJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDJPY.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDJPY.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.NZDJPY;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetNZDUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.NZDUSD.symbol     = "NZDUSD";
   this.NZDUSD.point      = 0.00001;
   this.NZDUSD.digits     = 5;
   this.NZDUSD.maxSpread  = 0.00030;
   this.NZDUSD.lot        = GetLots_DynamicForENC_1_to_300();
   this.NZDUSD.takeProfit = GetTakeProfit(this.NZDUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDUSD.stopLoose  = GetStopLoose(this.NZDUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDUSD.trailStop  = GetTrailStop(this.NZDUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDUSD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.NZDUSD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.NZDUSD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetUSDCAD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.USDCAD.symbol     = "USDCAD";
   this.USDCAD.point      = 0.00001;
   this.USDCAD.digits     = 5;
   this.USDCAD.maxSpread  = 0.00030;
   this.USDCAD.lot        = GetLots_DynamicForENC_1_to_300();
   this.USDCAD.takeProfit = GetTakeProfit(this.USDCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCAD.stopLoose  = GetStopLoose(this.USDCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCAD.trailStop  = GetTrailStop(this.USDCAD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCAD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCAD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.USDCAD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetUSDCHF(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.USDCHF.symbol     = "USDCHF";
   this.USDCHF.point      = 0.00001;
   this.USDCHF.digits     = 5;
   this.USDCHF.maxSpread  = 0.00030;
   this.USDCHF.lot        = GetLots_DynamicForENC_1_to_300();
   this.USDCHF.takeProfit = GetTakeProfit(this.USDCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCHF.stopLoose  = GetStopLoose(this.USDCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCHF.trailStop  = GetTrailStop(this.USDCHF.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCHF.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCHF.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.USDCHF;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetUSDCNH(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.USDCNH.symbol     = "USDCNH";
   this.USDCNH.point      = 0.00001;
   this.USDCNH.digits     = 5;
   this.USDCNH.maxSpread  = 0.00030;
   this.USDCNH.lot        = GetLots_DynamicForENC_1_to_300();
   this.USDCNH.takeProfit = GetTakeProfit(this.USDCNH.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCNH.stopLoose  = GetStopLoose(this.USDCNH.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCNH.trailStop  = GetTrailStop(this.USDCNH.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCNH.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDCNH.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.USDCNH;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetUSDJPY(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.USDJPY.symbol     = "USDJPY";
   this.USDJPY.point      = 0.001;
   this.USDJPY.digits     = 3;
   this.USDJPY.maxSpread  = 0.030;
   this.USDJPY.lot        = GetLots_DynamicForENC_1_to_300();
   this.USDJPY.takeProfit = GetTakeProfit(this.USDJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDJPY.stopLoose  = GetStopLoose(this.USDJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDJPY.trailStop  = GetTrailStop(this.USDJPY.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDJPY.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDJPY.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.USDJPY;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetUSDMXN(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.USDMXN.symbol     = "USDMXN";
   this.USDMXN.point      = 0.00001;
   this.USDMXN.digits     = 5;
   this.USDMXN.maxSpread  = 0.00030;
   this.USDMXN.lot        = GetLots_DynamicForENC_1_to_300();
   this.USDMXN.takeProfit = GetTakeProfit(this.USDMXN.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDMXN.stopLoose  = GetStopLoose(this.USDMXN.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDMXN.trailStop  = GetTrailStop(this.USDMXN.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDMXN.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDMXN.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.USDMXN;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetUSDPLN(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.USDPLN.symbol     = "USDPLN";
   this.USDPLN.point      = 0.00001;
   this.USDPLN.digits     = 5;
   this.USDPLN.maxSpread  = 0.00030;
   this.USDPLN.lot        = GetLots_DynamicForENC_1_to_300();
   this.USDPLN.takeProfit = GetTakeProfit(this.USDPLN.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDPLN.stopLoose  = GetStopLoose(this.USDPLN.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDPLN.trailStop  = GetTrailStop(this.USDPLN.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDPLN.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDPLN.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.USDPLN;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetUSDRUB(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.USDRUB.symbol     = "USDRUB";
   this.USDRUB.point      = 0.00001;
   this.USDRUB.digits     = 5;
   this.USDRUB.maxSpread  = 0.00030;
   this.USDRUB.lot        = GetLots_DynamicForENC_1_to_300();
   this.USDRUB.takeProfit = GetTakeProfit(this.USDRUB.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDRUB.stopLoose  = GetStopLoose(this.USDRUB.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDRUB.trailStop  = GetTrailStop(this.USDRUB.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDRUB.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDRUB.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.USDRUB;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetUSDZAR(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.USDZAR.symbol     = "USDZAR";
   this.USDZAR.point      = 0.00001;
   this.USDZAR.digits     = 5;
   this.USDZAR.maxSpread  = 0.00030;
   this.USDZAR.lot        = GetLots_DynamicForENC_1_to_300();
   this.USDZAR.takeProfit = GetTakeProfit(this.USDZAR.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDZAR.stopLoose  = GetStopLoose(this.USDZAR.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDZAR.trailStop  = GetTrailStop(this.USDZAR.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDZAR.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.USDZAR.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.USDZAR;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetXAGUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.XAGUSD.symbol     = "XAGUSD";
   this.XAGUSD.point      = 0.00001;
   this.XAGUSD.digits     = 5;
   this.XAGUSD.maxSpread  = 0.00030;
   this.XAGUSD.lot        = GetLots_DynamicForENC_1_to_300();
   this.XAGUSD.takeProfit = GetTakeProfit(this.XAGUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.XAGUSD.stopLoose  = GetStopLoose(this.XAGUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.XAGUSD.trailStop  = GetTrailStop(this.XAGUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.XAGUSD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.XAGUSD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.XAGUSD;
}
//+------------------------------------------------------------------+
trade_Symbol SymbolConfig::SetXAUUSD(double rsiValue, double spread, datetime dtTimeCurrent, MqlDateTime &timeCurrent) 
{
   this.XAUUSD.symbol     = "XAUUSD";
   this.XAUUSD.point      = 0.001;
   this.XAUUSD.digits     = 3;
   this.XAUUSD.maxSpread  = 0.030;
   this.XAUUSD.lot        = GetLots_DynamicForENC_1_to_300();
   this.XAUUSD.takeProfit = GetTakeProfit(this.XAUUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.XAUUSD.stopLoose  = GetStopLoose(this.XAUUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.XAUUSD.trailStop  = GetTrailStop(this.XAUUSD.point, rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.XAUUSD.RSI_High   = GetRSI_High(rsiValue, spread, dtTimeCurrent, timeCurrent);
   this.XAUUSD.RSI_Low    = GetRSI_Low(rsiValue, spread, dtTimeCurrent, timeCurrent);
   
   return this.XAUUSD;
}
//+------------------------------------------------------------------+
