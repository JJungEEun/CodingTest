# 동물 보호소 데이터

# 없어진 기록 찾기
# 천재지변으로 인해 일부 데이터가 유실되었습니다. 입양을 간 기록은 있는데, 보호소에 들어온 기록이 없는 동물의 ID와 이름을 ID 순으로 조회하는 SQL문을 작성해주세요.

SELECT o.animal_ID, o.name FROM animal_ins i RIGHT OUTER JOIN animal_outs o ON i.animal_id = o.animal_id
WHERE isnull(i.animal_id) = 1;