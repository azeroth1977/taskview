unit handle_proc;

{$mode delphi}

interface

uses
  Classes, SysUtils,activex,ComObj,TaskScheduler_1_0_TLB;


type
  pirec=^tirec;
  { tirec }
  tirec=class
  private
    i:IDispatch;
    function GetasBootTrigger: IBootTrigger;
    function GetasComHandleract: IComHandlerAction;
    function GetasDailyTrigger: IDailyTrigger;
    function GetasEmailact: IEmailAction;
    function GetasEventTrigger: IEventTrigger;
    function GetasExecact: IExecAction;
    function GetasIdleTrigger: IIdleTrigger;
    function GetasShowMessageact: IShowMessageAction;
    function Getastrig:ITrigger;
    function Getasact: IAction;
   public
     constructor create(ii:IDispatch);
     destructor destroy; override;
     procedure clear;
     property asTrig:ITrigger read Getastrig;
     property asAct:IAction read Getasact;
     // triggers
     property asBootTrigger:IBootTrigger read GetasBootTrigger;
     property asDailyTrigger:IDailyTrigger read GetasDailyTrigger;
     property asEventTrigger:IEventTrigger read GetasEventTrigger;
     property asIdleTrigger:IIdleTrigger read GetasIdleTrigger;


     //actions
     property asEmailAct:IEmailAction read GetasEmailact;
     property asExecAct:IExecAction read GetasExecact;
     property asShowMessageAct:IShowMessageAction read GetasShowMessageact;
     property asComHandlerAct:IComHandlerAction read GetasComHandleract;
  end;


   function TryISOStrToTime1(const aString: string; Out outTime: TDateTime): Boolean;
   function TryISOStrToDateTime1(const aString: string; out outDateTime: TDateTime): Boolean;
   procedure GetActiveXControlList(List: TStrings);

   const _trig_str:array[0..$b] of string=
   (
  'TASK_TRIGGER_EVENT',
  'TASK_TRIGGER_TIME',
  'TASK_TRIGGER_DAILY',
  'TASK_TRIGGER_WEEKLY',
  'TASK_TRIGGER_MONTHLY',
  'TASK_TRIGGER_MONTHLYDOW',
  'TASK_TRIGGER_IDLE',
  'TASK_TRIGGER_REGISTRATION',
  'TASK_TRIGGER_BOOT',
  'TASK_TRIGGER_LOGON',
  '',
  'TASK_TRIGGER_SESSION_STATE_CHANGE'

  );

  const _act_str:array[0..7] of string=
   (
    'TASK_ACTION_EXEC',
    '','','','',
    'TASK_ACTION_COM_HANDLER',
    'TASK_ACTION_SEND_EMAIL',
    'TASK_ACTION_SHOW_MESSAGE'
  );




implementation

uses DateUtils;
const
    CATID_Control: TGUID  = '{40FC6ED4-2438-11cf-A3DB-080036F12502}';
    CLSID_StdComponentCategoryMgr: TGUID = '{0002E005-0000-0000-C000-000000000046}';

procedure GetActiveXControlList(List: TStrings);
var
    catInfo: ICatInformation;
    enumGuid: IEnumGUID;
    ClassID: TGUID;
    Fetched: ^cardinal;
    Name: PWideChar;
begin
    OleCheck(CoCreateInstance(CLSID_StdComponentCategoryMgr, nil, CLSCTX_INPROC_SERVER, ICatInformation, CatInfo));

    catInfo.EnumClassesOfCategories(1, @CATID_Control, 0, @GUID_NULL, EnumGUID);
    while enumGuid.Next(1, ClassID, Fetched) = S_OK do
    begin
        OleCheck(OleRegGetUserType(ClassID, USERCLASSTYPE_FULL, Name));
        List.Add(Name);
    end;
