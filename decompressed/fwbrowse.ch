#define GRID_MOVEUP       0
#define GRID_MOVEDOWN     1
#define GRID_MOVEHOME     2
#define GRID_MOVEEND      3
#define GRID_MOVEPAGEUP   4
#define GRID_MOVEPAGEDOWN 5
#define GRID_WHEELUP      10
#define GRID_WHEELDOWN    11

#define CONFIG_BROWSE     1
#define CONFIG_COLUMN     2
#define CONFIG_SAVE       3
#define CONFIG_RESTORE    4

// Alinhamentos das Colunas
#define COLUMN_ALIGN_CENTER 0
#define COLUMN_ALIGN_LEFT   1
#define COLUMN_ALIGN_RIGHT  2


#xcommand DEFINE FWBROWSE <oFWBrowse> ;
	[ <lDataArray: DATA ARRAY> ] ;
	[ <lDataText : DATA TEXT>  ] ;
	[ <lDataQuery: DATA QUERY> ] ;
	[ <lDataTable: DATA TABLE> ] ;
	[ <lShowLimit: SHOWLIMIT> ] ;
	[ ALIAS <cAlias> ] ;
	[ DOUBLECLICK <bLDblClick> ] ;
	[ LINEOK <bLineOk> ] ;
	[ ALLOK <bAllOK> ] ;
	[ CHANGE <bChange> ] ;
	[ DELETE <bDelete> ] ;
	[ DELOK <bDelOK> ] ;
	[ SUPERDEL <bSuperDel> ] ;
	[ EDITCELL <bValidEdit> ] ;
	[ GROUP <bGroup> ] ;
	[ <lInsert: INSERT> ] ;
	[ <lNoLocate: NO LOCATE> ] ;
	[ LOCATE <bLocate> ] ;
	[ <lNoSeek: NO SEEK> ] ;
	[ SEEK ACTION <bActionSeek> ] ;
	[ SEEK ORDER  <aOrderSeek> ] ;
	[ <lUseFilter: FILTER> ] ;
	[ FILTERFIELDS <aFilterFields> ] ;
	[ <lNoConfig: NO CONFIG> ] ;
	[ <lNoReport: NO REPORT> ] ;
	[ <lNoSave: NO SAVE CONFIG> ] ;
    [ <color: COLOR, COLORS> <nClrFore> [,<nClrBack>] ] ;
	[ ALTERNATE COLOR <nClrAlterRow> ] ;
	[ FONT <oFont> ] ;
	[ LINE HEIGHT <nLineHeight> ] ;
	[ ARRAY <aArray> ] ;
	[ FILE <cFile> ] ;
	[ QUERY <cQuery> ] ;
	[ INDEXQUERY <aIndex> ] ;
	[ FILTERDEFAULT <cFilterDefault> ] ;
	[ <filtertopbot: FILTERTOPBOT> <cCpoFil>, <cTopFun>, <cBotFun> ] ;
	[ LINE BEGIN <nLineBegin> ] ;
	[ DESCRIPTION <cDescription> ] ;
	[ SEPARATOR <cCharSeparator> ] ;
	[ <lNumberLegend: LEGEND NUMBER> ] ;
	[ <lShowLimit: SHOWLIMIT> ] ;
	[ PROFILEID <cProfileID> ] ;
	OF <oOwner>;
	=> ;
		<oFWBrowse> := FWBrowse():New(<oOwner>);;
		If <.lDataArray.>;;
			<oFWBrowse>:SetDataArray(<.lDataArray.>);;
		EndIf;;
		If <.lDataText.>;;
			<oFWBrowse>:SetDataText(<.lDataText.>);;
		EndIf;;
		If <.lDataQuery.>;;
			<oFWBrowse>:SetDataQuery(<.lDataQuery.>);;
		EndIf;;
		If <.lDataTable.>;;
			<oFWBrowse>:SetDataTable(<.lDataTable.>);;
		EndIf;;
		If <.lShowLimit.>;;
			<oFWBrowse>:SetShowLimit(<.lShowLimit.>);;
		EndIf;;
		If( ValType(<cAlias>) == "C" );;
			<oFWBrowse>:SetAlias(<cAlias>);;
		EndIf;;
		If( ValType(<bLDblClick>) == "B" );;
			<oFWBrowse>:SetDoubleClick(<bLDblClick>);;
		EndIf;;
		If( ValType(<bLineOk>) == "B" );;
			<oFWBrowse>:SetLineOk(<bLineOk>);;
		EndIf;;
		If( ValType(<bChange>) == "B" );;
			<oFWBrowse>:SetChange(<bChange>);;
		EndIf;;
		If( ValType(<bAllOK>) == "B" );;
			<oFWBrowse>:SetAllOK(<bAllOK>);;
		EndIf;;
		If( ValType(<bDelete>) == "B" );;
			<oFWBrowse>:SetDelete(.T.,<bDelete>);;
		EndIf;;
		If( ValType(<bDelOK>) == "B" );;
			<oFWBrowse>:SetDelOK(<bDelOK>);;
		EndIf;;
		If( ValType(<bSuperDel>) == "B" );;
			<oFWBrowse>:SetSuperDel(<bSuperDel>);;
		EndIf;;
		If( ValType(<bValidEdit>) == "B" );;
			<oFWBrowse>:SetEditCell(.T.,<bValidEdit>);;
		EndIf;;
		If( ValType(<bGroup>) == "B" );;
			<oFWBrowse>:SetGroup(<bGroup>);;
		EndIf;;
		If <.lInsert.>;;
			<oFWBrowse>:SetInsert(<.lInsert.>);;
		EndIf;;
		If !<.lNoLocate.> .And. (<.lDataArray.> .Or. <.lDataQuery.> .Or. <.lDataTable.> .Or. <.lDataText.>);;
			<oFWBrowse>:SetLocate([<bLocate>]);;
		EndIf;;
		If !<.lNoSeek.>;;
			<oFWBrowse>:SetSeek([<bActionSeek>],[<aOrderSeek>]);;
		EndIf;;
		If <.lNoConfig.>;;
			<oFWBrowse>:DisableConfig();;
		EndIf;;
		If <.lNoReport.>;;
			<oFWBrowse>:DisableReport();;
		EndIf;;
		If <.lNoSave.>;;
			<oFWBrowse>:DisableSaveConfig();;
		EndIf;;
		If( ValType(<nClrFore>) == "N" );;
			<oFWBrowse>:SetForeColor(<nClrFore>);;
		EndIf;;
		If( ValType(<nClrBack>) == "N" );;
			<oFWBrowse>:SetBackColor(<nClrBack>);;
		EndIf;;
		If( ValType(<nClrAlterRow>) == "N" );;
			<oFWBrowse>:SetClrAlterRow(<nClrAlterRow>);;
		EndIf;;
		If( ValType(<oFont>) == "O" );;
			<oFWBrowse>:SetFontBrowse(<oFont>);;
		EndIf;;
		If( ValType(<nLineHeight>) == "N" );;
			<oFWBrowse>:SetLineHeight(<nLineHeight>);;
		EndIf;;
		If( ValType(<nLineBegin>) == "N" );;
			<oFWBrowse>:SetLineBegin(<nLineBegin>);;
		EndIf;;
		If( ValType(<aArray>) == "A" );;
			<oFWBrowse>:SetArray(<aArray>);;
		EndIf;;
		If( ValType(<cFile>) == "C" );;
			<oFWBrowse>:SetFile(<cFile>[,<cCharSeparator>]);;
		EndIf;;
		If( ValType(<aIndex>) == "A" );;
			<oFWBrowse>:SetQueryIndex(<aIndex>);;
		EndIf;;
		If <.lShowLimit.>;;
			<oFWBrowse>:SetShowLimit(<.lShowLimit.>);;
		EndIf;;
		If( ValType(<cQuery>) == "C" );;
			<oFWBrowse>:SetQuery(<cQuery>);;
		EndIf;;
		If( ValType(<aFilterFields>) == "A" );;
			<oFWBrowse>:SetFieldFilter(<aFilterFields>);;
			<oFWBrowse>:SetUseFilter();;
		ElseIf <.lUseFilter.>;;
			<oFWBrowse>:SetUseFilter();;
		EndIf;;
		If( ValType(<cFilterDefault>) == "C" );;
			<oFWBrowse>:SetFilterDefault(<cFilterDefault>);;
		EndIf;;
		If( ValType(<cCpoFil>) == "C" .And. ValType(<cTopFun>) == "C" .And. ValType(<cBotFun>) == "C" );;
			<oFWBrowse>:SetFilter(<cCpoFil>,<cTopFun>,<cBotFun>);;
		EndIf;;
		If( ValType(<cDescription>) == "C" );;
			<oFWBrowse>:SetDescription(<cDescription>);;
		EndIf;;
		If( ValType(<oOwner>) == "O" );;
			<oFWBrowse>:SetOwner(<oOwner>);;
		EndIf;;
		If <.lNumberLegend.>;;
			<oFWBrowse>:SetNumberLegend(<.lNumberLegend.>);;
		EndIf;;
		If( ValType(<cProfileID>) == "C" );;
			<oFWBrowse>:SetProfileID(<cProfileID>);;
		EndIf
		
