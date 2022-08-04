unit Scoring;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TfrmScoring = class(TForm)
    btnBack: TButton;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    pnlT1: TPanel;
    redT1: TRichEdit;
    btnT1A1: TButton;
    btnT1A2: TButton;
    btnT1A3: TButton;
    btnT1C: TButton;
    lblT1: TLabel;
    btnSave: TBitBtn;
    pnlT2: TPanel;
    lblT2: TLabel;
    redT2: TRichEdit;
    btnT2A1: TButton;
    btnT2A2: TButton;
    btnT2A3: TButton;
    btnT2C: TButton;
    pnlT3: TPanel;
    lblT3: TLabel;
    redT3: TRichEdit;
    btnT3A1: TButton;
    btnT3A2: TButton;
    btnT3A3: TButton;
    btnT3C: TButton;
    lblTotalT1: TLabel;
    lblTotalT2: TLabel;
    lblTotalT3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBackClick(Sender: TObject);
    function btnCustom : integer;
    procedure btnT1CClick(Sender: TObject);
    procedure btnT2CClick(Sender: TObject);
    procedure btnT3CClick(Sender: TObject);
    procedure print(U1, U2, U3 : integer; clear : boolean);
    procedure FormShow(Sender: TObject);
    procedure btnT1A1Click(Sender: TObject);
    procedure btnT2A1Click(Sender: TObject);
    procedure btnT3A1Click(Sender: TObject);
    procedure btnT1A2Click(Sender: TObject);
    procedure btnT2A2Click(Sender: TObject);
    procedure btnT3A2Click(Sender: TObject);
    procedure btnT1A3Click(Sender: TObject);
    procedure btnT2A3Click(Sender: TObject);
    procedure btnT3A3Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    Var
      T1,T2,T3 : string;
      A1,A2,A3 : integer;
      S1,S2,S3 : integer;
      bT3 : boolean;
  public
    constructor Init(sT1,sT2,sT3 : string; biT3 : boolean);
  end;
var
  frmScoring: TfrmScoring;

implementation

uses Setup;

{$R *.dfm}

{ TfrmScoring }

procedure TfrmScoring.btnBackClick(Sender: TObject);
begin
  frmScoring.Hide;
  frmSetup.Show;
end;

function TfrmScoring.btnCustom: integer;
begin
  result := StrToInt(Inputbox('Custom', 'Enter custom amount to add to score', '0'));
end;

procedure TfrmScoring.btnSaveClick(Sender: TObject);
var
  saveDialog : TSaveDialog;
  sl1, sl2, sl3, slOut : TStringList;
  ms1, ms2, ms3 : TMemoryStream;
  i : integer;
begin
  saveDialog := TSaveDialog.Create(self);

  saveDialog.Title := 'Save scores';
  saveDialog.InitialDir := GetCurrentDir;

  // Allow only .txt and .doc file types to be saved
  saveDialog.Filter := 'CSV file|*.csv';
  saveDialog.DefaultExt := 'csv';

  // Select text files as the starting filter type
  saveDialog.FilterIndex := 1;

  // Display the open file dialog
  if saveDialog.Execute then begin

    sl1 := TStringList.Create;
    sl2 := TStringList.Create;
    sl3 := TStringList.Create;
    slOut := TStringList.Create;

    ms1 := TMemoryStream.Create;
    ms2 := TMemoryStream.Create;
    ms3 := TMemoryStream.Create;

    redT1.Lines.SaveToStream(ms1);
    ms1.Position := 0;
    sl1.LoadFromStream(ms1);

    redT2.Lines.SaveToStream(ms2);
    ms2.Position := 0;
    sl2.LoadFromStream(ms2);

    redT3.Lines.SaveToStream(ms3);
    ms3.Position := 0;
    sl3.LoadFromStream(ms3);

    if bT3 then begin
      slOut.Add(T1 + ',' + T2 + ',' + T3);
      for i := 1 to sl1.Count-1 do
        slOut.Add(sl1[i] + ',' + sl2[i] + ',' + sl3[i]);
      slOut.Add(IntToStr(S1) + ',' + IntToStr(S2) + ',' + IntToStr(S3));
    end else begin
      slOut.Add(T1 + ',' + T2);
      for i := 1 to sl1.Count-1 do
        slOut.Add(sl1[i] + ',' + sl2[i]);
      slOut.Add(IntToStr(S1) + ',' + IntToStr(S2));
    end;
    slOut.SaveToFile(saveDialog.FileName);

  end;

  saveDialog.Free;
  frmScoring.Show;
  sl1.Free;
  sl2.Free;
  sl3.Free;
  ms1.Free;
  ms2.Free;
  ms3.Free;
