# 아이스크림 가게 데이터

# 주문량이 많은 아이스크림들 조회하기
# 7월 아이스크림 총 주문량과 상반기의 아이스크림 총 주문량을 더한 값이 큰 순서대로 상위 3개의 맛을 조회하는 SQL 문을 작성해주세요.

select a.flavor 
from (select flavor, sum(total_order) as jo from july group by flavor) a,
     (select flavor, sum(total_order) as ho from first_half group by flavor) b
WHERE a.flavor = b.flavor
ORDER BY jo+ho DESC limit 3;