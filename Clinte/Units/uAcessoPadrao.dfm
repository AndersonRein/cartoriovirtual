object FAcessoCadPadrao: TFAcessoCadPadrao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Acesso ao Cadastro Padrao'
  ClientHeight = 475
  ClientWidth = 736
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object dbgCadastros: TDBGrid
    Left = 0
    Top = 0
    Width = 736
    Height = 355
    Align = alTop
    BiDiMode = bdLeftToRight
    Color = clBtnFace
    DataSource = dsConsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentBiDiMode = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = dbgCadastrosDblClick
  end
  object gpbCadastro: TGroupBox
    Left = 0
    Top = 355
    Width = 736
    Height = 60
    Align = alTop
    Caption = 'Bot'#245'es de acesso'
    Color = clSilver
    ParentBackground = False
    ParentColor = False
    TabOrder = 2
    object btbInserir: TBitBtn
      Left = 158
      Top = 17
      Width = 100
      Height = 35
      Caption = '&Inserir'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFCFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFBED2B8EDF3EBFFFFFFFFFFFFFFFFFFEBF2E9E8EEE6FFFFFFC9DBC3D8E3D4F9
        FAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFDFBF9FB
        F8AECCA5D2E7CCA3D1959ACC8C9CC292B4CBADE1E8DFA1B69BACC8A3FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2CDAB3FA12657B0
        4143A5293DA3223DA32242A428FBFDFBFFFFFFFFFFFFEBEFE9D0D9CDC4D1C0FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF7EEC0E1B9A8D69E6FB55F3EA6263EA6
        263EA6253EA5243EA5243DA423F9FCF8FFFFFFFFFFFFFFFFFFFFFFFFCAD8C6F1
        F7EFFBFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD1E3CE4AA73640AA2B40AA2A40A9293FA9298ACA
        7CCFE9C9CFE8C8CEE8C8CEE8C8F8FBF7FAFCFADCEAD9FFFFFFD1E7CB77BA663E
        A22385C473FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFC7D6C47BA2743FA82C41AC2D41AC2C40AB2C40AB2BA3D6
        99FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCDADDD976BD666DB95B3EA5253EA5243E
        A5243FA425DFF0DBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE9EEE8DAE4D8B3CDAF3FA62D42AE2F42AE2F41AD2E41AD2DA4D7
        9AFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF6F7F644AA2E3FA8283FA8273FA7273E
        A7263EA62697CF8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE7EEE6E9F1E85EAD5243B03243B03142B03142AF3042AF30A4D8
        9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF45AD3040AA2B40AA2A40A9293F
        A9293FA8285EB54AFAFCF9DAEDD6B4D9ABA0C797DEE8DBFFFFFFFFFFFFFFFFFF
        FFFFFFFBFDFBB3DBAE81C77743B13444B33444B23443B23343B13343B132A5D9
        9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF45AF3241AC2D41AC2C40AB2C40
        AB2B40AA2B40AA2A4BAD363FA9297BBF6BF1F7EFFFFFFFFFFFFFFFFFFFFFFFFF
        E1F0E06CBF6445B63945B63845B53845B53744B43644B43644B33544B334A5DA
        9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46B03542AE2F42AE2F41AD2E41
        AD2D41AC2D41AC2C40AB2C40AB2B53B240F4FAF2FFFFFFFFFFFFFFFFFFF7F9F7
        4B9A4446B83C46B83B47B83C4AB93E4AB83E49B83D49B73D49B73C49B63BA7DC
        A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4BB43B47B23647B13647B13546
        B03446B03445AF3241AD2E41AD2D41AC2DAFDBA6FFFFFFFFFFFFFFFFFFFEFEFE
        7EA17A40A83847BA3D75CB6DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCFEBCB42AF3042AF3042AE2F68BD58FFFFFFFFFFFFFFFFFFFFFFFF
        F1F5F13A993448BC4075CC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD0EBCC43B13343B13243B03242B031E8F5E6FFFFFFFFFFFFFFFFFF
        E9EFE9368032459F4075CA70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD0ECCC44B33544B33443B0333B9C2DD3E8D0FFFFFFFFFFFFFFFFFF
        FFFFFFF5F8F596C09476CD72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD0ECCD45B53845B53785C97CE5EFE3FEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF66A76472C66FFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD0EDCD46B73A45B639C9E8C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F8FAF8D4E6D4B2D2B2ADC2ACB2B2B2DBDBDBFEFEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFD1EDCE47B93C5FC056FBFDFBFFFFFFFFFFFFFFFFFFDEE8DEB1CFB1
        CADBCABFD3BFFFFFFFFFFFFFFFFFFF92B692A9E3A8A9E3A8A9E2A8A9E2A7D5F1
        D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAE1A7A8E0A5A8E0A5A8E0A4A8
        DFA4A7DFA48FD68A47BB3F6EC966F0F9EFFFFFFFFFFFFFFFFFFFD6E4D6F3F7F3
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E9E4E4CC74C4CC64B4CC64A4CC54AA9E3
        A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EC24A4AC04549C04449BF4349
        BF4349BE4249BE4148BD4148BD4063C65CDCF1DAFFFFFFFFFFFFE6F0E6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFC9E8C957C5594DC94E4DC94D4DC84D4DC84CA9E4
        A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FC44C4BC2474AC2464AC1464A
        C1454AC04549C04449BF434AB94472B06E428F3DB5D2B3FFFFFFF9FCF9FFFFFF
        FFFFFFFFFFFFF5FBF596D9984ECA514DC74F4CC54E4ECA504BC34C4DC84EAAE5
        AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF50C64E4BC4494BC4494BC3484A
        C2474AC2474AC2464BC147C9E7C8FFFFFFF4F7F4C6D5C5CFDBCEFFFFFFFFFFFF
        FFFFFFD0E7D162BC6548AB4C70B673A1CAA349B54C74C4767DBF7F4DC950AAE6
        ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF51C9504CC74C4CC74B62C6615F
        A05E46B74448BA4555C353FCFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        CDDCCEB2CEB4D6E6D7F8FBF8FFFFFFB1CCB293C995D6ECD753C4574DC952AAE7
        ACFFFFFFFFFFFFFEFEFEFBFBFBFEFEFEFFFFFF52CB534DC94E4DC84DC6E8C6EC
        F3EC70B06FA3C6A298BF97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAF0EAFFFFFF62AF6669CE6D69AA6BA1D9
        A4F7F7F7F7F7F7E6E6E6BCBCBCD0D0D0FEFEFE52CD554ECB505FCD60FBFDFBC9
        DAC9A8D0A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF519655D5ECD7DFEADFBBCC
        BB7CA67FD6E4D7F8F8F8FFFFFF9EB49F76CF7A50CE544FCD5380DA83FFFFFFEB
        F1EBB9CEB9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3EBE4FFFFFFFFFFFFFFFF
        FFE6EDE6FFFFFFFFFFFFFFFFFFCFDDD042AC4750D05650CF5552CF56DBF4DCFF
        FFFFB4C8B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFC49964E4FCD5650D05750D057BCEABFFF
        FFFFCFDBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9CFBB89B58B72AC755EA763E2F2E3FF
        FFFFEDF1EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 0
    end
    object btbAlterar: TBitBtn
      Left = 260
      Top = 17
      Width = 100
      Height = 35
      Caption = '&Alterar'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1E2E2E2E3E3E3E3E3E3E2E2
        E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
        E2E2ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9E9E5353535C5C5C6C6C6C6767
        675C5C5C5454544E4E4E4A4A4A4E4E4E5555555D5D5D6767676B6B6B59595953
        53539B9B9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFCFCFC
        EFEFEFE9E9E9E9E9E9E9E9E9E9E9E9EEEEEE8F8F8F1818181616162626263939
        393737373636363636363535353636363636363838383A3A3A27272716161618
        1818A0A0A0EDEDEDE9E9E9E9E9E9E9E9E9EAEAEAF6F6F6FFFFFFFFFFFFF8F8F8
        E5E5E5DBDBDBDCDCDCDADADADADADAD7D7D7CCCCCC4A4A4A3636362F2F2F2D2D
        2D3636363939393939393939393939393939393636362B2B2B2E2E2E3737375D
        5D5DD0D0D0D8D8D8DBDBDBDEDEDEDBDBDBDFDFDFF1F1F1FFFFFFFFFFFFFEFEFE
        F7F7F7F4F4F4F3F3F3F3F3F3F3F3F3F2F2F2F9F9F9AFAFAF5A5A5A4D4D4D1A1A
        1A1515151313131313131313131313131313131515151B1B1B505050565656C7
        C7C7F5F5F5F0F0F0F1F1F1F1F1F1F1F1F1F5F5F5FDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFED5D5D5D2D2D2C2C2
        C23D3D3D1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B424242C9C9C9D1D1D1DBDBDBFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF6363633F3F3F3B3B3B3B3B3B3B3B3B3F3F3F6C6C6CFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB
        8484847878787878788989899C9C9CA2A2A29E9E9E9595958B8B8D8586867B7C
        7C5556564B4B4B4A4A4A4848484B4B4B4C4C4C5757577E7E7E8686868D8E8E97
        98989F9F9FA2A2A29B9B9B868686767676797979878787C1C1C1FFFFFF5F5F5F
        0606060005060005060005060003060002070002060002060002060002060001
        0600000022282C878E8F848B8C868D8E21282900000000040600050600050600
        05060005060005060005060005060005060005060606066E6E6EFFFFFF717273
        0F0A0A480F05531005510E055A1C04632904632903632903642A03642B03642B
        036228026426117C3A317C3B317D3C315D1B10510F0452100552100552100552
        1005511005511005511005521005531005440F060C0A0A7F8181FFFFFF7B7E7E
        1811108C1805A51903A92203C74E00CD5600CC5500CC5500CC5500CC5500CC55
        00CD5600C64D00AF2F009C1400990E00A11801A31A03A31A03A31A03A31A03A3
        1A03A31A03A31A03A31A03A31A03A71A038618051310108C8E8EFFFFFF898B8B
        1916158318069D1703B13A01C35300C25100C25100C35100C25100C25100C251
        00C25100C35200C55500BB4600A223039916039B19039C19039C19039C19039C
        19039C19039C19039C19039C1903A019037F1807151516969898FFFFFF949696
        1D1C1C821A08A01A01B84300BF4D00BF4D00C04E00C15000C25100C25100C251
        00C25100C25100C25100C45400BF4D00A629039A17039C1A039C1A039C1A039C
        1A039C1A039C1A039C1A039C1A03A01A027D1A09181C1DA0A2A2FFFFFF9FA0A0
        202021842213A92E18B23A00BA4501BB4701BD4900BE4B00BF4D00C04E00C14F
        00C15000C25100C25100C25100C35300C04F00A629039B18039D1A039D1A039D
        1A039D1A039D1A039D1A039D1A03A11A027B1C0B1C2224ACADADFFFFFFAAAAAA
        232627852717B44C3EAC391CB23800B53E02B74103B94302BB4701BC4801BD4B
        00BE4C00C04D00C14F00C25000C25100C45300C04D00A424039D19039E1B039E
        1B039E1B039E1B039E1B039E1B03A21B027A1E0E22292AB5B5B5FFFFFFB5B6B6
        282D2E852A1ABA5849B5584CAF3F1FAE3100B13602B33A03B53D03B74003B943
        03BA4502BC4801BD4A00BE4B00BF4D00C14E00C35200BB4601A11F03A01C03A0
        1D03A01D03A01D03A01D03A01D03A41C02792212293031C0C0C0FFFFFFBCBDBD
        2F3435842E1EBE6052BC6659BA6052B24326AA2A00AD2E01AF3303B13603B339
        03B43B03B63D03B74003BA4302BB4601BD4801BE4A00C14F00B238029F1B03A0
        1B03A11D03A21E03A21E03A21E03A51D02782615313839C9C9C9FFFFFFC7C9C9
        363B3C843221C36A5AC27164C06C5FBF695BB44931A82502A82500AA2A03AF31
        03B53A03B94202BE4902C14E02C35101C55401C55401C55500C45300B43902AC
        2D02A82603A31F03A21D03A31E03A71F01772A1A394042CFD0D0FFFFFFCFD0D0
        3E4344843724C97464C97D71C6776AC47466C37163B85440B03308B93F00C250
        00C75700C95B00C95B00CA5C00CA5C00CA5C00CA5C00CB5D00CB5E00CB5E00C8
        5900C45300BD4901B43A02AB2903A82001782E1F3E4546D5D5D5FFFFFFD5D5D5
        44494B853C29CE7E6DD08A7DCC8476CB7F71CE816CD58C6BD58351CD671BC856
        00C75400C75600C85800C85900C85A00C95A00C95A00C95B00CA5B00CA5B00C9
        5A00C95B00CA5C00C95C00C65500BE41007D3A25444B4EDDDDDDFFFFFFDADADC
        474D4E86402DD38776D6968AD39182D5917DD99578DA9474DA9473D98F69D37D
        4ACE6825CA5C0DC95500C85500C85500C85600C85700C95800C95900C95A00C9
        5A00C85900C85900C85900C95B00CE5C008952284D5257E1E1E1FFFFFFE0E0E0
        505657884531D98F7DDCA396DB9E8EDB9C8ADA9984DA9780DA957BDA9477DA94
        76DA9270D88860D67E4DD37539D06C28CE651BCD6111CC5E09CA5A03C95800C9
        5800C85700C95800C95900C95900CD59008A562E565D62E7E8E8FFFFFFE5E5E5
        595E608A4A35DE9783E1AEA1DFA79ADEA495DDA090DC9D8CDC9A86DB9882DB96
        7DDB9478DB9376DC9273DC906FDC8E69DB8C64DA8759D8824ED67D43D57738D2
        6F29CF6516CC5D06CA5800CA5900CE5A00895A3660686DEDEDEDFFFFFFE8E9E9
        63686B8B4F3AE29E89E7B9ACE5B2A4E4AFA0E2AB9CE1A798E0A393DF9F8EDE9C
        8ADD9984DC9680DD947BDD9276DD9071DD8E6CDD8C68DD8C64DC8B61DC895CDB
        8756DA8450D87C42D36D25CD5B03CF5A00895E3D686F75F1F1F1FFFFFFEEEEEE
        6C72748D543EE6A58FEBC3B8E9BCAEE8B9AAE7B5A6E7B2A2E6AE9DE4AA9AE3A6
        95E1A290E09F8CDF9B87DE9982DE957DDD9378DD9173DD8F6EDD8D6ADD8B65DD
        8A60DD885BDD8758DC8655D87637D35B038B614272797FF6F6F6FFFFFFF1F1F1
        737A7D905940ECAB92F1CDC1EFC6B8EEC3B5EDC0B1ECBDACEBB9A8EAB6A4EAB2
        9FE9AE9BE8AB97E6A792E6A38DE5A089E39C84E3997FE2967AE29375E29170E1
        8F6BE18D66E18B61E18A5CE18A5CDD6A1D8C6347798086FAFAFAFFFFFFF5F5F6
        788084956043F5B99CF8DCD2F6D5C9F6D2C5F5D0C2F5CDBEF4CABAF4C7B6F3C4
        B1F3C1ADF2BDA9F1BAA4F1B6A0F0B39BF0AF96EFAB91EEA88CEEA486EDA182EC
        9E7CEC9B77EC9972EC966DEB966CE972288D674D7F878CFEFEFEFFFFFFFAFBFB
        7E878E9D6746FFAD7AFFCBABFFC5A4FFC3A1FFC29FFFC09CFFBE99FFBC96FFB9
        93FFB78FFFB58CFFB288FFB085FFAD81FFAB7DFFA879FFA575FFA271FF9F6DFF
        9C69FF9A64FF9760FF955DFF945BFD711B946D53869094FFFFFFFFFFFFFDFDFD
        80868A947867CE763ECB7844CB7844CB7843CB7843CB7743CB7743CB7743CB77
        43CB7742CB7742CB7742CB7742CB7641CB7641CB7641CB7640CB7640CB7540CB
        753FCB753FCB753FCB753FCC743FCB723A917D718B9093FFFFFFFFFFFFFFFFFF
        B0B0B098999B92999C92979A92999C92999C92999C92999C92999C92999C9299
        9C92999C92999C92999C92999C92999C92999C92999C92999C92999C929A9C92
        9A9C929A9C929A9E929A9E929A9E949A9F989A9BB7B7B7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 1
    end
    object btbExcluir: TBitBtn
      Left = 362
      Top = 17
      Width = 100
      Height = 35
      Caption = '&Excluir'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000130B0000130B00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFFFF
        FFFEFEFEFCFCFCFBFBFBFBFBFBFBFBFBFDFDFDFEFEFEFDFDFDFEFEFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBFAFAFAF6F6F6EAEAEADBDB
        DBD0D0D0CACACAC6C6C6C6C6C6C9C9C9CFCFCFD9D9D9E7E7E7F2F2F2F6F6F6F8
        F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFDFDF5F5F5F1F1F1DBDBDBB0B1B18A8B8A7E807F8184
        838A8D8C8E92918E918F8B8E8C8789878083817B7E7C7A7C7B878888ADAEAED5
        D5D5EAEAEAEFEFEFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAFAFAEDEDEDE2E2E29D9D9D7D807F9CA09EC1C4C3D3D6D4D9DD
        DBDFE3E1E2E7E4DCE2DFD3D9D5CBD1CEC4C9C6BCC1BEB2B6B39EA3A07F848272
        74739A9A9ADBDBDBE5E5E5F3F3F3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFCFCFCF1F1F1E5E5E5909190A3A6A5CDD0CEC5CAC7BDC3C0BEC5C1C5CC
        C8CAD1CDCED5D1C6CDC9C6CDC9B8BFBBB0B8B4AAB0ACA4AAA6A1A7A4A1A6A39A
        9F9C7B7F7D8B8D8CDEDEDEE8E8E8F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFBFBFBF4F4F4D5D5D5898C8AC8CBCAA3A9A6B0B6B3B8BEBBB7BDBAD2D6
        D3E4E8E6C4CAC7AEB3AFD5D9D7C7CDCA989E9B9FA3A1A8ADAA959B988D928F8B
        918E9297946E7270CDCDCDEBEBEBF8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFDFDFDF8E8F8EBFC3C2A2A7A4C4C7C5D3D6D5B4B9B7C8CC
        CAEDF0EEC0C6C3A5AAA7CED2CFCCD0CE848986979B99AAAFAC8085837C807D8C
        918E8C918F6D716ED8D8D8F9F9F9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFEEEEEE8B8E8DD0D3D2A7ABA9C1C4C2D8DCD9B6BBB8C7CB
        C9E9ECEAC0C6C3A6ACA9CCD0CEC8CDCB858A87969A98A5AAA77C817F75797788
        8C8A878C896D726FECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F4919492D0D3D2A6ABA9C0C3C1D6D9D7B6BBB8C8CC
        CAE7EAE8C0C6C3A7ACA9CACECCC6CBC9858A87959A97A4A9A67D828075797783
        88867D817F747876F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F4909392CED0D0A6AAA8C0C3C1D4D8D5B6BBB9C8CC
        CAE5E8E7C0C6C2A7ACA9C8CDCAC4CAC6858A87959997A4A9A67D828075797782
        8784767A77727674F4F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F4909392CCCFCEA5AAA7BFC2C0D2D6D4B6BBB9C8CC
        CAE3E7E5BFC5C2A7ADAAC6CAC8C2C7C4848A86959996A4A9A67D828075797782
        8684747875727674F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F4919392CACCCCA4A9A7BFC2C0D1D4D2B6BBB9C9CD
        CBE3E7E5BFC5C2A8ADAAC4C9C6BFC6C2848986949895A3A8A57E828075797782
        8684747875727674F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F4919392CACCCBA4A9A7BEC0BFCFD3D1B6BBB9C9CD
        CBE3E7E5BFC5C2A8ADAAC4C9C6BDC4C0848986949895A3A8A57D828075797782
        8684747875727674F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F4919493CBCECDA4A9A6BDC0BECDD1CFB6BBB9C9CD
        CBE3E6E5BFC5C2A8ADAAC3C8C5BCC3BF848986939795A2A7A57D828075797782
        8684747875727674F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F4919493CBCECDA4A9A6BDC0BECCD0CEB6BBB9C9CD
        CBE3E6E5BFC5C2A8ADAAC3C8C5BCC3BF838885929694A2A7A47D828075797782
        8684747875727674F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F4919493CBCECDA4A8A6BCBFBDCDD1CEB7BDBACBCF
        CDE4E8E6C0C6C3A9AEABC4C9C6BDC4C0848986939795A3A8A57E838175797782
        8684747875727674F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F4919493CBCECDA4A8A6BCBFBDC7CBC9AFB3B1BDC0
        BECDD1D0A7ACA98E9390A7ABA9A3A9A6727774848785989D9A7A7E7C74787682
        8684747875727674F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F4919493CCCFCE9FA3A2A5A8A69A9E9C7C807E8184
        828386847276756A6E6C7175737074725E62606468676E72705F63606568677A
        7E7C727674727674F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F4949696B9BCBB777C7A808482979A99AEB1B0C7CA
        C8D3D5D4D7D9D8D4D8D6CED1D0C5C7C6BCBEBDABAEAD9698977F8281686B6A62
        6664696D6B727674F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F4F47276748E9190B4B7B6D0D3D2DBDEDDDFE2E1E2E5
        E4E5E8E7DEE1E0D5D9D7CDD1D0C6C9C8BEC2C0B8BCBAB5B9B7B1B4B3A7ABAA8F
        93916E7271646866F4F5F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCFCFCF8C908ECCCFCEC4C7C6C2C6C5CED1D0DCDFDEE8EB
        E9EEF0F0ECEEEDE8EAE9E3E4E4DBDDDCD1D4D3C6C9C7B7BAB9A7ABAA9CA09E9B
        9E9D9A9D9C717472CFD0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9B9D9CC2C5C4B6BAB9C9CDCCE3E5E4EFF0F0F1F2F1EFF1
        F0ECEEEDE9EBEBE5E7E6DFE3E2DADEDCD6DAD8D0D5D3CBD0CFC4C9C7B7BCBAA3
        A8A69195938E9190989A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF939694CDCFCEE8E9E9FAFAFAF7F8F7EFF1F0EDEFEEF0F2
        F1F0F1F0EBEDECE3E6E5DDE0DFD6DBD8CED3D0C4C9C6B9C0BDB7BEBBBBC2BFBD
        C3C0B1B7B5989B9A8F9291FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF969998F2F2F2FFFFFFF3F4F4EDEFEEEAECEBE7E9E8D8DA
        D9CFD2D1C6CAC8BCC1BFB7BCBAB5BAB8B2B8B6AFB6B3B4BBB8B7BEBBB6BDBAB5
        BDBABAC1BEB6BCBA949795FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB9BABADEDFDFFFFFFFEEEFEFE7E9E8E0E3E2DDDEDEE1E1
        E1B8BAB99DA09E9499978D92908B908EACB1AFD9DBD9B5BAB8ADB4B1B6BDBAB8
        BFBCC3CAC7A1A6A4B6B7B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFDFDFDA5A6A6C9CBCAF2F4F4F0F3F2E1E4E3DCDFDEEEF2
        F1DBDCDC888C8A787C7A7276757C817FD2D4D3BABFBDA7ADABB9C0BDC3C9C6BC
        C2BF959A97999A99FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEC2C3C29D9F9EABAFADCFD2D1D9DCDBD8DC
        DBF1F3F3DADCDCAFB1B0AEB1AFD5D6D6D1D6D5B6BCBABAC0BEAAAEAC8D918F89
        8C8AC2C4C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEE2E3E3BABCBCA0A3A29497
        94A9ACABFCFDFDFFFFFFF5F7F6D9DEDC898F8C8B8E8CA2A3A2BCBEBDE5E6E5FE
        FEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF989998A7AAA9EAEAEBD7DAD9909593A2A4A2FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCACCCB9A9D9B999D9CC8CAC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 2
    end
    object btbSair: TBitBtn
      Left = 464
      Top = 17
      Width = 100
      Height = 35
      Caption = '&Sair'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000232E0000232E00000000000000000001FFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFDF3F3F3DFDFDFD5D5D5E4E4E4F7F7F7FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        FEFEF7F7F7E4E4E4D5D5D5DFDFDFF3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFDFDFDF3F3F3898ED30C17C49799BCC8C8C8E3E3E3F7F7F7FEFEFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7
        F7F7B8B8DB0D0DBF7474BBC3C3C3DCDCDCF3F3F3FDFDFDFFFFFFFFFFFFFFFFFF
        FDFDFDF3F3F3898ED3000DC6091FD40B16C29597B9C8C8C8E3E3E3F7F7F7FEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7B8
        B8DB0D0DBF0000CE0000BE7171B8C3C3C3DCDCDCF3F3F3FDFDFDFFFFFFFDFDFD
        F3F3F3898FD4000EC7223FEA3855FE0F28DA0B16C29597B9C8C8C8E3E3E3F7F7
        F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7B8B8DB0D
        0DBF0000D70000FE0000E60000BE7171B8C3C3C3DCDCDCF3F3F3FFFFFFF7F7F7
        8B92D70011C92848EB4361FE3D5BFE3855FE0F28DA0B16C29597B9C8C8C8E3E3
        E3F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7B8B8DB0D0EBF00
        00D70000FE0000FE0000FE0000E60000BE7171B8C3C3C3DFDFDFFFFFFF98A0E4
        0015CB2E50EB4E6CFE4866FE4361FE3D5BFE3855FE0F28DA0B16C29597B9C8C8
        C8E3E3E3F7F7F7FEFEFEFFFFFFFFFFFFFEFEFEF7F7F7B8B8DB0D0EBF0001D700
        00FE0000FE0000FE0000FE0000FE0000E60000BE7474BBD5D5D5FFFFFF1026CF
        1031D85977FE5371FE4E6CFE4866FE4361FE3D5BFE3855FE0F28DA0B16C29597
        B9C8C8C8E3E3E3F7F7F7FEFEFEFEFEFEF7F7F7B8B9DC0D10C00003D70000FE00
        00FE0000FE0000FE0000FE0000FE0000FE0000CE0D0DBFE4E4E4FFFFFFCED2F4
        0F25CE1A3DDF5977FE5371FE4E6CFE4866FE4361FE3D5BFE3855FE0F28DA0B16
        C29597B9C8C8C8E3E3E3F6F6F6F6F6F6B8B9DC0D11C10109D70209FE0003FE00
        00FE0000FE0000FE0000FE0000FE0000D70D0DBFB8B8DBF7F7F7FFFFFFFFFFFF
        CED2F40F25CE1A3DDF5977FE5371FE4E6CFE4866FE4361FE3D5BFE3855FE0F28
        DA0B16C29597B9C8C8C8DDDDDDB3B4D70D13C20411D80B1AFE0612FE0209FE00
        03FE0000FE0000FE0000FE0000D70D0DBFB8B8DBF7F7F7FEFEFEFFFFFFFFFFFF
        FFFFFFCED2F40F25CE1A3DDF5977FE5371FE4E6CFE4866FE4361FE3D5BFE3855
        FE0F28DA0B16C29597B99C9DC10C14C20717D81429FE0F21FE0B1AFE0612FE02
        09FE0003FE0000FE0001D70D0EBFB8B8DBF7F7F7FEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCED2F40F25CE1A3DDF5977FE5371FE4E6CFE4866FE4361FE3D5B
        FE3855FE0F28DA0B16C20B14C20A1ED91D36FE192FFE1429FE0F21FE0B1AFE06
        12FE0209FE0003D70D0EBFB8B8DBF7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFCED2F40F25CE1A3DDF5977FE5371FE4E6CFE4866FE4361
        FE3D5BFE3855FE0F28DA0D23DA2844FE233DFE1D36FE192FFE1429FE0F21FE0B
        1AFE0109D70D10C0B8B8DBF7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCED2F40F25CE1A3DDF5977FE5371FE4E6CFE4866
        FE4361FE3D5BFE3855FE3350FE2E4AFE2844FE233DFE1D36FE192FFE1429FE04
        11D80D11C1B8B9DCF7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED2F40F25CE1A3DDF5977FE5371FE4E6C
        FE4866FE4361FE3D5BFE3855FE3350FE2E4AFE2844FE233DFE1D36FE0717D80D
        13C2B8B9DCF7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED2F40F25CE1A3DDF5977FE5371
        FE4E6CFE4866FE4361FE3D5BFE3855FE3350FE2E4AFE2844FE0A1ED90C14C2B3
        B4D7F6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEC8CCEE0E24CD1A3DDF5977
        FE5371FE4E6CFE4866FE4361FE3D5BFE3855FE3350FE0D23DA0B14C29C9DC1DD
        DDDDF6F6F6FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7B8BCDF0D24CD1D41E05E7C
        FE5977FE5371FE4E6CFE4866FE4361FE3D5BFE3855FE0F28DA0B16C29597B9C8
        C8C8E3E3E3F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF7F7F7B8BDDF0D28D02047E16886FE6381
        FE5E7CFE5977FE5371FE4E6CFE4866FE4361FE3D5BFE3855FE0F28DA0B16C295
        97B9C8C8C8E3E3E3F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFEF7F7F7B8BEDF0D2AD2224CE2738FFE6D8AFE6886
        FE6381FE5E7CFE5977FE5371FE4E6CFE4866FE4361FE3D5BFE3855FE0F28DA0B
        16C29597B9C8C8C8E3E3E3F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEF7F7F7B8BEE00D2DD42651E37D99FE7894FE738FFE6D8A
        FE6886FE6381FE5E7CFE5977FE5371FE4E6CFE4866FE4361FE3D5BFE3855FE0F
        28DA0B16C29597B9C8C8C8E3E3E3F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEF7F7F7B8BFE00D30D62856E587A1FE829DFE7D99FE7894FE738F
        FE6D8AFE6886FE2247E22144E25977FE5371FE4E6CFE4866FE4361FE3D5BFE38
        55FE0F28DA0B16C29597B9C8C8C8E3E3E3F7F7F7FEFEFEFFFFFFFFFFFFFFFFFF
        FEFEFEF7F7F7B8C0E10D33D82C5BE791AAFE8CA5FE87A1FE829DFE7D99FE7894
        FE738FFE2047E10D24CD0E24CD1A3DDF5977FE5371FE4E6CFE4866FE4361FE3D
        5BFE3855FE0F28DA0B16C29597B9C8C8C8E3E3E3F7F7F7FEFEFEFFFFFFFEFEFE
        F7F7F7B8C0E10D35DB2F60E89AB1FE96AEFE91AAFE8CA5FE87A1FE829DFE7D99
        FE224CE20D28D0B8BCDFC8CCEE0F25CE1A3DDF5977FE5371FE4E6CFE4866FE43
        61FE3D5BFE3855FE0F28DA0B16C29597B9C8C8C8E3E3E3F7F7F7FFFFFFF9F9F9
        B9C2E30D39DD3165EAA3B9FE9FB5FE9AB1FE96AEFE91AAFE8CA5FE87A1FE2651
        E30D2AD2B8BDDFF7F7F7FEFEFECED2F40F25CE1A3DDF5977FE5371FE4E6CFE48
        66FE4361FE3D5BFE3855FE0F28DA0B16C29597B9C8C8C8E4E4E4FFFFFFC6D0F0
        0D3DDF346AECACC0FEA8BDFEA3B9FE9FB5FE9AB1FE96AEFE91AAFE2856E50D2D
        D4B8BEDFF7F7F7FEFEFEFFFFFFFFFFFFCED2F40F25CE1A3DDF5977FE5371FE4E
        6CFE4866FE4361FE3D5BFE3855FE0F28DA0B16C29799BCD5D5D5FFFFFF0F43E5
        205CEAB5C7FEB1C4FEACC0FEA8BDFEA3B9FE9FB5FE9AB1FE2C5BE70D30D6B8BE
        E0F7F7F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFCED2F40F25CE1A3DDF5977FE53
        71FE4E6CFE4866FE4361FE3D5BFE3855FE091FD40C17C4DFDFDFFFFFFF9EB3F4
        0037E56694F5B5C7FEB1C4FEACC0FEA8BDFEA3B9FE2F60E80D33D8B8BFE0F7F7
        F7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED2F40F25CE1A3DDF59
        77FE5371FE4E6CFE4866FE4361FE223FEA000DC6898ED3F3F3F3FFFFFFFFFFFF
        9EB3F40037E56694F5B5C7FEB1C4FEACC0FE3165EA0D35DBB8C0E1F7F7F7FEFE
        FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED2F40F25CE1A
        3DDF5977FE5371FE4E6CFE2848EB000EC7898ED3F3F3F3FDFDFDFFFFFFFFFFFF
        FFFFFF9EB3F40037E56694F5B5C7FE346AEC0D39DDB8C0E1F7F7F7FEFEFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCED2F40F
        25CE1A3DDF5977FE2E50EB0011C9898FD4F3F3F3FDFDFDFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9EB3F40037E5205CEA0D3DDFB9C2E3F7F7F7FEFEFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCE
        D2F40F25CE1031D80015CB8C93D8F3F3F3FDFDFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9EB3F40F43E5C6D0F0F9F9F9FEFEFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFCED2F43F51D899A1E5F8F8F8FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      TabOrder = 3
      OnClick = btbSairClick
    end
  end
  object gpbBuscar: TGroupBox
    Left = 0
    Top = 415
    Width = 736
    Height = 60
    Align = alTop
    Caption = 'Buscar'
    Color = clSilver
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object lbNomeBuscar: TLabel
      Left = 12
      Top = 33
      Width = 35
      Height = 13
      Caption = 'Nome.:'
    end
    object edNomeBuscar: TEdit
      Left = 53
      Top = 24
      Width = 285
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edNomeBuscarKeyPress
    end
  end
  object dsConsulta: TDataSource
    DataSet = cdsConsulta
    Left = 648
    Top = 72
  end
  object cdsConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 648
    Top = 8
  end
  object dspConection: TDSProviderConnection
    Connected = True
    SQLConnection = DM.SQLConnection
    Left = 552
    Top = 8
  end
end