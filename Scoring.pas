unit Scoring;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmScoring = class(TForm)
  private
    Var
      T1,T2,T3 : string;
      A1,A2,A3 : integer;
      bT3 : boolean;
  public
    constructor Init(T1,T2,T3 : string; A1,A2,A3 : integer; bT3 : boolean);
  end;
var
  frmScoring: TfrmScoring;

implementation

{$R *.dfm}

{ TfrmScoring }

constructor TfrmScoring.Init(T1, T2, T3: string; A1, A2, A3: integer;
  bT3: boolean);
begin
  T1 := T1;
  T2 := T2;
  T3 := T3;
  A1 := A1;
  A2 := A2;
  A3 := A3;
  bT3 := bT3;
end;

end.