#xcommand ACTIVATE FWBROWSE <oFWBrowse> ;
	=> ;
		<oFWBrowse>:Activate()

#xcommand ADD COLUMN <oFWBrwColumn> ;
	[ DATA <bData> ] ;
	[ TITLE <cTitle> ] ;
	[ TYPE <cType> ] ;
	[ SIZE <nSize> ] ;
	[ DECIMAL <nDecimal> ] ;
	[ ALIGN <nAlign> ] ;
	[ PICTURE <xPicture> ] ;
	[ COLOR <nBackColor> [,<nForeColor>] ] ;
	[ COMMENT <cComment> ] ;
	[ DOUBLECLICK <bLDblClick> ] ;
	[ HEADERCLICK <bHeaderClick> ] ;
	[ <lDelete: DELETE> ] ;
	[ <lDetails: DETAILS> ] ;
	[ <lEdit: EDIT> ] ;
	[ <lImage: IMAGE> ] ;
	[ READVAR <cReadVar> ] ;
	[ VALID <bValid> ] ;
	[ OPTIONS <aOptions> ] ;
	[ ORDER <nOrder> ] ;
	[ <lNoAutoSize: NO AUTOSIZE> ] ;
	[ ID <cID>  ] ;
	OF <oBrowse>;
	=> ;
		<oFWBrwColumn> := FWBrwColumn():New() ;;
		If( ValType(<nAlign>) == "N" );;
			<oFWBrwColumn>:SetAlign(<nAlign>);;
		EndIf;;
		If( ValType(<nBackColor>) == "N" );;
			<oFWBrwColumn>:SetBackColor(<nBackColor>);;
		EndIf;;		
		If( ValType(<cComment>) == "C" );;
			<oFWBrwColumn>:SetComment(<cComment>);;
		EndIf;;
		If( ValType(<bData>) == "B" );;
			<oFWBrwColumn>:SetData(<bData>);;
		EndIf;;
		If( ValType(<nDecimal>) == "N" );;
			<oFWBrwColumn>:SetDecimal(<nDecimal>);;
		EndIf;;		
		If <.lDelete.>;;
			<oFWBrwColumn>:SetDelete(<.lDelete.>);;
		EndIf;;
		If <.lDetails.>;;
			<oFWBrwColumn>:SetDetails(<.lDetails.>);;
		EndIf;;
		If( ValType(<bLDblClick>) == "B" );;
			<oFWBrwColumn>:SetDoubleClick(<bLDblClick>);;
		EndIf;;
		If <.lEdit.>;;
			<oFWBrwColumn>:SetEdit(<.lEdit.>);;
		EndIf;;
		If( ValType(<nForeColor>) == "N" );;
			<oFWBrwColumn>:SetForeColor(<nForeColor>);;
		EndIf;;		
		If( ValType(<bHeaderClick>) == "B" );;
			<oFWBrwColumn>:SetHeaderClick(<bHeaderClick>);;
		EndIf;;
		<oFWBrwColumn>:SetOptions(<aOptions>);;
		If( ValType(<nOrder>) == "N" );;
			<oFWBrwColumn>:SetOrder(<nOrder>);;
		EndIf;;		
		If( ValType(<xPicture>) == "C");;
			<oFWBrwColumn>:SetPicture(<xPicture>);;
		ElseIf( ValType(<xPicture>) == "B");;
			<oFWBrwColumn>:SetPicture(<xPicture>);;
		EndIf;;
		If( ValType(<cReadVar>) == "C" );;
			<oFWBrwColumn>:SetReadVar(<cReadVar>);;
		EndIf;;
		If( ValType(<nSize>) == "N" );;
			<oFWBrwColumn>:SetSize(<nSize>);;
		EndIf;;
		If( <.lNoAutoSize.> );;
			<oFWBrwColumn>:SetAutoSize(.F.);;
		EndIf;;
		If <.lImage.>;;
			<oFWBrwColumn>:SetImage(<.lImage.>);;
		EndIf;;
		If( ValType(<cTitle>) == "C" );;
			<oFWBrwColumn>:SetTitle(<cTitle>);;
		Else;;
			<oFWBrwColumn>:SetTitle("  ");;
		EndIf;;
		If( ValType(<cType>) == "C" );;
			<oFWBrwColumn>:SetType(<cType>);;
		EndIf;;
		If( ValType(<bValid>) == "B" );;
			<oFWBrwColumn>:SetValid(<bValid>);;
		EndIf;;
		If( ValType(<cID>) == "C" );;
			<oFWBrwColumn>:SetID(<cID>);;
		EndIf;;
		If( ValType(<oBrowse>) == "O" );;
			If ( <oBrowse>:ClassName() $ "FWBROWSE|FWFORMBROWSE|FWMBROWSE|FWMARKBROWSE" );;
				<oBrowse>:SetColumns({<oFWBrwColumn>});;
			EndIf;;
		EndIf

