# 의류쇼핑몰 데이터

# 상품 별 오프라인 매출 구하기
# PRODUCT 테이블과 OFFLINE_SALE 테이블에서 상품코드 별 매출액(판매가 * 판매량) 합계를 출력하는 SQL문을 작성해주세요. 결과는 매출액을 기준으로 내림차순 정렬해주시고 매출액이 같다면 상품코드를 기준으로 오름차순 정렬해주세요.
SELECT  p.PRODUCT_CODE, sum(sales_amount*price) as sum_price
FROM PRODUCT p, OFFLINE_SALE os 
WHERE p.PRODUCT_ID = os.PRODUCT_ID
GROUP BY p.PRODUCT_CODE
ORDER BY sum_price DESC, PRODUCT_CODE ASC;

