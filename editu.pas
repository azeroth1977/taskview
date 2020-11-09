unit editu;
{-$Mode delphiunicode}
{$H+}


interface

uses
   Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
   StdCtrls, Buttons, EditBtn, DateTimePicker, SynEdit,
   SynPluginSyncroEdit, SynHighlighterXML
   ,TaskScheduler_1_0_TLB, UITypes;

type


  { Teditform }

  Teditform = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    b_journal: TBitBtn;
    cb_trig_enable: TCheckBox;
    cb_stopatdurationend: TCheckBox;
    cb_trig_type: TComboBox;
    dtp_start: TDateTimePicker;
    dtp_stop: TDateTimePicker;
    dtp_limit: TDateTimePicker;
    ed_act_com_hand: TEditButton;
    ed_act_exec_path1: TEdit;
    ed_act_email_to: TEdit;
    ed_act_email_subj: TEdit;
    ed_act_email_from: TEdit;
    ed_act_exec_wd: TEdit;
    ed_act_exec_path: TEdit;
    ed_act_exec_arg: TEdit;
    ed_interval: TEdit;
    ed_dur: TEdit;
    e_date: TDateTimePicker;
    e_author: TEdit;
    e_source: TEdit;
    e_version: TEdit;
    e_uri: TEdit;
    e_doc: TEdit;
    gb_repetition: TGroupBox;
    lab_act_email_from: TLabel;
    lab_act_email_subj: TLabel;
    lab_act_email_body: TLabel;
    lab_act_email_to: TLabel;
    lab_act_sm_mes: TLabel;
    lab_act_com: TLabel;
    lab_act_sm_title: TLabel;
    lab_act_data: TLabel;
    lab_act_exec_path: TLabel;
    lab_act_exec_arg: TLabel;
    lab_act_exec_wd: TLabel;
    lab_act_id: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    mem_act_email_body: TMemo;
    mem_act_sm_mes: TMemo;
    mem_act_com_data: TMemo;
    PageControl1: TPageControl;
    Panel1: TPanel;
    actpanel: TPanel;
    sdt_lab2: TLabel;
    TabSheet1: TTabSheet;
    ts_act_exec: TTabSheet;
    ts_act_email: TTabSheet;
    ts_act_com: TTabSheet;
    tbil: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    sdt_lab: TLabel;
    lab_tr_id: TLabel;
    lb_trig: TListBox;
    lb_actions: TListBox;
    Memo1: TMemo;
    m_description: TMemo;
    pc: TPageControl;
    bpan: TPanel;
    sdt_lab1: TLabel;
    SynEdit1: TSynEdit;
    SynPluginSyncroEdit1: TSynPluginSyncroEdit;
    SynXMLSyn1: TSynXMLSyn;
    tbtrig1: TToolBar;
    tb_actadd: TToolButton;
    tb_actdel: TToolButton;
    ts_xml: TTabSheet;
    tbtrig: TToolBar;
    tb_trigadd: TToolButton;
    tb_trigdel: TToolButton;
    ts_prm: TTabSheet;
    ts_trig: TTabSheet;
    ts_act: TTabSheet;
    ts_advprm: TTabSheet;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lb_trigClick(Sender: TObject);
    procedure pcChanging(Sender: TObject; var AllowChange: Boolean);
    procedure TaskDialog1ButtonClicked(Sender: TObject;
      AModalResult: TModalResult; var ACanClose: Boolean);
    procedure tb_actaddClick(Sender: TObject);
    procedure tb_actdelClick(Sender: TObject);
    procedure tb_trigaddClick(Sender: TObject);
    procedure tb_trigdelClick(Sender: TObject);
    procedure ts_actShow(Sender: TObject);
    procedure ts_trigShow(Sender: TObject);
    procedure ts_xmlShow(Sender: TObject);
  private
    cur_trig:integer;
    cur_act:integer;
    procedure load_act;
    procedure load_trig;
    procedure refresh_act;
    procedure refresh_triggers;
    procedure save_act;
    procedure save_trig;

  public
     ts : ITaskService;
     path:string;
     def:ITaskDefinition;
  end;


var fs_ms_new:TFormatSettings;


implementation

{$R *.lfm}
 uses math,StrUtils,selectlistU
   ,DateUtils
   ,activex;

