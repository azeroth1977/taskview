program laz_taskview;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,mainu, datetimectrls, TaskScheduler_1_0_TLB, selectlistU;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Tquerylist, querylist);
  Application.Run;
end.

