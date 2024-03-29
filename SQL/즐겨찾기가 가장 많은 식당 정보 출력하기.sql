# 식당 정보 데이터

# 즐겨찾기가 가장 많은 식당 정보 출력하기
# REST_INFO 테이블에서 음식종류별로 즐겨찾기수가 가장 많은 식당의 음식 종류, ID, 식당 이름, 즐겨찾기수를 조회하는 SQL문을 작성해주세요. 이때 결과는 음식 종류를 기준으로 내림차순 정렬해주세요.

select ri.food_type, rest_id, rest_name, favorites 
from rest_info ri, (SELECT food_type, max(favorites) as max_cnt FROM rest_info GROUP BY FOOD_TYPE) a
WHERE ri.food_type = a.food_type and ri.favorites = a.max_cnt
ORDER BY food_type DESC;