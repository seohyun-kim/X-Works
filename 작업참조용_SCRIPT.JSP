<%  /**
    *------------------------------------------------
    *         JSP  설정방법																																					*/
    *------------------------------------------------
    */
%>

<!-- ■ 조건값설정-->
<!-- 조회건값의 HTML OBJECT ID 는 S_  로 시작합니다.  -->
<div id='topsearch' class='option_box2' >
    <!-- 작업기능버튼 (추가,삭제,조회,프린트) -->
    <div id='xbtns' style='height:23px;'>
	  <html:authbutton id='buttons' grid='dg_1'></html:authbutton>
	</div>
  
	  <div class="option_label w100">현장명</div>
	  <div class="option_input_bg">
		  <div class="ui-widget">
			  <select id="S_PROJ_CD" class="option_input_fix"></select>
			  <span style="margin-left: 25px;"></span>
		  </div>
	  </div>
      <!--현장코드에 값을 넣어주는 기능(js 파일의 x_InitForm2 에 기술)-->
      <script type="text/javascript">
            x_SetProj_cd(S_PROJ_CD,null,true,null);
      </script>

      <!-- 날자형식 자동으로 html 생성해주는 tag libaray -->
      <!-- 일자:datetyoe={date,month,year} 각각 id 가 sle_bascidate, sle_basicmontg, sle_basicyear 로 부여돰-->
	  <div class='option_label'>청구월</div>
	  <div class='option_input_bg'>
		  <html:basicdate id="dateimages" classType="option" dateType="month" moveBtn="true" readOnly="true"></html:basicdate>
	  </div>
      <!-- 일자:기간 S_FROM_DATE, S_TO_DATE-->
	        <!-- 일자:datetyoe={date,month,year} 각각 id 가 sle_bascidate, sle_basicmontg, sle_basicyear 로 부여돰-->
	  <html:fromtodate id="dateimages" classType="search" dateType="date" moveBtn="true" readOnly="false" idHead="M"></html:fromtodate>
      <!-- 날짜 사용 예-->
      <script type="text/javascript">
          _X.StrPurify(sle_basicmonth.value);  // 날짜값이 yyyy-mm-dd 형태로 가지고 있어서 데이타 조회시 - 를 제거 하는 함수
      </script>

      <!-- 데이타를 가저오는 select box -->
      <!-- SM_COMCODE_D table 을 사용하고  SQL 에 파라미터가 2개인경우만 해당 JS 파일에 코딩 해주지 않아도 됨-->
      <!-- params:파라미터 2개 기술, dispStyle:1=코드와 명칭이 같이나옴, 0은 명칭만 나옴, selected:디폴트값설정 -->
	  <div class='option_label'>전도금구분</div>
	  <div class='option_input_bg'>
		  <html:select name="S_REQDIV" id = "S_REQDIV" comCodeYn="0" codeGroup="com|COMMON|SM_COMCODE_D_S01" params="CM|REQADV" dispStyle="1" selected="1"></html:select>
	  </div>

      <!-- 직접기술 select box  style='width:100px;' 은 사이즈 변경시 사용-->
	  <div class='option_label'>현장구분</div>
	  <div class='option_input_bg'>
		  <select id='S_MANAGE_TYPE' style='width:100px;'>
			  <option value='1'>공사</option>
			  <option value='3'>제조</option>
		  </select>
	  </div>

      <!-- 사용자 버튼 생성 -->
      <!-- id='btn_reqadv_trans' 이전소스이름앞에 btn_ 붙여서 명명 단어간 _로 구분하여 명명-->
      <!--■ 버튼색상
            초록색 <button type="button" id='btn_go_rqst'        class="btn btn-success btn-xs" onClick="pf_set_status('0', '청구 승인요청');" >변경</button>
            빨간색 <button type="button" id='btn_cancel_rqst'    class="btn btn-danger btn-xs" onClick="pf_set_status('1', '승인요청 취소');">조사자료 Upload</button>
            주황색 <button type="button" id='btn_rqst_accept'    class="btn btn-warning btn-xs" onClick="pf_set_status('2', '자재청구', 'Y');">조사결과 Down</button>
            파란색 <button type="button" id='btn_rqst_accept_no' class="btn btn-primary btn-xs" onClick="pf_set_status('1', '승인요청 반려');">전체삭제</button>
            하늘색 <button type="button" id='btn_rqst_cancel'    class="btn btn-info btn-xs" onClick="pf_set_status('1', '자재청구 취소', 'N');">자동매칭</button>
      -->
	  <div style='float:right;margin-right:5px;margin-top:3px;'>
		  <button type="button" id='btn_reqadv_trans'  class="btn btn-danger btn-xs" onClick="uf_reqadv_trans_new('trans');">전도금이체</button>
		  <button type="button" id='btn_prn_slip'  class="btn btn-danger btn-xs" onClick="uf_prn_slip();">전표출력</button>
	  </div>	
      <!-- 검색 INPUT BOX 생성 -->
      <div class='option_label'>부서검색</div>
	  <div class='option_input_bg'>
          <div class='option_input_bg'><input id='S_DEPT_FIND' type='text' class='option_input_fix'></div>  
      </div>
 	  <!--
		찾기버튼이 있는 조회조건값설정
	  -->
	  <label class='option_label w80'>회계계정</label>
	  <div class='option_input_bg w160 noborder has_button'>
		<input id='S_EMP_NO' type='text' readOnly>
		<input id='S_EMP_NAME' type='text'>
		<button id="btn_empfind" class="search_find_img"></button>
	  </div>
	</div>

