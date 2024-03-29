# 동물 보호소 데이터

# 이름이 있는 동물의 아이디
# 동물 보호소에 들어온 동물 중, 이름이 있는 동물의 ID를 조회하는 SQL 문을 작성해주세요. 단, ID는 오름차순 정렬되어야 합니다.
SELECT animal_id
FROM animal_ins
WHERE isnull(name) = 0
ORDER BY animal_id;