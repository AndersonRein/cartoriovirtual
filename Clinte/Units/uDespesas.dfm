inherited FDespeas: TFDespeas
  Caption = 'Despesas'
  ClientHeight = 493
  ClientWidth = 944
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 950
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 944
    Height = 60
    Align = alTop
    Caption = 'Pesquisa'
    TabOrder = 0
    ExplicitWidth = 862
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 74
      Height = 13
      Caption = 'Despesa/Grupo'
    end
    object btnBuscar: TSpeedButton
      Left = 545
      Top = 17
      Width = 39
      Height = 39
      Flat = True
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        08000000000000040000C40E0000C40E00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFF6F6F6F6F6
        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6FFFFFFFFFFFF5D010C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C4D9E08FFFFFFFF55010D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D010DEFFFFFFF560D0D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D08FFFF560D0D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D9EFFFF560D0E0E0E
        0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0D0D0E0E0E0E0D4EF6FF560E0E0E0E
        0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E4E0E0E0E0E0E0EF6FF5E0E0E0E0E
        0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E56EFF65E0E0E0E0E0EF6FF5E0E0E0E0E
        0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E56F6FFFFF60E0E0E0E0EF6FF5E0E0E0E0E
        0E0E0E0E0E0E0E0E0E0E0E0E0E0E5EF6FFF6FFEF0E0E0E0E0EF6FF5E0E0E0E0E
        0E0E0E0E0E0E0E0E0E0E0E0E0E9FF6FFF6FFEF4E0E0E0E0E0EF6FF5E0E0E0E0E
        0E0E0E0E0E0E0E0E0E0E0E0EA7F6FFF6FFEF4E0E0E0E0E0E0EF6FF5E0E0E0E0E
        0E0E0E0E0E0E0E0E0E0E0EA7FFFFF6FFEF0E0E0E0E0E0E0E0EF6FF5F0E0E0E0E
        0E0E0E565FA7A7A7560EA7FFF6F6FFAF0E0E0E0E0E0E0E0E0EF6FF5F0E0E0E0E
        0E0EA7F6FFFFFFFFF6AFF6FFFFFFAF0E0E0E0E0E0E0E0E0E0EF6FF5F0E161616
        0EA7FFFFEFAFA7EFF6FFF6F6F6A70E0E161616161616160E16F6FF5F0E16160E
        5FFFF6A70E0E0E0E5EF6FFEF5E0E1616161616161616161616F6FF5F0E161616
        EFFFA70E161616160E5FF6F656161616161616161616161616F6FFA716561656
        F6F65616161616161616EFFFA7161616161616161616161656F6FFA75E5E565F
        FF071616161616161616AFFFA7161616161616161656565E5FF6FFA75F5F5F67
        FF085E56565656561616AFFFA71656565656565E5F5F5F5F5FF6FFA75F5F5F5F
        F6F6675F5F5F5F5F5E5FF6FFA75E5F5F5F5F5F5F5F5F5F5F5FF6FFA75F5F5F5F
        B7FF075F5F5F5F5F5FAFFF085F5F5F5F5F5F5F5F5F5F5F5F5FF6FFA75F5F5F5F
        67F6FF08A75F5F67B7FFF6A75F5F5F5F5F5F5F5F5F5F5F5F5FF6FFA75F5F5F5F
        5F67F6FFFFF6F6F6FFF6AF5F5F5F5F5F5F5F5F5F5F5F5F5F5FF6FFA75F5F5F5F
        5F5F67AFF6F6F6F6EF675F5F5F5F5F5F5F5F5F5F5F5F5F5F5FF6FFAF5F5F5F5F
        5F5F5F5F5F6767675F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F67F6FFF6675F6767
        676767675F5F5F5F6767676767676767676767676767676767F6FFFFB75F5F67
        67676767676767676767676767676767676767676767676767F6FFFFFFB7675F
        5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5FF6FFFFFFFFF6B7
        AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFF6FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnBuscarClick
    end
    object edBusca: TEdit
      Left = 8
      Top = 32
      Width = 322
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyPress = edBuscaKeyPress
    end
    object GroupBox4: TGroupBox
      Left = 336
      Top = 11
      Width = 205
      Height = 44
      Caption = 'Per'#237'odo'
      TabOrder = 1
      object dtpInicio: TDateTimePicker
        Left = 6
        Top = 18
        Width = 93
        Height = 21
        Date = 41519.964092442130000000
        Time = 41519.964092442130000000
        TabOrder = 0
      end
      object dtpFinal: TDateTimePicker
        Left = 105
        Top = 18
        Width = 93
        Height = 21
        Date = 41519.964092442130000000
        Time = 41519.964092442130000000
        TabOrder = 1
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 60
    Width = 944
    Height = 373
    Align = alClient
    Caption = 'Despesas lan'#231'adas'
    TabOrder = 1
    ExplicitWidth = 862
    ExplicitHeight = 343
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 940
      Height = 356
      Align = alClient
      DataSource = dsConsulta
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRUPODESPESA'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUBGRUPODESPSA'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CARNELEAO'
          Width = 80
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 433
    Width = 944
    Height = 60
    Align = alBottom
    Caption = 'Painel de controle'
    TabOrder = 2
    ExplicitTop = 403
    ExplicitWidth = 862
    object btnAdd: TSpeedButton
      Left = 7
      Top = 18
      Width = 100
      Height = 35
      Caption = '&Adicionar'
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        20000000000000100000EA0A0000EA0A00000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00E3E7DB009DB891005F9357002E7A2C002C7C2F002C7C2F002E7A
        2C005F9357009DB89100E3E7DB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C8D6
        C10078AA7900439B5B002DA25E0027AE6C0026B6750026B9790026B9790026B6
        750027AE6C002DA25F00439B5B0078AA7900C8D6C100FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3DECD00609B61002B9C
        560025B8780024C3850026BB7C0027B06E0028A7630029A25E0029A25E0028A7
        630027B06E0026BB7C0024C3850025B878002B9C5500609B6100D3DECD00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009BBA93002E91490024B9790025C0
        820029A763002B934C002C8C43002D8B42002D8B42002D8C42002D8C42002D8B
        42002D8A41002C8C43002B934B0029A6620025C0810024B97A002E9149009BBA
        9300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFEFF007DA77700299F5A0024C3850029A763002C8F
        46002D8D44002C9148002C924A002C934B002C934B002C934B002C934B002C93
        4B002C924A002C924A002C9047002D8C43002C8D450029A6630024C38500299F
        5A007DA77700FFFEFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF007BA7760027A5610026BD7E002B964F002C8E45002C93
        4C002C954E002C964F002C964F002B97500025954B0025954B0025954B002595
        4B002B964F002C954E002C954E002C944D002C924A002C8D43002B954E0025BD
        7E0027A561007BA77600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF009CBA940029A05A0026B979002C924A002C924B002C9750002C97
        51002C9851002C9952002B9A5300318F48004994550049965700499657004994
        5500318F48002B9952002C9851002C9750002C964F002C954E002C9149002C90
        480026B9790029A05A009CBA9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00D7E0D0002E924B0026B979002C944C002C954E002C9852002C9953002C9A
        54002C9B55002C9C5600259B530049965700E0DBDB00E0DDDE00E0DDDE00E0DB
        DB0049965700259B52002C9A55002C9A54002C9953002C9851002C9750002C93
        4C002C924A0026B978002E924B00D7E0D000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF005C9B600025B270002C9B56002C964F002C9A53002C9B55002C9C57002C9D
        58002B9E59002B9F5A00249E570049985B00E2DEE000E2E1E300E2E1E300E2DE
        DF0049985B00249E56002B9E59002C9D58002C9C56002C9B55002C9953002C98
        52002C944D002C99530025B16F005C9B6000FFFFFF00FFFFFF00FFFFFF00CAD8
        C4002B9C560029AA67002D964F002C9B55002C9D57002B9E59002B9F5A002BA0
        5C002BA15D002BA25E0024A25B00499A5D00E3DFDF00E3E2E300E3E2E300E3DF
        DF00499A5C0024A15A002BA15D002BA05C002B9F5A002B9E59002C9C57002C9B
        55002C9953002D934C0029A865002B9C5600CAD8C400FFFFFF00FFFFFF0076AB
        7A0027A965002C9A54002C9C56002B9E59002BA05B002BA15D002BA25E002BA4
        60002BA461002BA5620024A55F004A9B5E00E5E1E100E5E4E500E5E4E500E5E1
        E1004A9B5E0024A45E002BA461002BA35F002BA25E002BA15C002B9F5A002B9E
        58002C9C56002C9A53002C98510027A9650076AC7B00FFFFFF00E6E9DE00409B
        5A0029A764002C9B55002B9F5A002BA15C002BA25E002BA460002BA562002BA7
        63002BA865002BA8660024A863004A9D6000E7E3E300E7E6E700E7E6E700E7E3
        E3004A9C5F0024A762002BA865002BA663002BA561002BA460002BA25E002BA0
        5C002B9E59002C9C57002C98520029A56100409B5A00E6E9DF009BB993002C99
        54002BA25E002B9F5A002BA25D002BA360002AA6630023A6610023A8620023A9
        640023AA660023AB67001BAB6500449C5D00E9E5E500E9E8E900E9E8E900E9E5
        E400449B5C001BAA640023AA650023A9640023A7620023A6600023A45E002AA4
        60002BA15D002B9F5A002C9C57002BA05A002C9853009BB993005B9659002A9D
        57002BA15C002AA25E002BA460002AA76400319853004B9B5E004B9E61004B9E
        62004B9F62004B9F6200449D5E0065A26E00EAE9E900EAEAEB00EAEAEB00EAE9
        E90065A26E00449D5D004B9E62004B9E61004B9D61004B9D60004B9A5D003197
        51002AA561002BA25D002A9F5A002B9E58002A9B55005B965A002D7E310030A1
        5D0032A664002DA562002AA6620022A862004A9C5F00EEE6E600EFEAEB00EDE9
        E900EDE9E900EDE9E900EDE9E800ECEBEB00EBECEC00EBEBEB00EBEBEB00EBEC
        EC00ECEBEB00EDE9E800EDE9E900EDE9E900EDE9E900EFEAEB00EEE6E6004A9B
        5E0022A55F002AA35F002DA25E0032A36000319F5B002D7E32002D7E310037A4
        62003CAD6E003AAD6F0034AD6D0025AB67004A9F6200F0ECEC00F1F0F100EFEF
        EF00EFEFEF00EFEFEF00EFEFEF00EFEEEF00EDEDED00EDEDED00EDEDED00EDED
        ED00EFEEEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F1F0F100F0ECEC004A9E
        610024A8630034AB6A003AAB6B003CAA6A0037A15F002D7D31002D7D30003EA5
        660043B2760042B3770043B67A003AB6790051A36800F0ECEC00F3F1F300F1F0
        F100F1F0F100F1F0F100F1F0F100F0F0F000EFEFEF00EFEFEF00EFEFEF00EFEF
        EF00F0F0F000F1F0F100F1F0F100F1F0F100F1F0F100F3F1F300F0ECEC0052A2
        67003AB3750043B3770042B0740043AF73003EA363002D7C2F002D7A2D0043A7
        68004AB77F0049B87F0049BA810043BC830054A26800EEE8E600F2EEEE00F0ED
        EC00F0EDEC00F0EDEB00F0ECEB00F1F0F000F1F1F100F0F0F000F0F0F000F1F1
        F100F1F0F000F0ECEB00F0EDEC00F0EDEC00F0EDEC00F2EEEE00EEE8E60055A2
        670044B97F0049B77E0049B57B004AB47B0043A466002D7A2D005892540046A5
        660053BE880051BC860050BF880050C28D0047A6690058A46B005AA76F0059A7
        6F0059A76F0059A8700054A66C006CA87500F3F2F200F4F3F400F4F3F400F3F2
        F2006CA8750054A56C0059A76F0059A76F0059A76F005AA76F0058A46A0047A6
        690050C08B0050BC850050B9820053BA840046A364005893540094B88F00499D
        5F005CC4920057C08C0057C28E0057C28F0057C6930051C5900051C5900051C6
        920051C6920050C793004BC8930056A86E00F4F0EF00F7F6F700F7F6F700F4F0
        EF0056A76E004BC8920051C6920051C5910051C5900051C48F0052C48F0057C5
        920057C28E0058C08C0058BE89005CC18E00499C5E0094B89000E0E8DC00539B
        5D0067C798005DC492005EC594005EC695005EC696005EC896005EC897005EC9
        98005DC999005DCA990058CB9A005FAB7500F5F3F100F9F8F900F9F8F900F5F3
        F1005FAB740058CB99005DC999005EC898005EC897005EC796005EC696005EC6
        95005EC594005EC493005EC28F0066C49400539B5D00E0E9DD00FFFFFF0078AA
        780068BD8C0068CB9D0066C8990066C99B0065CA9B0065CA9C0065CB9D0065CC
        9E0064CC9F0064CD9F0061CEA00062AD7700F7F4F300FBFAFB00FBFAFB00F7F4
        F30062AC770061CE9F0064CC9E0065CC9E0065CB9D0065CA9C0065C99B0066C9
        9A0066C8990066C7980068C89A0069BB890078AA7800FFFFFF00FFFFFF00C3D7
        C10056A266007ED5AF006ACA9D006DCCA0006DCDA1006DCDA1006CCEA3006CCF
        A3006CCFA4006CD0A50068D1A50064AE7900F9F6F400FDFCFD00FDFCFD00F8F6
        F40064AE790068D1A5006CCFA4006CCFA3006CCEA2006DCDA1006DCDA1006DCC
        A0006DCB9E006AC99C007FD5AE0056A16500C3D7C100FFFFFF00FFFFFF00FFFF
        FF005E9A5E0081C9A0007BD4AC0073CEA40074CFA50074D0A70073D1A70073D2
        A90074D2A90073D3AA0070D5AC0068AF7C00FCF9F800FFFFFF00FFFFFF00FCF9
        F80067AF7B0070D4AA0074D2A90073D2A80073D1A70074D0A70074CFA50074CF
        A50073CDA2007CD2AB0081C9A0005E9A5F00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00CEDECC00509859009DE0C3007CD2AB007BD2AA007BD3AC007BD4AD007BD4
        AD007BD5AE007AD6AF0078D8B10066AC7800F6F3EE00FAF9F600FAF9F600F5F3
        EE0066AC770078D7B1007BD5AE007BD4AD007BD4AC007BD3AC007CD2AB007AD1
        A9007CD1AA009DE0C20050975900CFDFCD00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0091B890006AAD7800ABE8D00082D5B00080D5B00083D6B20083D7
        B20082D8B30082D9B40084DDBA0064B6830069AE7A006DB280006DB2800069AE
        7A0064B6820084DCB90082D7B30083D7B20083D6B20083D6B10081D5AE0082D4
        AF00ABE7CF006AAC780091B89000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0073A6720078B78800B8EDD9008FDBBA0086D8B4008ADA
        B70089DAB80089DBB90089DCB9008BE0BF0086DFBD0086DFBC0086DEBC0086DE
        BC008CDFBE0089DBB80089DAB8008ADAB7008AD8B60086D7B30090DAB900B8ED
        D90079B6880073A67200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FEFEFE0073A6720073B17F00C3EFDE00AAE7CE0090DB
        BA008DDCBA0090DDBC0091DEBE0091DFBF0091E0C00090E0C00091E0C00091DE
        BF0091DEBE0091DDBD0090DCBC008EDBB90090DAB900AAE6CE00C3EFDE0073B0
        7F0073A57200FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008EB68D00599C6100AFDCC200CDF5
        E800B2EAD3009DE1C50096DFC10094E0C10094E0C10095E0C10094E0C10094E0
        C10095DFC00096DFC0009DE0C400B2E9D300CCF5E700AFDCC200599C61008EB6
        8D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C8DBC600619C630073AF
        7D00B3DCC300D3F4E800D1F7EB00C4F2E100BAEDDA00B6ECD700B6EBD700BAED
        D900C5F1E100D1F6EA00D3F4E800B3DCC30073AF7D00619C6300C8DBC600FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBD3
        BA0078AB79006DA8730084BA8E00A1CEAD00B4DBC100BBDEC700BBDEC700B4DB
        C200A1CEAD0084BA8E006DA8730078AB7900BBD3BA00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00D4E2D30087B28500509150002A7A2C00327E3200327E32002A7A
        2C005091500087B18500D4E2D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = btnAddClick
    end
    object btnEditar: TSpeedButton
      Left = 108
      Top = 18
      Width = 100
      Height = 35
      Caption = '&Editar'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDFBFBFBF9F9F9F6F6F6F5F5F5F1F1F1EEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEFEFEFEEEEEEEEEEEEEFEFEFF3F3F3F5
        F5F5F7F7F7FAFAFAFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FCFCFCDCDCDCC4C4C4BABABAB5B5B5AFAFAFAEAEADABACAAA9AAA8A9AAA8A9AA
        A8A9AAA8A9AAA8A9AAA8A9AAA8ADAEAC7C7C7BABABABAFAEAEA9A9A8ADAEACAE
        AFADB1B1B1B6B6B6BDBDBDC8C8C8E8E8E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFEEEEEEEE1E2E0D9DBD8D4D8D2CFD4CBCBCFC9C3BFC4BDBBBEBCBBBDBCBB
        BDBCBBBDBCBBBDBCBBBDBCBBBDC2C0C4565656060402686E70C0BEC3C1B7C3C7
        C5C6D3D9CFD6DAD4DBDEDAE4E5E3F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC69ADD9633CD7C00CA7D00CA7D00CA7D00CA7D00
        CA7D00CA7D00CA7D00CA7D00CA8200D24100612F423EB8E2F5C7F0FCB497E88E
        0BCD8813CAB170D6F1E8F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF7EFFC8913CD8204C98307C9840AC8840AC8840AC8840AC8840A
        C8840AC8840AC8840AC8840AC88203C79051DEB1F0FFB1DDF2BEE2F3C7F0F651
        D1F17C0BC98404C98203CAD9B3F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFA344D7870CCC870CCC870CCC870CCC870CCC870CCC870CCC870C
        CC870CCC870CCC870CCC870CCC8608CB8825CF9DE0F1B0D9F096D3F055BFF14E
        C1F138A8E78D00C8870BCC8B15CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF8910CD8A11CD8A11CD8A11CD8A11CD8A11CD8A11CD8A11CD8A11
        CD8A11CD8A11CD8A11CD8A11CD8A10CD8804CB9AE3F05ABFEB6DC7F637B7EB5C
        C0F03CC3EE467ADF9401CB8912CFFAF5FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFCFE8E16D18D13D18D14D18D14D18D14D18D14D18D14D18D14D18D14
        D18D14D18D14D18D14D18D14D18D14D19006CE6C9EE922B8EA3EB9EC57BFF129
        B3E955BFF026C4EB6345D79810D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9F36D98D15D28E16D28E16D28E16D28E16D28E16D28E16D28E16
        D28E16D28E16D28E16D28E16D28E16D28F15D29211D15EC7F221B1E84DBDEE35
        B6EA28B2E947BBEE17BAE8AA90E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD3A2EF9623D79119D5921BD6921BD6921BD6921BD6921BD6921B
        D6921BD6921BD6921BD68F16D4921BD6921BD69215D49135DA55D2F421B0E748
        BCEE15ACE535B5EA32B6EA28BAE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFAD51E1961FD8941CD7951DD8951DD8951DD8951DD8951D
        D8951DD8951DD89015D5AB4EE69015D5951DD8951DD89712D5896AE54ECDF228
        B2E833B5EA07A9E33BB6EC1AAEE954C2E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFAFEAA49E09923DA9720D99822D99822D99822D99822
        D99822D99419D7AF54EBD7B7FFA53FE4951CD89822D99822D99C0ED680A2EF48
        C3EF2AB2E916ADE503A8E544B8E5E3E1D4C2C1DBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFDFEB55DE59E2CDE9922DC9B24DD9B24DD9B24
        DD9921DBA132E1D2B3FFC9ECF3D0A5FF9B24DD9923DC9B24DD9B23DC9D19DB78
        C4F542BCEE0EABE86CCAE8FFF2E73C3BA1000091D6D6EFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD197F0A738E59E27E19D27DE9D27
        DE9B21DECE99FFBFDFF1BEDCF1C1D9F3C987FB991CDC9D28DE9D26DFAA30E4CF
        BBF568D0F8B8DADFD3C6D00F0F920909951414A3A1A1E0FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E9F9B766E5B039F19E1F
        E2C67BFABCCEF4B4D8F0B6D6F1B4D9F0C2C6F7BC64F2A326E5A63FE1EEE2F7FF
        FFFFE2E8E6817CAE00008D0D0D981818AAA5A5E2FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F929E203437462F6AAB61
        DCCBC3FFAAD4EDACCFEEABCEEEACCFEEAAD6EDD1B8FF8D4CC2253D539CA3B3FF
        FFFFFFFFFF6363C40E0E9A2D2DB8DBDBF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA5A8AF2931422831452631421928
        354B637CA2D1F5A4CBECAFD2EF9FC8ECA1CDF17A9EBB1E34482D405C2E425EFC
        FCFDFFFFFFFFFFFFA2A2E6F9F9FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E7E96C707D373E4F2931452A3247222A
        40495B74D9EFFFE9F2FAE6F1FAE8F2F9C3E0F959789C2937542E3F5E304260B5
        BCC7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404453272E40292E41283145272E43353E
        54E0F1FEDAEAF8D7E8F7D7E8F7D7E8F7E0EFFCA5B6C81E2E4C2E3F5E30426082
        8EA1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFDCDDDF666977303647292E412831451A2136C5DB
        EECFE5F8CCE2F5CCE2F5CCE2F5CCE2F5CCE2F5DCF2FF5A6C86293A5830426063
        728AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE3E4E6CBCCD181848F282E41262D413D475CCEEC
        FFBFDCF3BFDCF3BFDCF3BFDCF3BFDCF3BFDCF3C4E0F799B2CA24355330425F55
        647FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9FA8242B3E55647BBFE0
        FCB6D6F1B6D6F1B6D6F1B6D6F1B6D6F1B6D6F1B7D7F2B1D0EC2232502F415F58
        6780FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEE0E32B32455C6F88B2D8
        F7ABCEEDABCEEDABCEEDABCEEDABCEEDABCEEDABCFEEB7DDFC2533512F415F66
        758BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2B31455B738EA6D1
        F5A0C9ECA2CCEFA1CAEDA0C9ECA0C9ECA0C9ECA0C9ECACD7FB2735532E405E84
        90A3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C42524B5F7AA3D5
        FF9ACAF4789BBF8FBAE196C4EC94C1EA94C1EA95C3EB94C1EA2533502E405FB3
        BAC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B707F252B3F272F
        44252C43536E8D2530478EC2EE8BBCE88BBCE88EC0ED698FB5283755364965EA
        ECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A4AE2830452831
        472A334A2832492730474B678884BDEF7FB6E688C2F43244632C3D5B4C5D76FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E6E92D354A2932
        482B354C2A354D2B374F232D447EB6E888C3F84662852A38542F405DA0A8B5FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF555C6D2831
        472B354C2A354E2C384F2A334D4D6D8F3D53732835502C3C5A3E4E68FAFAFBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D5D92F38
        4E29334A2A354E2C384F2D385329364F2B39532B3A56394A63B4BAC4FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FA4
        AE36405627324B29364E2B36512A38532A385543526AA3AAB7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCCCFD4737B8A4B566B4A566B616C7F9299A7E4E6E9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = btnEditarClick
    end
    object btnImprimir: TSpeedButton
      Left = 209
      Top = 18
      Width = 100
      Height = 35
      Caption = '&Imprimir'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000130B0000130B00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAC4F0E7BFF1EABFF4EDBFF7F2C3F9F7C4FC
        FAC5FDFDC6FDFDC1FDFDBCFDFDBBFCF9B6F9F5B0F6F0ABF2E9A7EEE2A0E9DBAE
        EADCFCFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFCFD4EDAC017D8BC1CE2CB25EBDB41F6EC48FD
        F650FFFE52FFFF3DFFFF3CFFFD41FCF434F4E828EAD91CE0C911D6B900CAA74B
        D4B8FFFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFEFE95E8D826D9BD23E0C935EADA57F5EB5DFB
        F363FFF95CFFFC3DFEFA53FEF754F9F148F2E73BEAD92FE1CB1DD6BA09CBA86E
        DCC5FFFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEC2F0E62ED8BC1DDCC33EE9D665F3E76AF7
        EE6EFBF353FAF23DF9F067FAF25DF6EC51F0E245E9D62DDDC518D2B407C8A48F
        E2D0FFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0F5F039D7BB17D7BB4BE7D374F1E477F4
        E977F6ED3DF2E550F4E976F6ED67F2E65DEDDE46E4CF1BD6B916CFAE0BC8A3B4
        EBDEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F9F844D6BA10D2B45DE6D284F0E287F2
        E675F1E429E8D672F2E582F3E774EFE167EAD92EDABF14D0B01ACEAC25CEACCF
        F1E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4ED6BA0DCEAD72E6D394EFE197F1
        E454E6D32EE3CD95F2E68EF0E483EDDE54E1CB13CFAE15CDAB39D4B736D2B3E6
        F8F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F85CDBC10FCEAD8AEAD7A3F0E29EF0
        E12DDBC159E5D2ABF4E89DF1E37FE9D61FCFAF10CCA941D7BB52DBC14AD9BCF0
        F6F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCB8A8A8A
        6E6E6E7272727272727474747272728B828171D8C118D3B3A0EEDFB2F3E690EB
        D914D2B394EEDEB7F4E9A8F1E446D7BB08C9A43ED8BB71E3CD55DCC367E7CEA3
        A59E716E69797979797979797979787878767676858585C2C2C2A1A1A1535353
        4B4B4B4F4F4F4A4A4A4D4D4D545454342B28619E8E14AD8E86C8BB8FCABF49B5
        9D19AC8F98CBC291CBC062BBA7029D7815A98A58BCA94BB9A336B2995ABEA756
        514D211F18585858555555515151555555535353555555A1A1A1BAB8B8747273
        6465646767676061616969696666661F1B1C3C514A1C69544F79714F78701963
        4E366E60617D784F776F1A5D470B5A412E6B5E2C6C601D685913604C30604E25
        21221717166868686263636868686666666161616F6F6FB3B2B2CFCBCCA49FA0
        9F9B9BA29D9EA29F9FA5A1A2A29FA0A09D9DA19C9DA6A2A3AAA7A8AFACADB4B1
        B2BCB9B9C0BEBEC3C2C2C5C4C3C8C6C6C5C3C3BEBDBDB8B7B7B3B0B1ADA9A9A8
        A4A6A6A3A3A4A0A1A39FA0A4A0A19D989A9692939F999AC9C5C6D2CFD0ACA7A8
        B5B0B1C1BCBDC6C1C2C7C2C3CDC9CAD0CCCDD1CECFD7D2D3DDDADBE6E3E4F0ED
        EEFAF7F8FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFDF5F3F4EAE7E8DE
        DBDCD2CED0CAC6C8C5C0C1C2BEC0BFBABCB0ABACA8A2A3CCC8C9D7D5D5B0AAAC
        BEBABBCDCACACFCCCDC5C1C29F9A9A9C97989F9B9CA29D9EA4A1A1A8A4A5ADAA
        A9B3B0B0B9B5B5BDB9B9BEBBBABEBDBBBCB9B9B7B4B4B3B0B1AFACACA9A5A5A2
        9D9E9A9696948F8FADA9AAC6C3C4CAC6C7BDB8B9AEA9AAD0CCCDDBD9D9B8B3B5
        D5D2D2E2DFE0D8D4D6AEA9AA272220231D1A27201E28211E2D27252E28262821
        1F27211E2C26232A232029221F27201E261F1C251E1C251F1C251F1D26201D27
        201E26201E1C1613716C6BD5D2D3DBD9D9D4D1D2BAB5B6D4D2D2E0DEDFB8B3B5
        C2BEC0CAC6C7C7C3C4A49FA036302D3A33303E37333F383357504D5E5754473F
        3B443C38524B474039353E36334138354139363F36333D35313D35313C34313B
        343039322E2E27236F6A69C8C4C6C8C5C6C5C0C2B7B3B4D7D4D5EBEAEACBC9C9
        CECCCDD2D0D1DAD8D9D3D1D18B87867A75746C6764625C59746F6C6E68654740
        3D564F4B4F48453B34313E373447403C443C393F3734413936453D3A49423F4E
        4743514A474C46438E8989C3C0C1BDB9BBBBB8B9C4C1C2EBE9EAF3F2F3D9D6D8
        E0DDDEE4E1E3E8E6E7E9E6E79491907773716863606862607E79775A54514943
        3F59525038302E38312E4A434047403D3C35313D3532423C384A4441534C4A5C
        5654645E5C66615FB9B5B6DFDBDDD9D5D7D5D2D3D8D5D6F1F0F0FCFCFCE9E7E8
        E6E2E4EBE8E9EEEBEDF4F1F29A96956A66645F5A577A7573807B7949423F635D
        5A423A3738302D534D4A524C493C36323C3431433B384B4341554F4C615C596E
        69677A7674847F7DDAD6D7EDEAECE8E4E6E3DFE1E5E2E3F9F8F8FFFFFFF2F1F1
        E2DEE0E8E5E6ECE8E9F5F2F49D9998585452575250837E7C635E5B554F4C514B
        49312A27504B48534D4B37302D352F2C3B3431433C394D47445B55536A65637B
        76748B88869B9896E7E4E5EFECEDE9E6E7E3E0E1EBE9E9FEFEFEFFFFFFF9F8F8
        D7D3D5DEDBDCE2DFE0EDEAEB9D9999363331433F3D595654383431403C3A241F
        1C35302E3B3735241E1C221D1B26211F2B272434302D3F3B394E4A485F5B5A78
        737194908FAAA7A6F0EFEFF1EFF0EBE9E9E0DDDEF1F0F1FFFFFFFFFFFFFFFFFF
        DDDBDCD7D3D4DCD9DBE4E1E1AAA6A61715132D2A292C2827292625201C1B211E
        1C2723221D1A19201B19201C1B201C1B211E1C2622212C282733302F3936354C
        48466461618D8B8AE9E5E7E4E1E3E0DDDFDCDADAFCFCFCFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEFEFEFEFFFFFFE1E0E0A7A4A4BCBABABAB8B74944423C3634443E
        3C4842404D46444E48464D4745494341443F3C3D3836383230645F5EC4C2C2B6
        B4B4F8F8F8FBFBFBFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4544F4D57514E6861
        5E7A726F877F7B8C827F857C787C73706F67645B55524E49468A8684FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F64C494845403F504A
        495F59586762606761605F59575E58575652504A45443F3C3B898686FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F94F4C4B44403F4E49
        485E5958635D5C5C56555752515C57565651504A45443F3B3A8E8C8BFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB524D4D423E3D514C
        4B5F5A5A5F5A59514C4B5853525C575656514F4641403F3B3A959393FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE575352433F3D5A55
        536761605E595756504F655F5D625D5B55504E484341464240A29F9EFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF605B594B45426862
        60726B6860595669625F726B6969625F59524F56504D56504EADA9A8FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF605C5A4E48466C67
        646A63615A53517069676D67645B535058514E5D575456514EABA7A6FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF635E5C5A5552706A
        685C5552645D5B726B695E5755554D4B625C595C56544A4542A9A6A5FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF817D7B726E6D7F7A
        78706A678882807C777467605E75706D7772705F59574A4442BFBDBCFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
  end
  object dspConection: TDSProviderConnection
    ServerClassName = 'TsmLancDespesas'
    Connected = True
    SQLConnection = DM.SQLConnection
    Left = 168
    Top = 128
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspConsulta'
    RemoteServer = dspConection
    Left = 248
    Top = 116
    object cdsConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object cdsConsultaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object cdsConsultaDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object cdsConsultaCODSUBGRUPODESPSA: TIntegerField
      FieldName = 'CODSUBGRUPODESPSA'
    end
    object cdsConsultaSUBGRUPODESPSA: TStringField
      DisplayLabel = 'Subgrupo'
      FieldName = 'SUBGRUPODESPSA'
      Size = 100
    end
    object cdsConsultaVALOR: TFMTBCDField
      DisplayLabel = 'Valor R$'
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsConsultaCODGRUPODESPESA: TIntegerField
      FieldName = 'CODGRUPODESPESA'
    end
    object cdsConsultaGRUPODESPESA: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 100
      FieldName = 'GRUPODESPESA'
      Size = 100
    end
    object cdsConsultaCARNELEAO: TIntegerField
      DisplayLabel = 'Carne Le'#227'o'
      FieldName = 'CARNELEAO'
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 288
    Top = 117
  end
end