</div>
<!--그리드위의 타이틀 또는 버튼 설정 -->
<div id='grid_2' class='grid_div has_title mt5'>
<label class="sub_title">전도금 청구내역</label>   <!-- 그리드위의 타이틀 설정시-->
<div class='child_button float_right' style="margin-top: -28px;"> <!-- 작업 버튼설정(추가,삭제,....) -->
    <html:authchildbutton id='buttons' grid='dg_2' append='false' insert='false' duplicate='false' delete='true' print='false' excel='false' retrieve='false'/>
</div>
<div id="dg_2" class='slick-grid'></div>

<!-- 탭설정 -->
<div id="tabs_1" class='tabs_div'>
    <!--탭명칭 설정-->
	<div id="ctab_nav" class="tabs_nav">
		<ul>
		   <li><a href="#ctab_1">계정코드</a></li>
		   <li><a href="#ctab_1">전표구분</a></li>
		   <li><a href="#ctab_1">원가코드</a></li>
		   <li><a href="#ctab_1">특이계정</a></li>
		   <li><a href="#ctab_1">자금계정</a></li>
		   <li><a href="#ctab_1">계정(더존연계)</a></li>
		</ul>
	</div>
    <!--탭밑에 들어가는 그리드 또는 HTML OBJECT 설정 -->
    <!--동적으로 설정하기 예 -->
	<div id="ctab_1" class='tabc_div'>
		 <div id='grid_1' class='grid_div'>
			 <div id="dg_1" class="slick-grid"></div>
		 </div>
	</div>
    <!--한번에 미리 설정-->
    <div id="ctab_1">
		<div id='tabsub_1' class='tabc_div'>
			<div id="grid_1" class='grid_div'>
				<div id="dg_1" class="slick-grid"></div>
			</div>
		</div>
		<div id='tabsub_2' class='tabc_div'>
			<div id="grid_2" class='grid_div'>
				<div id="dg_2" class="slick-grid"></div>
			</div>
		</div>
		<div id='tabsub_3' class='tabc_div'>
			<div id="grid_3" class='grid_div'>
				<div id="dg_3" class="slick-grid"></div>
			</div>
		</div>
		<div id='tabsub_4' class='tabc_div'>
			<div id="grid_4" class='grid_div'>
				<div id="dg_4" class="slick-grid"></div>
			</div>
		</div>
	</div>
</div>

<div id="tabs_2" class='tabs_div'>
    <!--탭명칭 설정-->
	<div id="ctab_nav" class="tabs_nav">
		<ul>
		   <li><a href="#ctab_1">세율정보</a></li>
		   <li><a href="#ctab_1">급여구성율표</a></li>
		   <li><a href="#ctab_1">퇴직세율정보</a></li>
		</ul>
	</div>
    <!--탭밑에 들어가는 그리드 또는 HTML OBJECT 설정 -->
    <!--동적으로 설정하기 예 -->
	<div id="ctab_1" class='tabc_div'>
		 <div id='grid_1' class='grid_div'>
			 <div id="dg_1" class="slick-grid"></div>
		 </div>
	</div>
    <!--한번에 미리 설정-->
    <div id="ctab_1">
		<div id='tabsub_1' class='tabc_div'>
			<div id="grid_1" class='grid_div'>
				<div id="dg_1" class="slick-grid"></div>
			</div>
		</div>
		<div id='tabsub_2' class='tabc_div'>
			<div id="grid_2" class='grid_div'>
				<div id="dg_2" class="slick-grid"></div>
			</div>
		</div>
		<div id='tabsub_3' class='tabc_div'>
			<div id="grid_3" class='grid_div'>
				<div id="dg_3" class="slick-grid"></div>
			</div>
		</div>
		<div id='tabsub_4' class='tabc_div'>
			<div id="grid_4" class='grid_div'>
				<div id="dg_4" class="slick-grid"></div>
			</div>
		</div>
	</div>