type
 pirec=^tirec;
 { tirec }
 tirec=class
 private
   function GetasComHandleract: IComHandlerAction;
   function GetasEmailact: IEmailAction;
   function GetasExecact: IExecAction;
   function GetasShowMessageact: IShowMessageAction;
   function Getastrig:ITrigger;
   function Getasact: IAction;
  public
    i:IDispatch;
    constructor create(ii:IDispatch);
    destructor destroy; override;
    property asTrig:ITrigger read Getastrig;
    property asAct:IAction read Getasact;
    property asEmailAct:IEmailAction read GetasEmailact;
    property asExecAct:IExecAction read GetasExecact;
    property asShowMessageAct:IShowMessageAction read GetasShowMessageact;
    property asComHandlerAct:IComHandlerAction read GetasComHandleract;
 end;

 { tirec }

function tirec.GetasComHandleract: IComHandlerAction;
begin
       result:= i as IComHandlerAction;
end;

function tirec.GetasEmailact: IEmailAction;
begin
 result:= i as IEmailAction;
end;

function tirec.GetasExecact: IExecAction;
begin
 result:= i as IExecAction;
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


 { Teditform }
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



procedure Teditform.refresh_triggers;
var i:integer;
begin
 for i:=0 to  lb_trig.count-1 do tirec(lb_trig.Items.Objects[i]).Free;
 lb_trig.clear;
 for i:=1 to def.Triggers.Count do
 begin
   lb_trig.AddItem( def.Triggers[i].Id+' ['+_trig_str[def.Triggers[i].Type_]+'] '
    +IfThen(def.Triggers[i].Enabled,'(on)','(off)'), tirec.create(def.Triggers[i]) );
 end;

end;

procedure Teditform.refresh_act;
var i:integer;
begin
 for i:=0 to  lb_actions.count-1 do tirec(lb_actions.Items.Objects[i]).Free;
 lb_actions.clear;
 for i:=1 to def.Actions.Count do
 begin
   lb_trig.AddItem( def.Actions[i].Id+' ['+_act_str[def.Actions[i].Type_]+'] ' , tirec.create(def.Actions[i]) );
 end;

end;

procedure Teditform.FormShow(Sender: TObject);
var i:integer;
begin
 //fs_ms_new:=DefaultFormatSettings;
 //fs_ms_new.ShortDateFormat:='yyyy-mm-dd"T"';
 //fs_ms_new.ShortTimeFormat:='hh:nn:ss"."zzz';

 //fs_ms_new.DateSeparator:='-';
 //fs_ms_new.TimeSeparator:=':';

 for i:=0 to high(_trig_str) do
 if _trig_str[i]<>'' then
   cb_trig_type.AddItem(_trig_str[i],tobject(i));


 caption:='Задание: '+Path;
  // main
 e_version.Text:=def.RegistrationInfo.Version;
 e_uri.text:=def.RegistrationInfo.URI;
 e_source.text:=def.RegistrationInfo.Source;
 e_doc.text:=def.RegistrationInfo.Documentation;
 // if def.RegistrationInfo.Date='' then e_date.Datetime=nan;
 e_date.DateTime:=StrToDateTimeDef(def.RegistrationInfo.Date,nan);
 e_author.Text:=  def.RegistrationInfo.Author;
 m_description.Lines.text:=Def.RegistrationInfo.Description;
 // triggers
 refresh_triggers;
 // actions
 refresh_act;

 lb_trig.ItemIndex:=ifthen(lb_trig.Count=0,-1,0);
 load_trig;
end;

procedure Teditform.save_trig;
var t:tdatetime;
    tr:ITrigger;
    s:string;
begin
  tr:=tirec(lb_trig.Items.Objects[cur_trig]).asTrig;
  // tr.Id:=lab_tr_id.Caption;
  tr.Enabled:=cb_trig_enable.Checked;
  //tr.Type_:=longword(cb_trig_type.Items.Objects[cb_trig_type.ItemIndex]);

  if dtp_start.DateIsNull then tr.StartBoundary:='' else
    tr.StartBoundary:=FormatDateTime('yyyy-mm-dd"T"hh:nn:ss',dtp_start.DateTime);

  if dtp_stop.DateIsNull then tr.EndBoundary:='' else
    tr.EndBoundary:=FormatDateTime('yyyy-mm-dd"T"hh:nn:ss',dtp_stop.DateTime);

  if dtp_limit.DateIsNull then tr.ExecutionTimeLimit:='' else
    tr.ExecutionTimeLimit:=FormatDateTime('yyyy-mm-dd"T"hh:nn:ss',dtp_limit.DateTime);


  tr.Repetition.StopAtDurationEnd:=cb_stopatdurationend.Checked;
  tr.Repetition.Interval:=ed_interval.Text;
  tr.Repetition.Duration:=ed_dur.text;
