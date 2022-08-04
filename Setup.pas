unit Setup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Samples.Spin, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Scoring;

type
  TfrmSetup = class(TForm)
    btnContinue: TButton;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    edtTeam1: TEdit;
    edtTeam2: TEdit;
    edtTeam3: TEdit;
    cbxT3: TCheckBox;
    Label1: TLabel;
    spnQ1: TSpinEdit;
    spnQ2: TSpinEdit;
    spnQ3: TSpinEdit;
    Label2: TLabel;
    procedure btnContinueClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSetup: TfrmSetup;

implementation

{$R *.dfm}

procedure TfrmSetup.btnContinueClick(Sender: TObject);
begin
  frmScoring.Init(edtTeam1.Text, edtTeam2.Text, edtTeam3.Text, cbxT3.Checked);
  frmSetup.Hide;
  frmScoring.Show;
end;

procedure TfrmSetup.FormActivate(Sender: TObject);
begin
  frmScoring.Hide;
end;

procedure TfrmSetup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
