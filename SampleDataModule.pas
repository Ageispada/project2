unit SampleDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass,
  frxDBSet;

type
  TFirstDataModule = class(TDataModule)
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    FDQuery2: TFDQuery;
    DataSource2: TDataSource;
    frxDBDataset2: TfrxDBDataset;
    frxReport2: TfrxReport;
    FDQuery1: TFDQuery;
    FDQuery1HAB_COD: TStringField;
    FDQuery1HAB_TPO: TStringField;
    FDQuery1HAB_OBS: TStringField;
    FDQuery1HAB_STA: TStringField;
    FDQuery1HAB_FOL: TIntegerField;
    FDQuery1HAB_AMA: TStringField;
    FDQuery1HAB_AMA_K: TIntegerField;
    FDQuery1HAB_COM: TStringField;
    FDQuery1HAB_AMA_I: TStringField;
    FDQuery1HAB_AMA_J: TSingleField;
    FDQuery1THA_COD: TStringField;
    FDQuery1THA_NOM: TStringField;
    FDQuery1THA_OCU: TIntegerField;
    FDQuery1THA_VAR: TStringField;
    FDQuery2THA_COD: TStringField;
    FDQuery2THA_NOM: TStringField;
    FDQuery2THA_OCU: TIntegerField;
    FDQuery2THA_VAR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FirstDataModule: TFirstDataModule;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
