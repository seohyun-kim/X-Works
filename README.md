# 작업참조 1 - 기본 HTML

### 1. 현장명 목록 조회  

![image](https://user-images.githubusercontent.com/61939286/133906101-d814fc22-91c8-48a1-abfc-fed5176c7389.png)  

.jsp
```jsp
<div class="option_label w100">현장명</div>
<div class="option_input_bg">
                <select id="S_PROJ_CD" class="option_input_fix"></select>
                <span style="margin-left: 25px;"></span>
</div>
```

.js
```js
function x_InitForm2() {
	x_SetProj_cd(S_PROJ_CD,null,true,null);
}
```

<br>  

### 2. 날짜(년도, 월, 일)  

#### (1). 기준 조회  
![image](https://user-images.githubusercontent.com/61939286/133906176-2f83268b-cf24-4783-8ecb-6f367b5cd02e.png)  

.jsp  

```jsp
<div class='option_label'>기준년도</div>
<div class='option_input_bg'>
        <html:basicdate id="dateimages" classType="option" dateType="year" moveBtn="true" readOnly="true"></html:basicdate>
</div>

dateType에서 year, month, date 알맞게 쓰면 됨  
```  
#### (2). 기간 조회  
![image](https://user-images.githubusercontent.com/61939286/133906440-f72d7319-1d53-4f5c-943f-5dede7db8efe.png)  

.jsp
```jsp
<div class='option_label'>기준년월</div>
<div class='option_input_bg'>
        <html:fromtodate id="dateimages" classType="option" dateType="month" moveBtn="true" readOnly="true"></html:fromtodate>
</div>
 ```


<br>  
  

### 3. 콤보박스 수동입력  
> 구 코드가 `+	pthtml.Select('ddlb_div', '%|Y|N', '전체|신규|변경', '%', 80, false)` 이런식인 경우  

![image](https://user-images.githubusercontent.com/61939286/133906247-dc932605-bacc-4d97-89fe-cfdb605723a8.png)  

.jsp
```jsp
<div class='option_label'>구분</div>
<div class='option_input_bg'>
    <select id="DDLB_HALF" class="option_input_fix"  style='width:80px;' >
            <option value = '%'>전체</option>
            <option value = '1'>신규</option>         
            <option value = '2'>변경</option>                           
    </select>
    <span style="margin-left: 25px;"></span>

</div>
```
<br>  


### 4. 검색란  

![image](https://user-images.githubusercontent.com/61939286/133906342-28ac5b87-e7b7-4cd8-a834-77b85696cf38.png)  

```jsp
<div class='option_label'>찾기</div>
<div class='option_input_bg'><input id='S_DEPT_FIND' type='text' class='option_input_fix'></div>  
```

<br>  

### 5. 체크박스  
![image](https://user-images.githubusercontent.com/61939286/133906470-6753bedf-a32d-43d7-bde6-e0c9e416e647.png)  
.jsp
```jsp
<div class='option_label'>찾기</div>
<div class='option_input_bg'><input id='S_DEPT_FIND' type='text' class='option_input_fix'></div>  
 ```
<br>  

### 6. 라디오버튼  
```jsp
<div class='option_label w100'>월간/년간</div>
<div class='option_input_bg'>
<input type='radio' name='S_RADIO' class='S_RADIO' value='M' checked>월간
<input type='radio' name='S_RADIO' class='S_RADIO' value='Y'>년간
</div>
```
<br>  

### 7. 화살표 표시  
```jsp
<button type="button" id='seq_up' class="btn btn-primary btn-xs" onClick="_X.RowMove(dg_2,'UP','POS_ORD');">↑</button>
<button type="button" id='seq_down' class="btn btn-primary btn-xs mr10" onClick="_X.RowMove(dg_2,'DOWN','POS_ORD');">↓</button>
```

<br>  

### 8. 버튼  

#### 기본  
![image](https://user-images.githubusercontent.com/61939286/133906592-ebcf6cb8-483a-4495-8f07-43061eb6c17c.png)  
```jsp
<div style='float:right;margin-right:5px;margin-top:3px;'>
    <button type="button" id='btn_approval_report'  class="btn btn-primary btn-xs" onClick="uf_approval_add();">결재상신</button>
</div>
```

#### 오른쪽에 붙이는 경우  
![image](https://user-images.githubusercontent.com/61939286/133906579-b9e25c86-88e7-4e8a-aeb0-84d52d8d91c5.png)  

```jsp
<div style='float:right;margin-right:5px;margin-top:3px;'>
    <button type="button" id='btn_approval_report'  class="btn btn-primary btn-xs mr10" onClick="uf_approval_add();">일괄적용</button>
    <div id='xbtns'>
            <html:authbutton id='buttons' grid='dg_1'></html:authbutton>
    </div>        
</div>
 ```  
 
 #### 왼쪽에 붙이는 경우  
 ![image](https://user-images.githubusercontent.com/61939286/133906609-20bfab73-abca-4d89-a9c2-6e9fc31b8ac2.png)

```jsp
<div style='float:left;margin-left:5px;margin-top:3px;'>
    <button type="button" id='btn_approval_report'  class="btn btn-primary btn-xs" onClick="uf_approval_add();">복사</button>
</div>
 ```

### 9. 서브타이틀

#### 그리드 두개에 서브타이틀 붙어있는 경우  
![image](https://user-images.githubusercontent.com/61939286/133906684-20860f90-bcc9-4617-a6c6-4601715195b4.png)  

```jsp  
<div id="form" class="grid_div has_title">
  <label class="sub_title">기성청구 현황</label>

      <div id='grid_2' class='grid_div mt5 mr5'>
              <div id='dg_2' class='slick-grid'></div>
      </div>

      <div id='grid_3' class='grid_div mt5'>
              <div id='dg_3' class='slick-grid'></div>
      </div>
</div>
```









 
 
 