end;

procedure Teditform.save_act;
var t:tdatetime;
     aa:tirec;
    s:string;
      Data : OleVariant;
begin
  aa:=tirec(lb_actions.Items.Objects[cur_trig]);
//  aa.asAct.Id:=lab_act_id.Caption;
  case aa.asAct.Type_ of
    TASK_ACTION_EXEC:
      begin
        aa.asExecAct.Path:=ed_act_exec_path.Text;
        aa.asExecAct.Arguments:=ed_act_exec_arg.Text;
        aa.asExecAct.WorkingDirectory:=ed_act_exec_wd.Text;
      end;
    TASK_ACTION_COM_HANDLER:
      begin
         aa.asComHandlerAct.ClassId:=ed_act_com_hand.Text;
         aa.asComHandlerAct.Data:=mem_act_com_data.Text;
      end;
    TASK_ACTION_SEND_EMAIL:
      begin
        aa.asEmailAct.From:=ed_act_email_from.Text;
        aa.asEmailAct.ReplyTo:=ed_act_email_to.Text;
        aa.asEmailAct.Server:='';
        aa.asEmailAct.Subject:=ed_act_email_subj.Text;
        aa.asEmailAct.To_:=ed_act_email_to.Text;
        aa.asEmailAct.Cc:='';
        aa.asEmailAct.Bcc:='';
        aa.asEmailAct.Body:=mem_act_email_body.Text;

//        aa.asEmailAct.HeaderFields.Item[1].Name:='';
//        aa.asEmailAct.HeaderFields.Item[1].Value:='';

        //      aa.asEmailAct.Attachments:=SafeArrayCreateVector(varvariant,1,1);
    //    data:='';
//        if SafeArrayPutElement(aa.asEmailAct.Attachments, 1, Data) <> S_OK  then  raise Exception.Create('Error SafeArrayPutElement');
      end;
    TASK_ACTION_SHOW_MESSAGE:
      begin
        aa.asShowMessageAct.Title:='';
        aa.asShowMessageAct.MessageBody:='';
      end;
  end;
end;


procedure Teditform.load_act;
var t:tdatetime;
     aa:tirec;
    s:string;
    i:integer;
begin
 i:=lb_actions.ItemIndex;
 if i<0 then exit;
 aa:=tirec(lb_actions.Items.Objects[i]);
 lab_act_id.Caption:= aa.asAct.Id+' ['+_act_str[aa.asAct.Type_]+']';
 case aa.asAct.Type_ of
   TASK_ACTION_EXEC:
     begin
        ed_act_exec_path.Text:=aa.asExecAct.Path;
        ed_act_exec_arg.text:=aa.asExecAct.Arguments;
        ed_act_exec_wd.text:=aa.asExecAct.WorkingDirectory;
     end;
   TASK_ACTION_COM_HANDLER:
     begin

     end;
   TASK_ACTION_SEND_EMAIL:
     begin

     end;
   TASK_ACTION_SHOW_MESSAGE:
     begin

     end;
 end;



end;



procedure Teditform.load_trig;
var t:tdatetime;
    tr:ITrigger;
    s:string;
    i:integer;
begin
 i:=lb_trig.ItemIndex;
 if i<0 then exit;
 tr:=tirec(lb_trig.Items.Objects[i]).asTrig;
 lab_tr_id.Caption:= tr.Id;
 cb_trig_type.ItemIndex:=cb_trig_type.Items.IndexOfObject(tobject(tr.Type_));
 cb_trig_enable.Checked:= tr.Enabled;

  if TryISOStrToDateTime1(tr.StartBoundary,t) then dtp_start.DateTime:=t else dtp_start.DateTime:=nan;
  if TryISOStrToDateTime1(tr.EndBoundary,t) then dtp_stop.DateTime:=t else dtp_stop.DateTime:=nan;
  if TryISOStrToDateTime1(tr.ExecutionTimeLimit,t) then dtp_limit.DateTime:=t else dtp_limit.DateTime:=nan;


  ed_dur.text:= tr.Repetition.Duration;
  ed_interval.text:=tr.Repetition.Interval;
  cb_stopatdurationend.Checked:= tr.Repetition.StopAtDurationEnd;





 memo1.Clear;
 memo1.Lines.Add( 'TIME LIMIT;'+tr.ExecutionTimeLimit);
 memo1.Lines.Add('DUR:'+ tr.Repetition.Duration);
 memo1.Lines.Add( 'INTERVAL:'+tr.Repetition.Interval);


