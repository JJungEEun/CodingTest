# 도서 데이터

# 저자 별 카테고리 별 매출액 집계하기
# 2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력하는 SQL문을 작성해주세요.
결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬해주세요.

SELECT a.author_id, author_name, category, sum(sales*price) as sales FROM book_sales bs, book b, author a
WHERE MONTH(bs.sales_date) = '1' and bs.book_id=b.book_id and a.author_id = b.author_id
GROUP BY a.author_id, category
ORDER BY a.author_id, category DESC;