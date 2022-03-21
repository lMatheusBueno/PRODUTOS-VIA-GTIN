unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, sBitBtn,
  sEdit, Vcl.ExtCtrls, sPanel, REST.Types, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, sMemo, IdBaseComponent, IdComponent, IdTCPConnection,sDialogs,
  IdTCPClient, IdHTTP,REST.response.Adapter, System.JSON, Vcl.OleCtrls, SHDocVw,
  System.Net.URLClient, System.Net.HttpClient, System.Net.HttpClientComponent,
  sListBox;

type
  TForm3 = class(TForm)
    sPanel1: TsPanel;
    sEdit1: TsEdit;
    sBitBtn1: TsBitBtn;
    IdHTTP1: TIdHTTP;
    sMemo1: TsMemo;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Label1: TLabel;
    sEdit2: TsEdit;
    Label2: TLabel;
    sEdit3: TsEdit;
    Label3: TLabel;
    sEdit4: TsEdit;
    Label4: TLabel;
    sEdit5: TsEdit;
    Label5: TLabel;
    NetHTTPRequest1: TNetHTTPRequest;
    sBitBtn2: TsBitBtn;
    sBitBtn3: TsBitBtn;
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);

//    function TrataObjeto(jObj:TJSONObject):string;
  private
    { Private declarations }
  public

  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.sBitBtn1Click(Sender: TObject);
 var
url,str, json,  JsonString ,Retorno, nome: string;
i: integer;
ja:TJSONArray;
jv:TJSONValue;
jsonObj,jSubObj:TJSONObject;

x : integer;
begin
try



    if sEdit1.text <> '' then
    begin
    sMemo1.Clear;;
     RESTClient1.Params.AddHeader('X-Cosmos-Token',sEdit5.Text);   //Token
     RESTClient1.BaseURL := 'https://api.cosmos.bluesoft.com.br/gtins/' + sEdit1.Text;
     RESTClient1.UserAgent := 'Cosmos-API-Request';
     RESTRequest1.Execute;
    sMemo1.Lines.Add(RESTRequest1.Response.JSONText);
    Screen.Cursor := crHourGlass;

    //Inserir linhas no sMemo ->


      nome:= copy(sMemo1.Lines.Strings[1],21);   // Edit da Descrição do produto
      sEdit3.Text := copy(sMemo1.Lines.Strings[47],18);  // Edit do NCM
      sEdit4.Text := copy(sMemo1.Lines.Strings[12] ,15); // Edit do Preço médio

      str := sEdit2.Text;
        delete(str, length(str)-1, length(str));
          sEdit2.Text := str;

     str := sEdit3.Text;
       delete(str, length(str)-1, length(str));
        sEdit3.Text := str;

     str := sEdit4.Text;
      delete(str, length(str)-1, length(str));
        sEdit4.Text := str;

     Screen.Cursor := crDefault;
    End

    Else
    begin
      Showmessage('Informe o Código de Barras');
    end;


finally

end;

end;

procedure TForm3.sBitBtn2Click(Sender: TObject);
var
nome,str:string;
begin
nome := copy(sMemo1.Lines.Strings[1],21);
str := sEdit2.Text;
delete(str, length(str)-1, length(str));
sEdit2.Text := nome;

           // Edit da Descrição do produto  if MessageBox('Deseja adicionar o'   then

     if sMessageDlg('Atenção','Deseja adicionar a descrição ' + nome ,mtInformation, [mbYes, mbNo], 1)=mrYes then
     begin
       sEdit2.Text:= nome;   // Edit da Descrição do produto
    end;

end;
end.