end;

procedure Teditform.lb_trigClick(Sender: TObject);
begin
  if lb_trig.ItemIndex=-1 then  exit else
  begin
    if lb_trig.ItemIndex<>cur_trig then
    begin
      if cur_trig<>-1 then save_trig;
      load_trig;
    end;
  end;
end;

procedure Teditform.pcChanging(Sender: TObject; var AllowChange: Boolean);
begin
   if pc.ActivePage=ts_trig then save_trig
//   else if pc.ActivePage=ts_act then save_act;

end;

procedure Teditform.TaskDialog1ButtonClicked(Sender: TObject;
  AModalResult: TModalResult; var ACanClose: Boolean);
begin

end;

procedure Teditform.tb_actaddClick(Sender: TObject);
var  aa:IAction;
     i:integer;
begin
 querylist.ListBox1.Clear;
 for i:=0 to high(_act_str) do
  if _act_str[i]<>'' then
   querylist.ListBox1.Items.AddPair(_act_str[i],inttostr(i));
 if (querylist.ListBox1.ItemIndex>=0) and (querylist.ShowModal=mrok) then
 begin
     aa:= def.Actions.Create(strtoint(querylist.ListBox1.Items.ValueFromIndex[querylist.ListBox1.ItemIndex]));
     refresh_act;
     cur_act:=0;
     for i:=0 to lb_actions.Count-1 do
     begin
       if tirec(lb_actions.Items.Objects[i]).asAct=aa then
       begin
         cur_act:=i;
         break;
       end;
     end;
 end;
 load_act;

end;

procedure Teditform.tb_actdelClick(Sender: TObject);
begin
 if MessageDlg('Внимание','Это удалит текущее действие.',TMsgDlgType.mtConfirmation,mbYesNo,0,mbNo)=mryes then
 begin
   def.Actions.Remove(lb_actions.ItemIndex+1);
   refresh_act;
   cur_act:=0; load_act;
 end;
end;

procedure Teditform.tb_trigaddClick(Sender: TObject);
var    tr:ITrigger;
     i:integer;
begin
 querylist.ListBox1.Clear;
 for i:=0 to high(_trig_str) do
  if _trig_str[i]<>'' then
   querylist.ListBox1.Items.AddPair(_trig_str[i],inttostr(i));
 if (querylist.ListBox1.ItemIndex>=0) and (querylist.ShowModal=mrok) then
 begin
     tr:= def.Triggers.Create(strtoint(querylist.ListBox1.Items.ValueFromIndex[querylist.ListBox1.ItemIndex]));
     refresh_triggers;
     cur_trig:=0;
     for i:=0 to lb_trig.Count-1 do
     begin
       if tirec(lb_trig.Items.Objects[i]).asTrig=tr then
       begin
         cur_trig:=i;
         break;
       end;
     end;
 end;
 load_trig;

end;

procedure Teditform.tb_trigdelClick(Sender: TObject);
begin
  if MessageDlg('Внимание','Это удалит текущий триггер.',TMsgDlgType.mtConfirmation,mbYesNo,0,mbNo)=mryes then
  begin
    def.Triggers.Remove(lb_trig.ItemIndex+1);
    refresh_triggers;
    cur_trig:=0; load_trig;
  end;
end;

procedure Teditform.ts_actShow(Sender: TObject);
begin
  if (lb_actions.ItemIndex=-1) and (lb_actions.Count>0) then
  begin
    lb_actions.ItemIndex:=0;
    load_act;
  end;

end;

procedure Teditform.ts_trigShow(Sender: TObject);
begin
  if (lb_trig.ItemIndex=-1) and (lb_trig.Count>0) then
  begin
    lb_trig.ItemIndex:=0;
    load_trig;
  end;
end;

procedure Teditform.ts_xmlShow(Sender: TObject);
begin
  SynEdit1.Text:=def.XmlText;
end;




procedure Teditform.FormClose(Sender: TObject; var CloseAction: TCloseAction);
var i:integer;
begin
 CloseAction:=caHide;
  if modalresult=mrok then
  begin

    save_trig;
    save_act;

    Def.RegistrationInfo.Description:=m_description.Lines.Text;
  end;
  for i:=0 to lb_trig.Count-1 do  tirec(lb_trig.Items.Objects[i]).i:=nil;
  for i:=0 to lb_actions.Count-1 do  tirec(lb_actions.Items.Objects[i]).i:=nil;
end;

end.