</div>
<!-- tab js 파일에 설정 해야 완성됨-->
<script type="text/javascript">
        //x_InitForm2 function 에 기술함
        _X.Tabs(tabs_2, 0);   //tabs_2 을 탭으로 만듬
</script>

<!-- 참고사항  가로 -->
<div id='freeform2' class='detail_box ver2 has_title pl5' >
	<label style="display:block;margin-top: -25px;height: 25px;"></label>
	<div class='detail_row detail_row_bb'>
	<label class='detail_label w100'>특기사항</label>
		<div class='detail_input_bg' style="height: 115px">
			<textarea id="REMARKS2" ></textarea>
		</div>
	</div>
</div>

<!-- 참고사항  세로 -->
<div id='freeform' class='detail_box ver2'>
    <div class='detail_row detail_row_bb'>
      <label class='detail_label w30 tac' for='ISSUE_TEXT'>원</br></br>가</br></br>분</br></br>석</label>
      <div id='freeform_sub' class='detail_input_bg' style='height:400px'>
        <textarea id='ISSUE_TEXT' type='text' style="height: 400px;" ></textarea>
      </div>
    </div>
  </div>
<!-- 그리드등록작업헤서 해당필드값에 아래 같은 입력값을 입력하면 전체 체크할수 체크박스 생성
  <input type='checkbox' id='chk_yn1'>
-->
<!-- 해드 색상 변경시 
    <span style='color:blue;'>헤더</span>
-->
	<!--radio 버튼 -->
	<div class='option_label w100'>월간/년간</div>
	<div class='option_input_bg'>
		<input type='radio' name='S_RADIO' class='S_RADIO' value='M' checked>월간
		<input type='radio' name='S_RADIO' class='S_RADIO' value='Y'>년간
	</div>

<%  /**
    *------------------------------------------------
    *    javascript  설정방법																																					*/
    *------------------------------------------------
    */




<script type="text/javascript">
          
/*------------------------------------------------------------------------------*/
/* 기본																																					*/
/*------------------------------------------------------------------------------*/

//JSP 페이지 설정
function x_InitForm2(){

    _X.Tabs(tabs_1, 0);                      //tab 설정 
	x_SetProj_cd(S_PROJ_CD,null,false,null); //현장코드값 설정

    //버튼 click function  
    $("#btn_projfind").bind("click", function(){_X.FindUserProjCode(window,"G_PROJECT","", [mytop._CompanyCode, mytop._UserID]);});

	$("#btn_empfind").bind("click", function(){
		_HR.FindEmpno(window,"FindEmpno","", ['%', mytop._CompanyCode, S_EMPLOYEE_DIV.value]);
	});

	_X.InitGrid(grid_parent, "dg_parent", "100%", "100%", "sm", "SM050900", "SM050900|C_SM050900_01", false, true);
	_X.InitGrid(grid_child, "dg_child", "100%", "100%", "sm", "SM050900", "SM050900|C_SM050900_02", false, true);
}

function x_InitForm3(){
	_X.Tabs(tabs_2, 0)
	x_SetProj_cd(S_PROJ_CD,null,false,null);

	//버튼 click function  
    $("#btn_projfind").bind("click", function(){_X.FindUserProjCode(window,"G_PROJECT","", [mytop._CompanyCode, mytop._UserID]);});

	$("#btn_empfind").bind("click", function(){
		_HR.FindEmpno(window,"FindEmpno","", ['%', mytop._CompanyCode, S_EMPLOYEE_DIV.value]);
	});

	_X.InitGrid(grid_parent, "dg_parent", "100%", "100%", "sm", "SM050900", "SM050900|C_SM050900_01", false, true);
	_X.InitGrid(grid_child, "dg_child", "100%", "100%", "sm", "SM050900", "SM050900|C_SM050900_02", false, true);
}