#xcommand ADD MARKCOLUMN [<oFWBrwColumn>] ;
	DATA <bData> ;
	[ DOUBLECLICK <bLDblClick> ] ;
	[ HEADERCLICK <bHeaderClick> ] ;
	OF <oBrowse>;
	=> ;
	[<oFWBrwColumn>] := <oBrowse>:AddMarkColumns(<bData>,<bLDblClick>,<bHeaderClick>)

#xcommand ADD STATUSCOLUMN [<oFWBrwColumn>] ;
	DATA <bData> ;
	[ DOUBLECLICK <bLDblClick> ] ;
	OF <oBrowse>;
	=> ;
	[<oFWBrwColumn>] := <oBrowse>:AddStatusColumns(<bData>,<bLDblClick>)

#xcommand ADD LEGEND ;
	DATA <uData> ;
	[ COLOR <nColor> ] ;
	[ TITLE <cTitle> ] ;
	[ ID    <cID>    ] ;
	OF <oBrowse>;
	=> ;
	<oBrowse>:AddLegend(<uData>,<nColor>,<cTitle>,<cID>)

#xcommand DEFINE FWFORMBROWSE <oFWBrowse> ;
	[ <lDataArray: DATA ARRAY> ] ;
	[ <lDataText : DATA TEXT>  ] ;
	[ <lDataQuery: DATA QUERY> ] ;
	[ <lDataTable: DATA TABLE> ] ;
	[ ALIAS <cAlias> ] ;
	[ DOUBLECLICK <bLDblClick> ] ;
	[ LINEOK <bLineOk> ] ;
	[ ALLOK <bAllOK> ] ;
	[ CHANGE <bChange> ] ;
	[ DELETE <bDelete> ] ;
	[ DELOK <bDelOK> ] ;
	[ SUPERDEL <bSuperDel> ] ;
	[ EDITCELL <bValidEdit> ] ;
	[ GROUP <bGroup> ] ;
	[ <lInsert: INSERT> ] ;
	[ <lNoLocate: NO LOCATE> ] ;
	[ LOCATE <bLocate> ] ;
	[ <lNoSeek: NO SEEK> ] ;
	[ SEEK ACTION <bActionSeek> ] ;
	[ SEEK ORDER  <aOrderSeek> ] ;
	[ <lUseFilter: FILTER> ] ;
	[ FILTERFIELDS <aFilterFields> ] ;
	[ <lNoConfig: NO CONFIG> ] ;
	[ <lNoReport: NO REPORT> ] ;
	[ <lNoSave: NO SAVE CONFIG> ] ;
    [ <color: COLOR, COLORS> <nClrFore> [,<nClrBack>] ] ;
	[ ALTERNATE COLOR <nClrAlterRow> ] ;
	[ FONT <oFont> ] ;
	[ LINE HEIGHT <nLineHeight> ] ;
	[ ARRAY <aArray> ] ;
	[ FILE <cFile> ] ;
	[ QUERY <cQuery> ] ;
	[ INDEXQUERY <aIndex> ] ;
	[ FILTERDEFAULT <cFilterDefault> ] ;
	[ <filtertopbot: FILTERTOPBOT> <cCpoFil>, <cTopFun>, <cBotFun> ] ;
	[ LINE BEGIN <nLineBegin> ] ;
	[ DESCRIPTION <cDescription> ] ;
	[ SEPARATOR <cCharSeparator> ] ;
	[ <lNoDetails: NO DETAILS> ] ;
	[ <lTemporary: TEMPORARY> ] ;
	[ PARAM <bParam> ] ;
	[ DETAILS <bDetails> ] ;
	[ BEFORE EXECUTE <bBeforeExec> ] ;
	[ AFTER EXECUTE <bAfterExec> ] ;
	[ <lNumberLegend: LEGEND NUMBER> ] ;
	[ PROFILEID <cProfileID> ] ;
	OF <oOwner>;
	=> ;
		<oFWBrowse> := FWFormBrowse():New();;
		If <.lDataArray.>;;
			<oFWBrowse>:SetDataArray(<.lDataArray.>);;
		EndIf;;
		If <.lDataText.>;;
			<oFWBrowse>:SetDataText(<.lDataText.>);;
		EndIf;;
		If <.lDataQuery.>;;
			<oFWBrowse>:SetDataQuery(<.lDataQuery.>);;
		EndIf;;
		If <.lDataTable.>;;
			<oFWBrowse>:SetDataTable(<.lDataTable.>);;
		EndIf;;
		If( ValType(<cAlias>) == "C" );;
			<oFWBrowse>:SetAlias(<cAlias>);;
		EndIf;;
		If( ValType(<bLDblClick>) == "B" );;
			<oFWBrowse>:SetDoubleClick(<bLDblClick>);;
		EndIf;;
		If( ValType(<bLineOk>) == "B" );;
			<oFWBrowse>:SetLineOk(<bLineOk>);;
		EndIf;;
		If( ValType(<bChange>) == "B" );;
			<oFWBrowse>:SetChange(<bChange>);;
		EndIf;;
		If( ValType(<bAllOK>) == "B" );;
			<oFWBrowse>:SetAllOK(<bAllOK>);;
		EndIf;;
		If( ValType(<bDelete>) == "B" );;
			<oFWBrowse>:SetDelete(.T.,<bDelete>);;
		EndIf;;
		If( ValType(<bDelOK>) == "B" );;
			<oFWBrowse>:SetDelOK(<bDelOK>);;
		EndIf;;
		If( ValType(<bSuperDel>) == "B" );;
			<oFWBrowse>:SetSuperDel(<bSuperDel>);;
		EndIf;;
		If( ValType(<bValidEdit>) == "B" );;
			<oFWBrowse>:SetEditCell(.T.,<bValidEdit>);;
		EndIf;;
		If( ValType(<bGroup>) == "B" );;
			<oFWBrowse>:SetGroup(<bGroup>);;
		EndIf;;
		If <.lInsert.>;;
			<oFWBrowse>:SetInsert(<.lInsert.>);;
		EndIf;;
		If !<.lNoLocate.> .And. (<.lDataArray.> .Or. <.lDataQuery.> .Or. <.lDataTable.> .Or. <.lDataText.>);;
			<oFWBrowse>:SetLocate([<bLocate>]);;
		EndIf;;
		If !<.lNoSeek.>;;
			<oFWBrowse>:SetSeek([<bActionSeek>],[<aOrderSeek>]);;
		EndIf;;
		If <.lNoConfig.>;;
			<oFWBrowse>:DisableConfig();;
		EndIf;;
		If <.lNoReport.>;;
			<oFWBrowse>:DisableReport();;
		EndIf;;
		If <.lNoSave.>;;
			<oFWBrowse>:DisableSaveConfig();;
		EndIf;;
		If( ValType(<nClrFore>) == "N" );;
			<oFWBrowse>:SetForeColor(<nClrFore>);;
		EndIf;;
		If( ValType(<nClrBack>) == "N" );;
			<oFWBrowse>:SetBackColor(<nClrBack>);;
		EndIf;;
		If( ValType(<nClrAlterRow>) == "N" );;
			<oFWBrowse>:SetClrAlterRow(<nClrAlterRow>);;
		EndIf;;
		If( ValType(<oFont>) == "O" );;
			<oFWBrowse>:SetFontBrowse(<oFont>);;
		EndIf;;
		If( ValType(<nLineHeight>) == "N" );;
			<oFWBrowse>:SetLineHeight(<nLineHeight>);;
		EndIf;;
		If( ValType(<nLineBegin>) == "N" );;
			<oFWBrowse>:SetLineBegin(<nLineBegin>);;
		EndIf;;
		If( ValType(<aArray>) == "A" );;
			<oFWBrowse>:SetArray(<aArray>);;
		EndIf;;
		If( ValType(<cFile>) == "C" );;
			<oFWBrowse>:SetFile(<cFile>[,<cCharSeparator>]);;
		EndIf;;
		If( ValType(<aIndex>) == "A" );;
			<oFWBrowse>:SetQueryIndex(<aIndex>);;
		EndIf;;
		If( ValType(<cQuery>) == "C" );;
			<oFWBrowse>:SetQuery(<cQuery>);;
		EndIf;;
		If( ValType(<aFilterFields>) == "A" );;
			<oFWBrowse>:SetFieldFilter(<aFilterFields>);;
			<oFWBrowse>:SetUseFilter();;
		ElseIf <.lUseFilter.>;;
			<oFWBrowse>:SetUseFilter();;
		EndIf;;
		If( ValType(<cFilterDefault>) == "C" );;
			<oFWBrowse>:SetFilterDefault(<cFilterDefault>);;
		EndIf;;
		If( ValType(<cCpoFil>) == "C" .And. ValType(<cTopFun>) == "C" .And. ValType(<cBotFun>) == "C" );;
			<oFWBrowse>:SetFilter(<cCpoFil>,<cTopFun>,<cBotFun>);;
		EndIf;;
		If( ValType(<cDescription>) == "C" );;
			<oFWBrowse>:SetDescription(<cDescription>);;
		EndIf;;
		If( ValType(<oOwner>) == "O" );;
			<oFWBrowse>:SetOwner(<oOwner>);;
		EndIf;;
		If( ValType(<bDetails>) == "B" );;
			<oFWBrowse>:SetDetails(.T.,<bDetails>);;
		EndIf;;
		If <.lNoDetails.>;;
			<oFWBrowse>:DisableDetails();;
		EndIf;;
		If <.lTemporary.>;;
			<oFWBrowse>:SetTemporary();;
		EndIf;;
		If( ValType(<bParam>) == "B" );;
			<oFWBrowse>:SetParam(<bParam>);;
		EndIf;;
		If( ValType(<bBeforeExec>) == "B" );;
			<oFWBrowse>:SetBeforeExec(<bBeforeExec>);;
		EndIf;;
		If( ValType(<bAfterExec>) == "B" );;
			<oFWBrowse>:SetAfterExec(<bAfterExec>);;
		EndIf;;
		If <.lNumberLegend.>;;
			<oFWBrowse>:SetNumberLegend(<.lNumberLegend.>);;
		EndIf;;
		If( ValType(<cProfileID>) == "C" );;
			<oFWBrowse>:SetProfileID(<cProfileID>);;
		EndIf
		
