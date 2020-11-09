unit selectlistU;

{$mode delphi}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons, StdCtrls;

type

  { Tquerylist }

  Tquerylist = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ListBox1: TListBox;
    Panel1: TPanel;
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
  private

  public

  end;

var
  querylist: Tquerylist;


implementation

{$R *.lfm}

{ Tquerylist }

procedure Tquerylist.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  if (ModalResult=mrok) then
    canclose:= (ListBox1.ItemIndex>=0)
  else
    CanClose:=true;
end;

end.