// 그리드전제가 설정되게 나면 호출 되는 함수
function xe_GridLayoutComplete2(a_dg, ab_allcompleted){
	if(ab_allcompleted){
		
		// SQL 문 실행으로 자료를 가져옴
		var	comboData  = _X.XmlSelect("sm", "SM050100", "SM050100_R01", new Array(mytop._CompanyCode), "json2");

		//위에서 가져온 자료를 Grid 의 dropdown 에 값을 설정 해줌
		dg_child.SetCombo("SYS_ID", comboData);

        //조회조건 또는 FREEFORM 에 있는 SELECT TYPE 에 자료를 설정
        //파러미터 object, data, a_default:디톨트값, ab_code:코드+명칭, ab_all:전체포함유무, a_alltext:전체일때들어가는명칭(전체,선택 중택일))
        _X.DDLB_SetData(S_SYS_ID, comboData, null, false, false);
        
        //그리드 필드에 AUTO 로 되어 있는경우 계산처리
        dg_1.SetAutoFooterValue("DAY_QTY", function(i, e) {
	  	var ls_num = 0;
	  	for(i=1,ii=dg_1.RowCount(); i <= ii; i++){
			ls_num += dg_1.GetItem(i,'DAY_QTY');
			}
			return _X.FormatCommaPoint2( ls_num, 0, false );
		});

        //그리드 합계값  READ  해서 재계산 처리
		dg_1.SetAutoFooterValue("FNSH_RATE", function(i, e) {
			var a = dg_1.GetTotalValue("RECV_CNT", "SUM", "number");
			var b = dg_1.GetTotalValue("FNSH_CNT", "SUM", "number");

		return Math.floor( (b / a) * 100 );
		});

        //grid 가 다 로드된후 조회 함수를 호출함
		setTimeout('x_DAO_Retrieve(dg_parent)',0);  //
	
    }
	return 0;
}

//자료조회
function x_DAO_Retrieve2(a_dg){
    //param 주는 방식 2개 
    1.ARRAY 
	    param = new Array(mytop._CompanyCode, is_admin, S_FIND.value == "" ? '%' : S_FIND.value);
    2.[]
    param = [mytop._CompanyCode, is_admin, S_FIND.value == "" ? '%' : S_FIND.value];
	
    dg_parent.Retrieve(param);

    //여러개인 경우(구분하여 처리)
    if(a_dg==dg_1){

    }

	return 0;
}

//grid ROW 를 선택했을떄 발생되는 함수
function xe_GridRowFocusChanged2(a_dg, a_newrow){
	if(a_dg == "dg_child"){
		param = new Array(top._CompanyCode,dg_parent.GetItem(dg_parent.GetRow(),"USER_GROUP_CODE"),S_SYS_ID.value,'%');
		dg_child.Retrieve(param);
	}
	return 100;
}

//탭 선택하였을때 발생 하는 함수
function xe_TabChanged2(a_tab, a_new_idx, a_old_idx, a_new_tab, a_old_tab){
  Tab_no = a_new_idx;
  switch(a_new_idx){
    case  0:
        _X.ResetGrid(dg_1, columns_dg_1, null, null, "AP02090|AP02090_01");
        break;
      case  1:
      _X.ResetGrid(dg_1, columns_dg_2, null, null, "AP02090|AP02090_01");
        break;
      case  1:
      _X.ResetGrid(dg_1, columns_dg_3, null, null, "AP02090|AP02090_01");
        break;
  }
  x_DAO_Retrieve(dg_1);
  //사이즈가 탭별로 상이한경우
  xe_BodyResize();
  return 100;
}

function remarks() {
	//가타
	//3. sql 값 가죠오기
	var ll_slipseq = Number(_X.XmlSelect("ap", "AP02030", "AP02030_R05", [ls_slipdate,mytop._CompanyCode,"AP",mytop._DeptCode],"array"));
	if(ll_slipseq==0) {
		_X.MsgBox("전표순번확인","전표순번이 존재하지 않습니다.");
		return;

	}

	//이전소스 찾을떄 (공통함수)
	ac.GetPreamtCash
	mm_comm.src
	ac_comm.src

	sql 문 안에 SM_COMCODE_D 테이블인 경우를 제외한 경우만 요청

	나머지는 아래참조  params="MM|MPRODUCT" // 시스템(단위업무),코드구분명

	<div class='option_label'>제품</div>
	<div class='option_input_bg'>
		<html:select name="S_PRODUCTNAME" id = "S_PRODUCTNAME" comCodeYn="0" codeGroup="com|COMMON|SM_COMCODE_D_S01" params="MM|MPRODUCT" dispStyle="1" selected="1"></html:select>
	</div>

	//공통코드외 요청(HR:인사)
	<div class='option_label'>사원구분</div>
	<div class='option_input_bg'>    //params="08|%|" 코드구분,직원구분,코드명
		<html:select name="S_EMPLOY_DIV" id = "S_EMPLOY_DIV" comCodeYn="0" codeGroup="hr|hrCOMMON|REF_GBN_CODE_EMPDIV" params="08|%|" dispStyle="1" selected="1"></html:select>
	</div>

	//기타 인사코드 //params="08" 코드구분
	<html:select name="S_DIVIDE" id = "S_DIVIDE" comCodeYn="0" codeGroup="hr|hrCOMMON|REF_GBN_CODE_S01" params="08" dispStyle="1" selected="1"></html:select>
}

