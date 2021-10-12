# 작업참조3 - js와 jsp의 연동  


### 1. 기본 조회  
참고: HR03120 (구:CM0204030)    
![image](https://user-images.githubusercontent.com/61939286/136185784-c8140b7e-d1d5-4eab-8bef-dd2dfb10a792.png)


```js
//구소스 형태
fdw_1.Retrieve(mytop.gs_compcode, '%', sle_paymonth.value, ddlb_div.value);
```
디폴트로 구분은 %(전체) 준거같음

```js
function x_DAO_Retrieve2(a_dg){
	dg_1.Retrieve([mytop._CompanyCode, '%', _X.StrPurify(sle_basicmonth.value), S_DIV.value]);
}

```
년월은 - 도 들어가기 때문에 퓨리파이 해줘야함

<br>  


### 2. 탭 체인지 되었을 때의 인자가 있는 조회 버튼 클릭 시   
다른 방법은 작업참조5에 있음.

참고: HR03110 (구:CM0204020)  

이전 소스코드에서 `fdw_[N].Retrieve()` 형태를 찾아 인자를 봄   

![image](https://user-images.githubusercontent.com/61939286/133907172-49dd8bc0-7f77-468b-a271-1fcad9ff07fa.png)  


```
//구소스
fdw_1.Retrieve(mytop.gs_compcode, ddlb_project.value, sle_paymonth.value,'0');
```
현장명 값 입력된거 가져와서 넣고, 날짜 입력받은거 넣고, 마지막은 코드 보아하니 탭넘버  

<br>  


.js
```js
//탭넘버를 위해 전역변수 선언
var is_part = '1'; //진행[01]/완료[02]/반려[03]

//조회버튼 클릭 시 실행되는 함수
function x_DAO_Retrieve2(a_dg){
	dg_1.Retrieve([mytop._CompanyCode,S_PROJ_CD.value,sle_basicmonth.value,is_part]);

}

// 여기서 is_part 바꿔줌
//탭 선택하였을때 발생 하는 함수
function xe_TabChanged2(a_tab, a_new_idx, a_old_idx, a_new_tab, a_old_tab){

	//초기화
	_X.ResetGrid(dg_1, columns_dg_2, null, null, "HR03110|HR03110_01");
	_X.ResetGrid(dg_2, columns_dg_2, null, null, "HR03110|HR03110_02");

	switch(a_new_idx){
		case  0:
			is_part = '1'; //진행
		   	break;
		case  1:
			is_part = '2'; //완료
		  	break;
		case  2:
			is_part = '3'; //보류
			break;
 	 }

	//조회
	x_DAO_Retrieve(dg_1);
	//x_DAO_Retrieve(dg_2);

	//사이즈가 탭별로 상이한경우
	xe_BodyResize();
  return 100;
}
```

<br>  




