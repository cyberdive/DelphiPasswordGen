unit UPwdGen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnGenerate: TButton;
    lblPwd: TLabel;
    UpDown1: TUpDown;
    Edit1: TEdit;
    Label2: TLabel;
    procedure btnGenerateClick(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.btnGenerateClick(Sender: TObject);
{ Objet : g�n�re un mot al�atoire de longueur donn�e par
          le contr�le TUpDown et compos� de caract�re imprimables
          (code ASCII >= 32)
}
var
  i : integer;
  s : string;
begin
  Randomize;
  For i := 0 to UpDown1.Position do
    S := S + Chr(48 + Random(80));
  LblPwd.Caption := S;
end;

end.
