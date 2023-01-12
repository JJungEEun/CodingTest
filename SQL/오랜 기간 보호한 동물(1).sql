# 동물 보호소 데이터

#오랜 기간 보호한 동물(1)
# 아직 입양을 못 간 동물 중, 가장 오래 보호소에 있었던 동물 3마리의 이름과 보호 시작일을 조회하는 SQL문을 작성해주세요. 이때 결과는 보호 시작일 순으로 조회해야 합니다.

SELECT i.name, i.datetime FROM animal_ins i LEFT OUTER JOIN animal_outs o
ON i.animal_id = o.animal_id
WHERE ISNULL(o.animal_id) = 1
ORDER BY i.datetime ASC limit 3;