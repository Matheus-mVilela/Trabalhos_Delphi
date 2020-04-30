unit U_propriedade2;

interface

uses
  System.SysUtils, System.Classes;

type
  TMySubComp = class (TComponent)
  private
    FAtivo: Boolean;
    FDescricao: String;
    Fid: Integer;
    procedure SetAtivo(const Value: Boolean);
    procedure SetDescricao(const Value: String);
    procedure Setid(const Value: Integer);
  published
  property id : Integer read Fid write Setid;
  property Descricao : String read FDescricao write SetDescricao;
  property Ativo : Boolean read FAtivo write SetAtivo;
  end;


  PropriedadeEx2 = class (TComponent);


  TExemplo2 = class(TComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
  FmySubComp1 : TMySubComp;
  FmySubComp2 : TMySubComp;

  constructor Create(AOwner: TComponent); override;


  published
   property MySubComp1 : TMySubComp read FmySubComp1;
   property MySubComp2 : TMySubComp read FmySubComp2;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Exemplos', [TExemplo2]);
end;

{ TMySubComp }

procedure TMySubComp.SetAtivo(const Value: Boolean);
begin
  FAtivo := Value;
end;

procedure TMySubComp.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TMySubComp.Setid(const Value: Integer);
begin
  Fid := Value;
end;

{ TExemplo2 }

constructor TExemplo2.Create(AOwner: TComponent);
begin
  inherited;
    FmySubComp1 := TMySubComp.Create (self);
    FmySubComp1.Name := 'mySubComp1';
    FmySubComp1.SetSubComponent(true);

    FmySubComp2 := TMySubComp.Create (self);
    FmySubComp2.Name := 'mySubComp2';
    FmySubComp2.SetSubComponent(false);
end;

end.
