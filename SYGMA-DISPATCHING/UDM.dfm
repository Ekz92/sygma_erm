object DM: TDM
  OldCreateOrder = False
  Height = 177
  Width = 254
  object frxDBParam: TfrxDBDataset
    UserName = 'frxDBParam'
    CloseDataSource = False
    DataSet = TParam
    BCDToCurrency = False
    Left = 171
    Top = 20
  end
  object TParam: TSQLTable
    MaxBlobSize = 1
    SQLConnection = SQLConnection1
    TableName = 'tb_parametre'
    Left = 163
    Top = 88
  end
  object SQLConnection1: TSQLConnection
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver190.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=19.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      'MetaDataPackageLoader=K2'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=19.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=127.0.0.1'
      'Database=gpa_db'
      'User_Name=root'
      'Password='
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      '=')
    Left = 64
    Top = 32
  end
end
