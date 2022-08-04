program PVScoreKeeper;

uses
  Vcl.Forms,
  Setup in 'Setup.pas' {frmSetup},
  Scoring in 'Scoring.pas' {frmScoring};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSetup, frmSetup);
  Application.CreateForm(TfrmScoring, frmScoring);
  Application.Run;
end.
