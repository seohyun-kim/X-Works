```html


<div id='topsearch' class='option_box2' >

    <div class='option_label'>사원구분</div>
    <div class='option_input_bg'>
            <html:select name="S_EMPLOY_DIV" id = "S_EMPLOY_DIV" comCodeYn="0" codeGroup="hr|hrCOMMON|REF_GBN_CODE_EMPDIV" params="08|%|" dispStyle="1" selected="1"></html:select>
    </div>

	<div class='option_label'>기준년월</div>
	<div class='option_input_bg'>
	        <html:basicdate id="dateimages" classType="option" dateType="month" moveBtn="true" readOnly="true"></html:basicdate>
	</div>

	<div class='option_label'>지급구분</div>
    <div class='option_input_bg'>
            <select id="S_PAYKIND" class="option_input_fix"  style='width:80px;' >
                    <option value = '%'>전체</option>
                <option value = 'B'>상여</option>
                <option value = 'I'>인센티브</option>         
                <option value = 'P'>급여</option>     
                <option value = 'S'>성과급</option>                         
            </select>
            <span style="margin-left: 25px;"></span>

    </div>

    <div class='option_label'>사번성명</div>
    <div class='option_input_bg' style='margin-top:-2px; height:30px;'>
        <div class='option_input_bg'><input id='S_EMPCODE' type='text' class='option_input_fix'></div>  
    </div>
    
	<div id='xbtns'>
		<html:authbutton id='buttons' grid='dg_1'></html:authbutton>
	</div>

</div>
```