end;

procedure TfrmScoring.btnT1A1Click(Sender: TObject);
begin
  S1 := S1 + A1;
  print(A1,0,0, false);
end;

procedure TfrmScoring.btnT1A2Click(Sender: TObject);
begin
  S1 := S1 + A2;
  print(A2,0,0, false);
end;

procedure TfrmScoring.btnT1A3Click(Sender: TObject);
begin
  S1 := S1 + A3;
  print(A3,0,0, false);
end;

procedure TfrmScoring.btnT1CClick(Sender: TObject);
Var
  i : integer;
begin
  i := btnCustom;
  S1 := S1 + i;
  print(i,0,0, false);
end;

procedure TfrmScoring.btnT2A1Click(Sender: TObject);
begin
  S2 := S2 + A1;
  print(0,A1,0, false);
end;

procedure TfrmScoring.btnT2A2Click(Sender: TObject);
begin
  S2 := S2 + A2;
  print(0,A2,0, false);
end;

procedure TfrmScoring.btnT2A3Click(Sender: TObject);
begin
  S2 := S2 + A3;
  print(0,A3,0, false);
end;

procedure TfrmScoring.btnT2CClick(Sender: TObject);
Var
  i : integer;
begin
  i := btnCustom;
  S2 := S2 + i;
  print(0,i,0, false);
end;

procedure TfrmScoring.btnT3A1Click(Sender: TObject);
begin
  S3 := S3 + A1;
  print(0,0,A1, false);
end;

procedure TfrmScoring.btnT3A2Click(Sender: TObject);
begin
  S3 := S3 + A2;
  print(0,0,A2, false);
end;

procedure TfrmScoring.btnT3A3Click(Sender: TObject);
begin
  S3 := S3 + A3;
  print(0,0,A3, false);
end;

procedure TfrmScoring.btnT3CClick(Sender: TObject);
Var
  i : integer;
begin
  i := btnCustom;
  S3 := S3 + i;
  print(0,0,i, false);
end;

procedure TfrmScoring.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TfrmScoring.FormShow(Sender: TObject);
begin
  if (S1 <> 0) OR (S2 <> 0) OR (S3 <> 0) then
    if MessageDlg('Clear scores?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      S1 := 0;
      S2 := 0;
      S3 := 0;
      print(0,0,0,true);
    end;
end;

constructor TfrmScoring.Init(sT1, sT2, sT3: string; biT3: boolean);
begin
  T1 := sT1;
  T2 := sT2;
  T3 := sT3;
  A1 := frmSetup.spnQ1.Value;
  A2 := frmSetup.spnQ2.Value;
  A3 := frmSetup.spnQ3.Value;
  bT3 := biT3;

  if bT3 then
    pnlT3.Show
  else
    pnlT3.Hide;

  lblT1.Caption := T1;
  lblT2.Caption := T2;
  lblT3.Caption := T3;

  btnT1A1.Caption := 'Add ' + IntToStr(A1);
  btnT2A1.Caption := 'Add ' + IntToStr(A1);
  btnT3A1.Caption := 'Add ' + IntToStr(A1);
  btnT1A2.Caption := 'Add ' + IntToStr(A2);
  btnT2A2.Caption := 'Add ' + IntToStr(A2);
  btnT3A2.Caption := 'Add ' + IntToStr(A2);
  btnT1A3.Caption := 'Add ' + IntToStr(A3);
  btnT2A3.Caption := 'Add ' + IntToStr(A3);
  btnT3A3.Caption := 'Add ' + IntToStr(A3);
end;

procedure TfrmScoring.print(U1, U2, U3 : integer; clear : boolean);
begin
  if clear then begin
    redT1.Clear;
    redT2.Clear;
    redT3.Clear;
  end else begin
    redT1.Lines.Add(IntToStr(U1));
    redT2.Lines.Add(IntToStr(U2));
    redT3.Lines.Add(IntToStr(U3));
  end;

  lblTotalT1.Caption := 'Total: ' + IntToStr(S1);
  lblTotalT2.Caption := 'Total: ' + IntToStr(S2);
  lblTotalT3.Caption := 'Total: ' + IntToStr(S3);
end;

end.
