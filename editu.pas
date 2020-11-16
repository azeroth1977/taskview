unit editu;
{-$Mode delphiunicode}
{$H+}


interface

uses
   Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
   StdCtrls, Buttons, EditBtn, DateTimePicker, SynEdit,
   SynPluginSyncroEdit, SynHighlighterXML
   ,TaskScheduler_1_0_TLB, UITypes, Types;

type


  { Teditform }

  Teditform = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    b_trig_specific: TButton;
    b_act_email_attachments: TButton;
    b_journal: TBitBtn;
    cb_trig_enable: TCheckBox;
    cb_stopatdurationend: TCheckBox;
    dtp_start: TDateTimePicker;
    dtp_stop: TDateTimePicker;
    dtp_limit: TDateTimePicker;
    ed_act_email_serv: TEdit;
    ed_act_com_hand: TEditButton;
    ed_act_sm_title: TEdit;
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
    lab_act_email_serv: TLabel;
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
    Panel1: TPanel;
    trig_pan: TPanel;
    pc_act: TPageControl;
    actpanel: TPanel;
    lab_trig_lim: TLabel;
    ts_act_showmessage: TTabSheet;
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
    lab_trig_start: TLabel;
    lab_tr_id: TLabel;
    lb_trig: TListBox;
    lb_actions: TListBox;
    Memo1: TMemo;
    m_description: TMemo;
    pc: TPageControl;
    bpan: TPanel;
    lab_trig_end: TLabel;
    SynEdit1: TSynEdit;
    SynPluginSyncroEdit1: TSynPluginSyncroEdit;
    SynXMLSyn1: TSynXMLSyn;
    tb_act: TToolBar;
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
    procedure b_act_email_attachmentsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure lb_trigClick(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure pcChanging(Sender: TObject; var AllowChange: Boolean);
    procedure TaskDialog1ButtonClicked(Sender: TObject;        AModalResult: TModalResult; var ACanClose: Boolean);
    procedure tb_actaddClick(Sender: TObject);
    procedure tb_actdelClick(Sender: TObject);
    procedure tb_trigaddClick(Sender: TObject);
    procedure tb_trigdelClick(Sender: TObject);
    procedure trig_panClick(Sender: TObject);
    procedure ts_actShow(Sender: TObject);

    procedure ts_trigShow(Sender: TObject);
    procedure ts_xmlShow(Sender: TObject);
  private

    procedure refresh_act;
    procedure refresh_triggers;

    procedure load_act;
    procedure load_trig;
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
 uses math
    ,StrUtils
    ,selectlistU
   ,DateUtils
   ,activex
   ,handle_proc;



 { Teditform }

procedure Teditform.refresh_triggers;
var i,c:integer;
     s:string;
begin
 for i:=0 to  lb_trig.count-1 do tirec(lb_trig.Items.Objects[i]).Free;
 lb_trig.clear;
 showmessage(inttostrlb_trig.count)
 c:=def.Triggers.Count;
 for i:=1 to c do
 begin
   s:= def.Triggers[i].Id+' ['+_trig_str[def.Triggers[i].Type_]+'] ';
   s:=s+IfThen(def.Triggers[i].Enabled,'(on)','(off)');
   lb_trig.Items.AddObject(s,tirec.create(def.Triggers[i]));
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
 caption:='Задание: '+Path;
 // main

 e_version.Text:=def.RegistrationInfo.Version;
 e_uri.text:=def.RegistrationInfo.URI;
 e_source.text:=def.RegistrationInfo.Source;
 e_doc.text:=def.RegistrationInfo.Documentation;
 e_date.DateTime:=StrToDateTimeDef(def.RegistrationInfo.Date,nan);
 e_author.Text:=  def.RegistrationInfo.Author;
 m_description.Lines.text:=Def.RegistrationInfo.Description;

 // triggers
 refresh_triggers;
 // actions
 refresh_act;
 lb_actions.Tag:=-1;
 lb_trig.Tag:=-1;
 //lb_trig.ItemIndex:=ifthen(lb_trig.Count=0,-1,0);
 //load_trig;


end;



procedure Teditform.lb_trigClick(Sender: TObject);
begin
  if TListBox(sender).ItemIndex=-1 then
     exit
  else
  begin
    if TListBox(sender).ItemIndex<>TListBox(sender).Tag then
    begin
      if TListBox(sender).Tag<>-1 then
      begin
        if sender=lb_trig then save_trig
        else if Sender=lb_actions then save_act;
      end;
      if sender=lb_trig then load_trig
      else if Sender=lb_actions then load_act;
      TListBox(sender).Tag:=TListBox(sender).ItemIndex;
    end;
  end;
end;

procedure Teditform.Panel1Click(Sender: TObject);
begin

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

procedure Teditform.save_trig;
var t:tdatetime;
    tr:ITrigger;
    s:string;
begin
  if lb_trig.Tag<0 then exit;
  tr:=tirec(lb_trig.Items.Objects[lb_trig.Tag]).asTrig;
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
  if lb_actions.Tag<0 then exit;
  aa:=tirec(lb_actions.Items.Objects[lb_actions.Tag]);
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
        aa.asEmailAct.Server:=ed_act_email_serv.text;
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
 if lb_actions.ItemIndex<0 then exit;
 aa:=tirec(lb_actions.Items.Objects[lb_actions.ItemIndex]);

 lab_act_id.Caption:= aa.asAct.Id+' ['+_act_str[aa.asAct.Type_]+']';
 case aa.asAct.Type_ of
   TASK_ACTION_EXEC:
     begin
        ed_act_exec_path.Text:=aa.asExecAct.Path;
        ed_act_exec_arg.text:=aa.asExecAct.Arguments;
        ed_act_exec_wd.text:=aa.asExecAct.WorkingDirectory;
        pc_act.ActivePage:=ts_act_exec;
     end;
   TASK_ACTION_COM_HANDLER:
     begin
       ed_act_com_hand.Text:=aa.asComHandlerAct.ClassId;
       mem_act_com_data.Text:=aa.asComHandlerAct.Data;
       pc_act.ActivePage:=ts_act_com;
     end;
   TASK_ACTION_SEND_EMAIL:
     begin
       ed_act_email_from.Text:=aa.asEmailAct.From;
       ed_act_email_to.Text:=aa.asEmailAct.ReplyTo;
       ed_act_email_serv.text:=aa.asEmailAct.Server;
       ed_act_email_subj.Text:=aa.asEmailAct.Subject;
       ed_act_email_to.Text:=aa.asEmailAct.To_;
       //aa.asEmailAct.Cc:='';
       //aa.asEmailAct.Bcc:='';
       mem_act_email_body.Text:=aa.asEmailAct.Body;

//        aa.asEmailAct.HeaderFields.Item[1].Name:='';
//        aa.asEmailAct.HeaderFields.Item[1].Value:='';

       //      aa.asEmailAct.Attachments:=SafeArrayCreateVector(varvariant,1,1);
   //    data:='';
//        if SafeArrayPutElement(aa.asEmailAct.Attachments, 1, Data) <> S_OK  then  raise Exception.Create('Error SafeArrayPutElement');

       pc_act.ActivePage:=ts_act_email;
     end;
   TASK_ACTION_SHOW_MESSAGE:
     begin
       ed_act_sm_title.Text:=aa.asShowMessageAct.Title;
       mem_act_sm_mes.Text:=aa.asShowMessageAct.MessageBody;
       pc_act.ActivePage:=ts_act_showmessage;
     end;
 end;



end;



procedure Teditform.load_trig;
var t:tdatetime;
     aa:tirec;
    //s:string;
    i:integer;
begin

 if lb_trig.ItemIndex<0 then exit;
 aa:=tirec(lb_trig.Items.Objects[lb_trig.ItemIndex]);
 i:=aa.asTrig.Type_;
 lab_tr_id.Caption:= aa.asTrig.Id+' ['+_trig_str[i]+']'; ;
 case i of
   TASK_TRIGGER_EVENT:;
   TASK_TRIGGER_TIME:;
   TASK_TRIGGER_DAILY:;
   TASK_TRIGGER_WEEKLY:;
   TASK_TRIGGER_MONTHLY:;
   TASK_TRIGGER_MONTHLYDOW:;
   TASK_TRIGGER_IDLE:;
   TASK_TRIGGER_REGISTRATION:;
   TASK_TRIGGER_BOOT:;
   TASK_TRIGGER_LOGON:;
   TASK_TRIGGER_SESSION_STATE_CHANGE:;
 end;

 cb_trig_enable.Checked:= aa.asTrig.Enabled;

  if TryISOStrToDateTime1(aa.asTrig.StartBoundary,t) then dtp_start.DateTime:=t else dtp_start.DateTime:=nan;
  if TryISOStrToDateTime1(aa.asTrig.EndBoundary,t) then dtp_stop.DateTime:=t else dtp_stop.DateTime:=nan;
  if TryISOStrToDateTime1(aa.asTrig.ExecutionTimeLimit,t) then dtp_limit.DateTime:=t else dtp_limit.DateTime:=nan;


  ed_dur.text:= aa.asTrig.Repetition.Duration;
  ed_interval.text:=aa.asTrig.Repetition.Interval;
  cb_stopatdurationend.Checked:= aa.asTrig.Repetition.StopAtDurationEnd;



end;



procedure Teditform.pcChanging(Sender: TObject; var AllowChange: Boolean);
begin
   if (pc.ActivePage=ts_trig) and (lb_trig.Count>0) then save_trig;
//   else (if pc.ActivePage=ts_act)  and (lb_trig.Count>0) then save_act;

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
     lb_actions.tag:=0;
     for i:=0 to lb_actions.Count-1 do
     begin
       if tirec(lb_actions.Items.Objects[i]).asAct=aa then
       begin
         lb_actions.tag:=i;
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
   lb_actions.tag:=0;
   load_act;
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
     lb_trig.Tag:=0;
     for i:=0 to lb_trig.Count-1 do
     begin
       if tirec(lb_trig.Items.Objects[i]).asTrig=tr then
       begin
         lb_trig.Tag:=i;
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
    lb_trig.Tag:=0;
    load_trig;
  end;
end;

procedure Teditform.trig_panClick(Sender: TObject);
begin

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
  for i:=0 to lb_trig.Count-1 do  tirec(lb_trig.Items.Objects[i]).clear;
  for i:=0 to lb_actions.Count-1 do  tirec(lb_actions.Items.Objects[i]).clear;
end;

procedure Teditform.b_act_email_attachmentsClick(Sender: TObject);
begin
  // todo
end;

end.

