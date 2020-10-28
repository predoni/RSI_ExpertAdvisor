//+------------------------------------------------------------------+
//|                                                  MyPositions.mqh |
//|                        Copyright 2020, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2020, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
//+------------------------------------------------------------------+
class MyPositions
{
   public:
      MyPositions();
      ~MyPositions();
      
      static bool IsPositionsActiveForType(ENUM_POSITION_TYPE type, string algorithm);
      static bool IsOrdersActiveForType(ENUM_ORDER_TYPE typeIn, string algorithm);
};
//+------------------------------------------------------------------+
MyPositions::MyPositions(){}
//+------------------------------------------------------------------+
MyPositions::~MyPositions(){}
//+------------------------------------------------------------------+
static bool MyPositions::IsPositionsActiveForType(ENUM_POSITION_TYPE typeIn, string algorithm)
{
   int totalPositions = PositionsTotal();
   for (int positionIndex=0; positionIndex < totalPositions; positionIndex++) {
      ulong positionTicket = PositionGetTicket(positionIndex);
      if (PositionSelectByTicket(positionTicket)) {
         ENUM_POSITION_TYPE posType = (ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);
         string symbol = PositionGetString(POSITION_SYMBOL);
         string comments = PositionGetString(POSITION_COMMENT);
         if (posType == typeIn && symbol == _Symbol && comments == algorithm) {
            return true;
         }
      }
   }
   
   return false;
}
//+------------------------------------------------------------------+
static bool MyPositions::IsOrdersActiveForType(ENUM_ORDER_TYPE typeIn, string algorithm)
{
   int total = OrdersTotal();
   for (int index=0; index < total; index++) {
      ulong ticket = OrderGetTicket(index);
      if (OrderSelect(ticket)) {
         ENUM_ORDER_TYPE typeX = (ENUM_ORDER_TYPE)OrderGetInteger(ORDER_TYPE);
         string symbol = OrderGetString(ORDER_SYMBOL);
         string comments = OrderGetString(ORDER_COMMENT);
         if (typeX == typeIn && symbol == _Symbol && comments == algorithm) {
            return true;
         }
      }
   }
   
   return false;
}
//+------------------------------------------------------------------+
