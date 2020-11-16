unit mainu;
{-$Mode delphiunicode}
{$H+}
interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls,
   VirtualTrees  ,TaskScheduler_1_0_TLB;

type

  { Tmain }

  Tmain = class(TForm)
    ImageList1: TImageList;
    lm: TMemo;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    tb_refresh: TToolButton;
    ToolButton1: TToolButton;
    vst: TVirtualStringTree;
    procedure FormCreate(Sender: TObject);
    procedure tb_refreshClick(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure vstDblClick(Sender: TObject);
    procedure vstFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure vstGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;  Column: TColumnIndex; TextType: TVSTTextType; var CellText: String);
  private
     ts : ITaskService;
      tf : ITaskFolder;
     procedure getTasks(folder : ITaskFolder;pn:PVirtualNode);
     procedure refreshtree;
  public
  end;

var
  main: Tmain;

//const TaskStateNames : array[TTaskState] of string = ('неизвестно', 'отключено', 'в очереди', 'готово', 'выполняется');

implementation

{$R *.lfm}
uses editu;
type
         ptir=^tir;
         tir=record
            i:IDispatch;
         end;

{ Tmain }
function getDate(date:TDate):string; inline;
begin
    if date = 0 then result := ''
    else result := DateToStr(date);
end;


procedure Tmain.vstDblClick(Sender: TObject);
var ef:Teditform;
  d:ptir;
  t:IRegisteredTask;
  f:ITaskFolder;
  r:tmodalresult;
begin

  if (vst.FocusedNode<>nil) and (vst.FocusedNode^.Dummy=0) then
  begin
    d:=vst.GetNodeData(vst.FocusedNode);
    t:=(d.i as IRegisteredTask);
    d:=vst.GetNodeData(vst.FocusedNode.Parent);
    f:=(d.i as ITaskFolder);

   ef:=Teditform.Create(self);

    try
      ef.ts:=ts;
      ef.path:=t.Path;
      ef.def:=ts.NewTask(0);
      ef.def.XmlText:=t.Definition.XmlText;
      r:= ef.showmodal;
      if r=mrok then
      begin
        d:=vst.GetNodeData(vst.FocusedNode);
        d.i:=f.RegisterTaskDefinition(t.Path,ef.def,TASK_UPDATE,'','',TASK_LOGON_INTERACTIVE_TOKEN,'');
        lm.Lines.add((d.i as IRegisteredTask).Definition.RegistrationInfo.Description);
      end;


    finally
     ef.Free;
    end;

  end;

end;



procedure Tmain.getTasks(folder : ITaskFolder;pn:PVirtualNode);
var  i : integer;
    rt:IRegisteredTask;
    tc : IRegisteredTaskCollection;
     tfc : ITaskFolderCollection;
     n,n1:PVirtualNode;
     d:ptir;
begin
    n:= vst.AddChild(pn);
    n^.Dummy:=1;
    d:=vst.GetNodeData(n);
    d^.i:=folder;

    tc := folder.GetTasks(1);
    for i := 1 to tc.Count do
    begin
       n1:=vst.AddChild(n);
       d:=vst.GetNodeData(n1);
       rt:=tc.Item[i];
       d^.i:=rt;
       n1^.Dummy:=0;
    end;

    tfc := folder.GetFolders(0);
    for i:=1 to tfc.Count do
      getTasks(tfc.Item[i],n);
end;

procedure Tmain.FormCreate(Sender: TObject);
begin
  ts:=nil;
//  CoInitialize(nil);
  refreshtree;
end;

procedure Tmain.tb_refreshClick(Sender: TObject);
begin
   refreshtree;
end;

procedure Tmain.ToolButton1Click(Sender: TObject);
var d:ptir;
    rt:IRunningTask;
begin
  if vst.FocusedNode.Dummy=0 then
  begin
    d:=vst.GetNodeData(vst.FocusedNode);
    if (d<>nil) and (d.i<>nil) then
    begin
       rt:= (d^.i as IRegisteredTask).Run(null);
       ToolBar1.Enabled:=false;
       try
           try
             while rt.State=TASK_STATE_RUNNING do
             begin
                if lm.Lines[lm.Lines.Count-1]<>rt.CurrentAction then
                   lm.Lines.add(rt.CurrentAction);
                Application.ProcessMessages;
             end;
           except
             on e:Exception do lm.Lines.Add(e.Message);
           end;

       finally
         ToolBar1.Enabled:=true;
       end;

    end;
  end;
end;



procedure Tmain.vstFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
var d:ptir;
begin
  d:=vst.GetNodeData(node);
  d^.i:=nil;
end;


procedure Tmain.refreshtree;
begin
  if ts<>nil then
  begin
      vst.Clear;
      ts:=nil;
  end;
  ts := CoTaskScheduler.Create();
//  ts.Connect(,'','', '');
  ts.Connect(null,null,null,null);
  //if r<>0 then raise Exception.Create('Не могу подсоединиться к планировщику задач');
  tf:=nil;
  tf := ts.GetFolder('\');
 // ts.prepare
  vst.BeginUpdate;
  try
  getTasks(tf,nil);
  finally
    vst.EndUpdate;
  end;
  vst.Expanded[vst.GetFirst]:=true;
end;



procedure Tmain.vstGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;   Column: TColumnIndex; TextType: TVSTTextType; var CellText: String);
var d:ptir;
begin
  d:=vst.GetNodeData(node);
  if (d<>nil) and (d.i<>nil) then
  begin
      if node^.Dummy=1 then
         celltext:= (d.i as ITaskFolder).Name
      else
        celltext:=(d.i as IRegisteredTask).Name;
  end else CellText:='nil';
end;

end.

