# 서점 데이터

# 조건에 맞는 도서와 저자 리스트 출력하기
# '경제' 카테고리에 속하는 도서들의 도서 ID(BOOK_ID), 저자명(AUTHOR_NAME), 출판일(PUBLISHED_DATE) 리스트를 출력하는 SQL문을 작성해주세요.
결과는 출판일을 기준으로 오름차순 정렬해주세요.

SELECT book_id, author_name, SUBSTRING(published_date,1,10)
FROM BOOK b, AUTHOR a 
WHERE b.AUTHOR_ID = a.AUTHOR_ID and CATEGORY = '경제'
ORDER BY published_date ASC;