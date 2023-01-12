# 식품창고 데이터

# 경기도에 위치한 식품창고 목록 출력하기
# FOOD_WAREHOUSE 테이블에서 경기도에 위치한 창고의 ID, 이름, 주소, 냉동시설 여부를 조회하는 SQL문을 작성해주세요. 이때 냉동시설 여부가 NULL인 경우, 'N'으로 출력시켜 주시고 결과는 창고 ID를 기준으로 오름차순 정렬해주세요.

SELECT  warehouse_id, warehouse_name, address, IFNULL(freezer_yn, 'N') as freezer_yn
FROM food_warehouse 
WHERE SUBSTRING(warehouse_name,4,2) ='경기'
ORDER BY warehouse_id;