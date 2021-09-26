# 작업참조2- GRID 관리  

### 1. 합계와 개수 카운트  
![image](https://user-images.githubusercontent.com/61939286/134514868-01d7ed0a-7190-4ac3-a540-fd10ab2b1988.png)


GRID 관리 -> 해당 필드의 frooterExpr에 SUM(합계) 또는 CNT(카운트) 를 써줌  
![image](https://user-images.githubusercontent.com/61939286/133906895-987c1b5b-f6aa-4db1-96bc-b149f7d61731.png)  

<br>  

### 2. 타이틀 스타일 변경  
grid관리 -> 타이틀 명 변경  
![image](https://user-images.githubusercontent.com/61939286/133906956-31ef0461-4541-4d9a-9a42-895a7e266758.png)  

글씨 오른쪽, 왼쪽 정렬
```jsp
<div style='text-align:right;'>계약</div>
<div style='text-align:left;'>기간</div>

(span tag는 안먹는듯)
```

빨간글씨
```jsp
<span style='color: red;'>선택</span>
```  
체크박스
```jsp
<input type='checkbox' id='check_yn_1'/>&nbsp;선택
```
