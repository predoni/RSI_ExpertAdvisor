//+------------------------------------------------------------------+
//|                                                    TimeClass.mqh |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
class TimeClass
{
   public:
      TimeClass();
      ~TimeClass();
   
   public:
      static datetime GetHour(int hour, int min, int sec, MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour00_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour01_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour02_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour03_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour04_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour05_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour06_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour07_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour08_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour09_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour10_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour11_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour12_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour13_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour14_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour15_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour16_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour17_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour18_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour19_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour20_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour21_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour22_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour23_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      static datetime GetHour23_59(MqlDateTime &timeCurrent, MqlDateTime &time_struct);
      
      static bool EstePerioadaDeTranzactionare(datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      static bool EsteIntervalCritic10_12(datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      static bool EsteIntervalCritic16_18(datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      static bool EsteIntervalCriticDeTest(datetime dtTimeCurrent, MqlDateTime &timeCurrent);
      
      static void Test();
};
//+------------------------------------------------------------------+
TimeClass::TimeClass(){}
//+------------------------------------------------------------------+
TimeClass::~TimeClass(){}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour(int hour, int min, int sec, MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   time_struct.year = timeCurrent.year;
   time_struct.mon  = timeCurrent.mon;
   time_struct.day  = timeCurrent.day;
   time_struct.hour = hour;
   time_struct.min  = min;
   time_struct.sec  = sec;
   
   return StructToTime(time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour00_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(0, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour01_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(1, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour02_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(2, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour03_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(3, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour04_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(4, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour05_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(5, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour06_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(6, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour07_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(7, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour08_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(8, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour09_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(9, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour10_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(10, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour11_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(11, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour12_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(12, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour13_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(13, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour14_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(14, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour15_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(15, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour16_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(16, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour17_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(17, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour18_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(18, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour19_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(19, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour20_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(20, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour21_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(21, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour22_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(22, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour23_00(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(23, 0, 0, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static datetime TimeClass::GetHour23_59(MqlDateTime &timeCurrent, MqlDateTime &time_struct)
{
   return TimeClass::GetHour(23, 59, 59, timeCurrent, time_struct);
}
//+------------------------------------------------------------------+
static bool TimeClass::EstePerioadaDeTranzactionare(datetime dtTimeCurrent, MqlDateTime &timeCurrent)
{
   MqlDateTime time_struct;
   datetime dtHour01_00 = TimeClass::GetHour01_00(timeCurrent, time_struct);
   datetime dtHour23_00 = TimeClass::GetHour23_00(timeCurrent, time_struct);

   if (dtHour01_00 < dtTimeCurrent && dtTimeCurrent < dtHour23_00) {
      return true;
   }
   
   return false;
}
//+------------------------------------------------------------------+
static bool TimeClass::EsteIntervalCritic10_12(datetime dtTimeCurrent, MqlDateTime &timeCurrent)
{
   MqlDateTime time_struct;
   datetime dtHour10_00 = TimeClass::GetHour10_00(timeCurrent, time_struct);
   datetime dtHour12_00 = TimeClass::GetHour12_00(timeCurrent, time_struct);

   if (dtHour10_00 < dtTimeCurrent && dtTimeCurrent < dtHour12_00) {
      return true;
   }
   
   return false;
}
//+------------------------------------------------------------------+
static bool TimeClass::EsteIntervalCritic16_18(datetime dtTimeCurrent, MqlDateTime &timeCurrent)
{
   MqlDateTime time_struct;
   datetime dtHour16_00 = TimeClass::GetHour16_00(timeCurrent, time_struct);
   datetime dtHour18_00 = TimeClass::GetHour18_00(timeCurrent, time_struct);

   if (dtHour16_00 < dtTimeCurrent && dtTimeCurrent < dtHour18_00) {
      return true;
   }
   
   return false;
}
//+------------------------------------------------------------------+
static bool TimeClass::EsteIntervalCriticDeTest(datetime dtTimeCurrent, MqlDateTime &timeCurrent)
{
   MqlDateTime time_struct;
   datetime dtHourMin = TimeClass::GetHour22_00(timeCurrent, time_struct);
   datetime dtHourMax = TimeClass::GetHour23_59(timeCurrent, time_struct);

   if (dtHourMin < dtTimeCurrent && dtTimeCurrent < dtHourMax) {
      return true;
   }
   
   return false;
}
//+------------------------------------------------------------------+
static void TimeClass::Test()
{
   bool res = false;
   MqlDateTime time_struct;
   MqlDateTime timeCurrent;
   datetime dtRes;
   datetime dtTimeCurrent = TimeCurrent(timeCurrent);
   Print("dtTimeCurrent: " + TimeToString(dtTimeCurrent, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   
   //dtRes = TimeClass::GetHour(0, 0, 0, timeCurrent, time_struct);
   //Print("GetHour 00:00:00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   
   //dtRes = TimeClass::GetHour(0, 0, 1, time_struct);
   //Print("GetHour 00:00:01 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   
   dtRes = TimeClass::GetHour00_00(timeCurrent, time_struct);
   Print("GetHour00_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour01_00(timeCurrent, time_struct);
   Print("GetHour01_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour02_00(timeCurrent, time_struct);
   Print("GetHour02_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour03_00(timeCurrent, time_struct);
   Print("GetHour03_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour04_00(timeCurrent, time_struct);
   Print("GetHour04_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour05_00(timeCurrent, time_struct);
   Print("GetHour05_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour06_00(timeCurrent, time_struct);
   Print("GetHour06_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour07_00(timeCurrent, time_struct);
   Print("GetHour07_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour08_00(timeCurrent, time_struct);
   Print("GetHour08_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour09_00(timeCurrent, time_struct);
   Print("GetHour09_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour10_00(timeCurrent, time_struct);
   Print("GetHour10_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour11_00(timeCurrent, time_struct);
   Print("GetHour11_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour12_00(timeCurrent, time_struct);
   Print("GetHour12_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour13_00(timeCurrent, time_struct);
   Print("GetHour13_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour14_00(timeCurrent, time_struct);
   Print("GetHour14_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour15_00(timeCurrent, time_struct);
   Print("GetHour15_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour16_00(timeCurrent, time_struct);
   Print("GetHour16_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour17_00(timeCurrent, time_struct);
   Print("GetHour17_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour18_00(timeCurrent, time_struct);
   Print("GetHour18_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour19_00(timeCurrent, time_struct);
   Print("GetHour19_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour20_00(timeCurrent, time_struct);
   Print("GetHour20_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour21_00(timeCurrent, time_struct);
   Print("GetHour21_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour22_00(timeCurrent, time_struct);
   Print("GetHour22_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour23_00(timeCurrent, time_struct);
   Print("GetHour23_00 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   dtRes = TimeClass::GetHour23_59(timeCurrent, time_struct);
   Print("GetHour23_59 = " + TimeToString(dtRes, TIME_DATE | TIME_MINUTES | TIME_SECONDS));
   
   //res = TimeClass::EstePerioadaDeTranzactionare();
   //Print("EstePerioadaDeTranzactionare = " + (res ? "true" : "false"));
   //res = TimeClass::EsteIntervalCritic10_12();
   //Print("EsteIntervalCritic10_12 = " + (res ? "true" : "false"));
   //res = TimeClass::EsteIntervalCritic16_18();
   //Print("EsteIntervalCritic16_18 = " + (res ? "true" : "false"));
   //res = TimeClass::EsteIntervalCriticDeTest();
   //Print("EsteIntervalCriticDeTest = " + (res ? "true" : "false"));
}
//+------------------------------------------------------------------+