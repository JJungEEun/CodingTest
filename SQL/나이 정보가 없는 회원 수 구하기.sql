# 의류 쇼핑몰 데이터

# 나이 정보가 없는 회원 수 구하기
# USER_INFO 테이블에서 나이 정보가 없는 회원이 몇 명인지 출력하는 SQL문을 작성해주세요. 이때 컬럼명은 USERS로 지정해주세요.

SELECT  count(*) as users
FROM user_info
WHERE isnull(age) = 1;