#xcommand ACTIVATE FWFORMBROWSE <oFWBrowse> ;
	=> ;
		<oFWBrowse>:Activate(<oOwner>)

#xcommand DEFINE FWUSERBROWSE <oFWBrowse> ;
	[ <lDataArray: DATA ARRAY> ] ;
	[ <lDataText : DATA TEXT>  ] ;
	[ <lDataQuery: DATA QUERY> ] ;
	[ <lDataTable: DATA TABLE> ] ;
	[ ALIAS <cAlias> ] ;
	[ DOUBLECLICK <bLDblClick> ] ;
	[ LINEOK <bLineOk> ] ;
	[ ALLOK <bAllOK> ] ;
	[ CHANGE <bChange> ] ;
	[ DELETE <bDelete> ] ;
	[ DELOK <bDelOK> ] ;
	[ SUPERDEL <bSuperDel> ] ;
	[ EDITCELL <bValidEdit> ] ;
	[ GROUP <bGroup> ] ;
	[ <lInsert: INSERT> ] ;
	[ <lNoLocate: NO LOCATE> ] ;
	[ LOCATE <bLocate> ] ;
	[ <lNoSeek: NO SEEK> ] ;
	[ SEEK ACTION <bActionSeek> ] ;
	[ SEEK ORDER  <aOrderSeek> ] ;
	[ <lUseFilter: FILTER> ] ;
	[ FILTERFIELDS <aFilterFields> ] ;
	[ <lNoConfig: NO CONFIG> ] ;
	[ <lNoReport: NO REPORT> ] ;
	[ <lNoSave: NO SAVE CONFIG> ] ;
    [ <color: COLOR, COLORS> <nClrFore> [,<nClrBack>] ] ;
	[ ALTERNATE COLOR <nClrAlterRow> ] ;
	[ FONT <oFont> ] ;
	[ LINE HEIGHT <nLineHeight> ] ;
	[ ARRAY <aArray> ] ;
	[ FILE <cFile> ] ;
	[ QUERY <cQuery> ] ;
	[ INDEXQUERY <aIndex> ] ;
	[ FILTERDEFAULT <cFilterDefault> ] ;
	[ <filtertopbot: FILTERTOPBOT> <cCpoFil>, <cTopFun>, <cBotFun> ] ;
	[ LINE BEGIN <nLineBegin> ] ;
	[ DESCRIPTION <cDescription> ] ;
	[ SEPARATOR <cCharSeparator> ] ;
	[ <lNoDetails: NO DETAILS> ] ;
	[ <lTemporary: TEMPORARY> ] ;
	[ PARAM <bParam> ] ;
	[ DETAILS <bDetails> ] ;
	[ BEFORE EXECUTE <bBeforeExec> ] ;
	[ AFTER EXECUTE <bAfterExec> ] ;
	[ <lNumberLegend: LEGEND NUMBER> ] ;
	[ PROFILEID <cProfileID> ] ;
	OF <oOwner>;
	=> ;
		<oFWBrowse> := FWUSERBROWSE():New();;
		If <.lDataArray.>;;
			<oFWBrowse>:SetDataArray(<.lDataArray.>);;
		EndIf;;
		If <.lDataText.>;;
			<oFWBrowse>:SetDataText(<.lDataText.>);;
		EndIf;;
		If <.lDataQuery.>;;
			<oFWBrowse>:SetDataQuery(<.lDataQuery.>);;
		EndIf;;
		If <.lDataTable.>;;
			<oFWBrowse>:SetDataTable(<.lDataTable.>);;
		EndIf;;
		If( ValType(<cAlias>) == "C" );;
			<oFWBrowse>:SetAlias(<cAlias>);;
		EndIf;;
		If( ValType(<bLDblClick>) == "B" );;
			<oFWBrowse>:SetDoubleClick(<bLDblClick>);;
		EndIf;;
		If( ValType(<bLineOk>) == "B" );;
			<oFWBrowse>:SetLineOk(<bLineOk>);;
		EndIf;;
		If( ValType(<bChange>) == "B" );;
			<oFWBrowse>:SetChange(<bChange>);;
		EndIf;;
		If( ValType(<bAllOK>) == "B" );;
			<oFWBrowse>:SetAllOK(<bAllOK>);;
		EndIf;;
		If( ValType(<bDelete>) == "B" );;
			<oFWBrowse>:SetDelete(.T.,<bDelete>);;
		EndIf;;
		If( ValType(<bDelOK>) == "B" );;
			<oFWBrowse>:SetDelOK(<bDelOK>);;
		EndIf;;
		If( ValType(<bSuperDel>) == "B" );;
			<oFWBrowse>:SetSuperDel(<bSuperDel>);;
		EndIf;;
		If( ValType(<bValidEdit>) == "B" );;
			<oFWBrowse>:SetEditCell(.T.,<bValidEdit>);;
		EndIf;;
		If( ValType(<bGroup>) == "B" );;
			<oFWBrowse>:SetGroup(<bGroup>);;
		EndIf;;
		If <.lInsert.>;;
			<oFWBrowse>:SetInsert(<.lInsert.>);;
		EndIf;;
		If !<.lNoLocate.> .And. (<.lDataArray.> .Or. <.lDataQuery.> .Or. <.lDataTable.> .Or. <.lDataText.>);;
			<oFWBrowse>:SetLocate([<bLocate>]);;
		EndIf;;
		If !<.lNoSeek.>;;
			<oFWBrowse>:SetSeek([<bActionSeek>],[<aOrderSeek>]);;
		EndIf;;
		If <.lNoConfig.>;;
			<oFWBrowse>:DisableConfig();;
		EndIf;;
		If <.lNoReport.>;;
			<oFWBrowse>:DisableReport();;
		EndIf;;
		If <.lNoSave.>;;
			<oFWBrowse>:DisableSaveConfig();;
		EndIf;;
		If( ValType(<nClrFore>) == "N" );;
			<oFWBrowse>:SetForeColor(<nClrFore>);;
		EndIf;;
		If( ValType(<nClrBack>) == "N" );;
			<oFWBrowse>:SetBackColor(<nClrBack>);;
		EndIf;;
		If( ValType(<nClrAlterRow>) == "N" );;
			<oFWBrowse>:SetClrAlterRow(<nClrAlterRow>);;
		EndIf;;
		If( ValType(<oFont>) == "O" );;
			<oFWBrowse>:SetFontBrowse(<oFont>);;
		EndIf;;
		If( ValType(<nLineHeight>) == "N" );;
			<oFWBrowse>:SetLineHeight(<nLineHeight>);;
		EndIf;;
		If( ValType(<nLineBegin>) == "N" );;
			<oFWBrowse>:SetLineBegin(<nLineBegin>);;
		EndIf;;
		If( ValType(<aArray>) == "A" );;
			<oFWBrowse>:SetArray(<aArray>);;
		EndIf;;
		If( ValType(<cFile>) == "C" );;
			<oFWBrowse>:SetFile(<cFile>[,<cCharSeparator>]);;
		EndIf;;
		If( ValType(<aIndex>) == "A" );;
			<oFWBrowse>:SetQueryIndex(<aIndex>);;
		EndIf;;
		If( ValType(<cQuery>) == "C" );;
			<oFWBrowse>:SetQuery(<cQuery>);;
		EndIf;;
		If( ValType(<aFilterFields>) == "A" );;
			<oFWBrowse>:SetFieldFilter(<aFilterFields>);;
			<oFWBrowse>:SetUseFilter();;
		ElseIf <.lUseFilter.>;;
			<oFWBrowse>:SetUseFilter();;
		EndIf;;
		If( ValType(<cFilterDefault>) == "C" );;
			<oFWBrowse>:SetFilterDefault(<cFilterDefault>);;
		EndIf;;
		If( ValType(<cCpoFil>) == "C" .And. ValType(<cTopFun>) == "C" .And. ValType(<cBotFun>) == "C" );;
			<oFWBrowse>:SetFilter(<cCpoFil>,<cTopFun>,<cBotFun>);;
		EndIf;;
		If( ValType(<cDescription>) == "C" );;
			<oFWBrowse>:SetDescription(<cDescription>);;
		EndIf;;
		If( ValType(<oOwner>) == "O" );;
			<oFWBrowse>:SetOwner(<oOwner>);;
		EndIf;;
		If( ValType(<bDetails>) == "B" );;
			<oFWBrowse>:SetDetails(.T.,<bDetails>);;
		EndIf;;
		If <.lNoDetails.>;;
			<oFWBrowse>:DisableDetails();;
		EndIf;;
		If <.lTemporary.>;;
			<oFWBrowse>:SetTemporary();;
		EndIf;;
		If( ValType(<bParam>) == "B" );;
			<oFWBrowse>:SetParam(<bParam>);;
		EndIf;;
		If( ValType(<bBeforeExec>) == "B" );;
			<oFWBrowse>:SetBeforeExec(<bBeforeExec>);;
		EndIf;;
		If( ValType(<bAfterExec>) == "B" );;
			<oFWBrowse>:SetAfterExec(<bAfterExec>);;
		EndIf;;
		If <.lNumberLegend.>;;
			<oFWBrowse>:SetNumberLegend(<.lNumberLegend.>);;
		EndIf;;
		If( ValType(<cProfileID>) == "C" );;
			<oFWBrowse>:SetProfileID(<cProfileID>);;
		EndIf
		
#xcommand ACTIVATE FWUSERBROWSE <oFWBrowse> ;
	=> ;
		<oFWBrowse>:Activate(<oOwner>)

#xcommand ADD BUTTON <oButton> ;
	[ TITLE <cTitle> ] ;
	[ ACTION <xAction> ] ;
	[ OPERATION <nOperation> ] ;
	[ ACCESS <nAccess> ] ;
	OF <oFWBrowse>;
	=> ;
		<oFWBrowse>:AddButton(<cTitle>,<xAction>,,<nOperation>,<nAccess>,.F.);;