end;



  function TryISOStrToTime1(const aString: string; Out outTime: TDateTime): Boolean;
  var
    xHour, xMinute, xSecond, xMillisecond, xLength: LongInt;
  begin
    Result := True;
    xLength := Length(aString);
    if (xLength>0) and (aString[xLength] = 'Z') then
    begin
      Dec(xLength);
    end else
    if (xLength>6) and CharInSet(aString[xLength-5], ['+', '-']) then
    begin
      Result :=
        TryStrToInt(Copy(aString, xLength-4, 2), xHour) and
        (aString[xLength-2] = ':') and
        TryStrToInt(Copy(aString, xLength-1, 2), xMinute);
      Dec(xLength, 6);
    end else
    if (xLength>5) and CharInSet(aString[xLength-4], ['+', '-']) then
    begin
      Result :=
        TryStrToInt(Copy(aString, xLength-3, 2), xHour) and
        TryStrToInt(Copy(aString, xLength-1, 2), xMinute);
      Dec(xLength, 5);
    end else
    if (xLength>3) and CharInSet(aString[xLength-2], ['+', '-']) then
    begin
      Result :=
        TryStrToInt(Copy(aString, xLength-1, 2), xHour);
      Dec(xLength, 3);
    end;
    if not Result then
    begin
      outTime := 0;
      Exit;
    end;

    case xLength of
      2: Result :=
            TryStrToInt(aString, xHour) and
            TryEncodeTime(xHour, 0, 0, 0, outTime);
      4: Result :=
            TryStrToInt(Copy(aString, 1, 2), xHour) and
            TryStrToInt(Copy(aString, 3, 2), xMinute) and
            TryEncodeTime(xHour, xMinute, 0, 0, outTime);
      5: Result :=
            TryStrToInt(Copy(aString, 1, 2), xHour) and
            (aString[3] = ':') and
            TryStrToInt(Copy(aString, 4, 2), xMinute) and
            TryEncodeTime(xHour, xMinute, 0, 0, outTime);
      6: Result :=
            TryStrToInt(Copy(aString, 1, 2), xHour) and
            TryStrToInt(Copy(aString, 3, 2), xMinute) and
            TryStrToInt(Copy(aString, 5, 2), xSecond) and
            TryEncodeTime(xHour, xMinute, xSecond, 0, outTime);
      8: Result :=
            TryStrToInt(Copy(aString, 1, 2), xHour) and
            (aString[3] = ':') and
            TryStrToInt(Copy(aString, 4, 2), xMinute) and
            (aString[6] = ':') and
            TryStrToInt(Copy(aString, 7, 2), xSecond) and
            TryEncodeTime(xHour, xMinute, xSecond, 0, outTime);
      10: Result :=
            TryStrToInt(Copy(aString, 1, 2), xHour) and
            TryStrToInt(Copy(aString, 3, 2), xMinute) and
            TryStrToInt(Copy(aString, 5, 2), xSecond) and
            (aString[7] = '.') and
            TryStrToInt(Copy(aString, 8, 3), xMillisecond) and
            TryEncodeTime(xHour, xMinute, xSecond, xMillisecond, outTime);

    else
      if  xLength>=12 then
            Result :=
            TryStrToInt(Copy(aString, 1, 2), xHour) and
            (aString[3] = ':') and
            TryStrToInt(Copy(aString, 4, 2), xMinute) and
            (aString[6] = ':') and
            TryStrToInt(Copy(aString, 7, 2), xSecond) and
            (aString[9] = '.') and
            TryStrToInt(Copy(aString, 10, 3), xMillisecond) and
            TryEncodeTime(xHour, xMinute, xSecond, xMillisecond, outTime)
      else   Result := False;
    end;

    if not Result then
      outTime := 0;
  end;


  function TryISOStrToDateTime1(const aString: string; out outDateTime: TDateTime): Boolean;
  var
    xLength: Integer;
    sDate,sTime : String;
    xDate, xTime: TDateTime;

  begin
    xLength := Length(aString);
    if (xLength>11) and CharInSet(aString[11], [' ', 'T']) then
      begin
      sDate:=Copy(aString, 1, 10);
      sTime:=Copy(aString, 12, Length(aString))
      end
    else if (xLength>9) and CharInSet(aString[9], [' ', 'T']) then
      begin
      sDate:=Copy(aString, 1, 8);
      sTime:=Copy(aString, 10, Length(aString));
      end
    else
      exit(False);
    Result:=TryISOStrToDate(sDate, xDate) and TryISOStrToTime1(sTime, xTime);
    if Result then
      outDateTime := xDate+xTime
    else
      outDateTime := 0;
  end;





 { tirec }

function tirec.GetasBootTrigger: IBootTrigger;
begin
  result:=i as IBootTrigger;
end;

function tirec.GetasComHandleract: IComHandlerAction;
begin
       result:= i as IComHandlerAction;
end;

function tirec.GetasDailyTrigger: IDailyTrigger;
begin
  result:=i as IDailyTrigger;
end;

function tirec.GetasEmailact: IEmailAction;
begin
 result:= i as IEmailAction;
end;

function tirec.GetasEventTrigger: IEventTrigger;
begin
  result:=i as IEventTrigger;
end;

function tirec.GetasExecact: IExecAction;
begin
 result:= i as IExecAction;
end;

function tirec.GetasIdleTrigger: IIdleTrigger;
begin
   result:=i as IIdleTrigger;
end;

function tirec.GetasShowMessageact: IShowMessageAction;
begin
 result:= i as IShowMessageAction;
end;

 function tirec.Getastrig: ITrigger;
 begin
    result:= i as ITrigger;
 end;

 function tirec.Getasact: IAction;
 begin
  result:= i as IAction;
 end;


constructor tirec.create(ii: IDispatch);
begin
  i:=ii;
end;

destructor tirec.destroy;
begin
   i:=nil;
end;

procedure tirec.clear;
begin
  i:=nil;
end;



end.

