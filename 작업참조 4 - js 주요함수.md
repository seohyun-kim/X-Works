# 작업참조 4- js 주요함수 소개
```js

//초기
function x_InitForm2() {
	
	_X.InitGrid({grid:dg_1, sqlFile:'CS03050', sqlId:'CS03050_01', share:true, updatable:true});
	_X.InitGrid({grid:dg_2, sqlFile:'CS03050', sqlId:'CS03050_02', share:true, updatable:true});
	x_SetProj_cd(S_PROJ_CD,null,false,null);
}

//그리드 모두 출력되었을 때
function xe_GridLayoutComplete2(a_dg, ab_allcompleted) {
	if ( ab_allcompleted ) {
	
	}
}

//조회버튼 눌렀을때
function x_DAO_Retrieve2(a_dg){
	dg_2.Retrieve([mytop._CompanyCode, sle_basicyear.value, S_HALF.value, S_PROJ_CD.value]);
}

//입력필드 값이 변경되었을때
function xe_EditChanged2(a_obj, newValue, oldValue){
	
}

//입력필드에서 엔터키를 눌렀을때
function xe_InputKeyEnter2(a_obj, event, ctrlKey, altKey, shiftKey){

}

//입력필드에서 키값이 입력될때 마다
function xe_InputKeyDown2(a_obj, event, keyCode, ctrlKey, altKey, shiftKey){

}

//저장버튼 눌렀을때
function x_DAO_Save2(a_dg){
	return 100;
}

//저장전 입력된 값 Validation 체크
function x_DAO_ChkErr2(){
	return true;
}

//저장이 정상적으로 이루어진 후 호출
function x_DAO_Saved2(){

}

//추가버튼 눌렀을때
function x_DAO_Insert2(a_dg, rowIdx){
	return 100;
}

//새로운 레코드가 그리드에 추가된 이후에
function x_Insert_After2(a_dg, rowIdx){

}

//복제버튼 눌렀을때
function x_DAO_Duplicate2(a_dg, rowIdx){
	return 100;
}

//복제된 이후에
function x_Duplicate_After2(a_dg, rowIdx){
	
}

//삭제버튼 눌렀을때
function x_DAO_Delete2(a_dg){
	return 100;
}

//삭제된 이후에
function x_DAO_Deleted2(a_dg){

}

//엑셀버튼 눌렀을때
function x_DAO_Excel2(a_dg){
	return 100;
}

//출력버튼 눌렀을
function x_DAO_Print2(){

}

function xe_TabChanging2(a_tab, newIdx, oldIdx, newTab, oldTab){
	return 100;
}

//탭 체인지 되었을 때
function xe_TabChanged2(a_tab, newIdx, oldIdx, newTab, oldTab){

}

function xe_GridDataChange2(a_dg, rowIdx, colName, newValue, oldValue){

}

function xe_GridDataChanged2(a_dg, rowIdx, colName, newValue, oldValue){

}

function xe_GridRowFocusChange2(a_dg, newRowIdx, oldRowIdx){
	return true;
}

//그리드 행 누르고 난 후
function xe_GridRowFocusChanged2(a_dg, newRowIdx){

	if(a_dg==dg_2) {
		dg_1.Retrieve([dg_2.GetItem(dg_2.GetRow(), 'COMPANY_CODE'),dg_2.GetItem(dg_2.GetRow(), 'SUR_YYYY'),
			           dg_2.GetItem(dg_2.GetRow(), 'SUR_HALF'), dg_2.GetItem(dg_2.GetRow(), 'SUR_PROJ_CODE')]);	
	}
}

```
