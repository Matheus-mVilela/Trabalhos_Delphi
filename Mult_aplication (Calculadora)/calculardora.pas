unit calculardora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit;

type
  TForm1 = class(TForm)
    btn_0: TButton;
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_ponto: TButton;
    btn_igual: TButton;
    btn_soma: TButton;
    btn_sub: TButton;
    btn_mult: TButton;
    btn_div: TButton;
    caixa_botoes: TLayout;
    caixa_topo: TLayout;
    lb_operador: TLabel;
    lb_num1: TLabel;
    lb_num2: TLabel;
    btn_apagar: TButton;
    btn_clean: TButton;
    btn_C: TButton;
    procedure btn_somaClick(Sender: TObject);
    procedure btn_subClick(Sender: TObject);
    procedure btn_multClick(Sender: TObject);
    procedure btn_divClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_apagarClick(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_cleanClick(Sender: TObject);
    procedure btn_CClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_somaClick(Sender: TObject);
  begin
    lb_operador.Text:= '+';
    btn_soma.enabled := false;
    btn_sub.enabled := true;
    btn_mult.Enabled := true;
    btn_div.enabled := true;
  end;

procedure TForm1.btn_subClick(Sender: TObject);
  begin
    lb_operador.Text:= '-';
    btn_soma.enabled := true;
    btn_sub.enabled := false;
    btn_mult.Enabled := true;
    btn_div.enabled := true;
  end;

procedure TForm1.btn_CClick(Sender: TObject);
begin
if lb_operador.Text = '.' then
begin
  lb_num1.Text:= '';
end
else
  lb_num2.Text:= '';
end;

procedure TForm1.btn_multClick(Sender: TObject);
  begin
    lb_operador.Text:= '*';
    btn_soma.enabled := true;
    btn_sub.enabled := true;
    btn_mult.Enabled := false;
    btn_div.enabled := true;
  end;

procedure TForm1.btn_divClick(Sender: TObject);
  begin
    lb_operador.Text:= '/';
    btn_soma.enabled := true;
    btn_sub.enabled := true;
    btn_mult.Enabled := true;
    btn_div.enabled := false;
  end;

procedure TForm1.btn_igualClick(Sender: TObject);
  var n1,n2 : double;
  var x : char;
  begin
  n1:= strtofloat (lb_num1.Text);
  n2:= strtofloat (lb_num2.Text);

   btn_soma.enabled := true;
   btn_sub.enabled := true;
   btn_mult.Enabled := true;
   btn_div.enabled := true;

{//calculo de soma

if (lb_operador.text = '+') then
begin
  showmessage (floattostr(n1+n2));
end;

// calculo  de subitrção
if (lb_operador.text = '-') then
begin
  showmessage (floattostr(n1-n2));
end;

// calculo de multiplicação
if (lb_operador.text = '*') then
begin
  showmessage (floattostr(n1*n2));
end;

//calculo de divisão
if (lb_operador.text = '/') then
begin
  showmessage (floattostr(n1/n2));
  end;

end;}
// calculos com case
      x:=lb_operador.Text [1];
    case x of
      '+': begin
      showmessage (floattostr(n1+n2));
      end;
      '-': begin
        showmessage (floattostr(n1-n2));
      end;
      '*': begin
        showmessage (floattostr(n1*n2));
      end;
      '/': begin
        showmessage (floattostr(n1/n2));
      end;
    end;

    lb_operador.Text := '.';
    lb_num1.Text := '';
    lb_num2.Text := '';
end;




procedure TForm1.btn_pontoClick(Sender: TObject);
begin
if lb_operador.Text = '.' then
    begin
      lb_num1.Text:=lb_num1.Text + ',';
    end
    else
      lb_num2.Text:=lb_num2.Text + ',';
end;

procedure TForm1.btn_0Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
    begin
      lb_num1.Text:=lb_num1.Text + '0';
    end
    else
      lb_num2.Text:=lb_num2.Text + '0';
end;
procedure TForm1.btn_1Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
    begin
      lb_num1.Text:=lb_num1.Text + '1';
    end
    else
      lb_num2.Text:=lb_num2.Text + '1';

end;

procedure TForm1.btn_2Click(Sender: TObject);
begin
  if lb_operador.Text = '.' then
  begin
    lb_num1.Text:=lb_num1.Text + '2';
  end
  else
  lb_num2.Text:=lb_num2.Text + '2';

end;


procedure TForm1.btn_3Click(Sender: TObject);
begin
 if lb_operador.Text = '.' then
  begin
    lb_num1.Text:=lb_num1.Text + '3';
  end
  else
  lb_num2.Text:=lb_num2.Text + '3';
end;


procedure TForm1.btn_4Click(Sender: TObject);
begin
 if lb_operador.Text = '.' then
  begin
    lb_num1.Text:=lb_num1.Text + '4';
  end
  else
  lb_num2.Text:=lb_num2.Text + '4';
end;


procedure TForm1.btn_5Click(Sender: TObject);
begin
 if lb_operador.Text = '.' then
  begin
    lb_num1.Text:=lb_num1.Text + '5';
  end
  else
  lb_num2.Text:=lb_num2.Text + '5';
end;



procedure TForm1.btn_6Click(Sender: TObject);
begin
 if lb_operador.Text = '.' then
  begin
    lb_num1.Text:=lb_num1.Text + '6';
  end
  else
  lb_num2.Text:=lb_num2.Text + '6';
end;


procedure TForm1.btn_7Click(Sender: TObject);
begin
 if lb_operador.Text = '.' then
  begin
    lb_num1.Text:=lb_num1.Text + '7';
  end
  else
  lb_num2.Text:=lb_num2.Text + '7';
end;


procedure TForm1.btn_8Click(Sender: TObject);
begin
 if lb_operador.Text = '.' then
  begin
    lb_num1.Text:=lb_num1.Text + '8';
  end
  else
  lb_num2.Text:=lb_num2.Text + '8';
end;

procedure TForm1.btn_9Click(Sender: TObject);
begin
 if lb_operador.Text = '.' then
  begin
    lb_num1.Text:=lb_num1.Text + '9';
  end
  else
  lb_num2.Text:=lb_num2.Text + '9';
end;

procedure TForm1.btn_apagarClick(Sender: TObject);
begin
  if lb_operador.Text = '.' then
    begin
         lb_num1.Text := copy (lb_num1.Text, 0, length (lb_num1.Text) -1)
    end
    else
    begin
      lb_num2.Text := copy (lb_num2.Text, 0, length (lb_num2.Text) -1) ;
    end;

end;


procedure TForm1.btn_cleanClick(Sender: TObject);
begin
  btn_soma.enabled := true;
  btn_sub.enabled := true;
  btn_mult.Enabled := true;
  btn_div.enabled := true;
  lb_operador.Text:= '.';
  lb_num1.Text:= '';
  lb_num2.Text:= '';

end;

end.

