# 식품 정보 데이터

# 5월 식품들의 총매출 조회하기
# FOOD_PRODUCT와 FOOD_ORDER 테이블에서 생산일자가 2022년 5월인 식품들의 식품 ID, 식품 이름, 총매출을 조회하는 SQL문을 작성해주세요. 이때 결과는 총매출을 기준으로 내림차순 정렬해주시고 총매출이 같다면 식품 ID를 기준으로 오름차순 정렬해주세요.

SELECT  fp.product_id, fp.product_name, sum(price*amount) as total_sales
FROM food_product fp, food_order fo 
WHERE fp.product_id = fo.product_id AND SUBSTRING(produce_date,6,2)='05'
GROUP BY fp.product_id, fp.product_name
ORDER BY total_sales DESC, fp.product_id ASC;