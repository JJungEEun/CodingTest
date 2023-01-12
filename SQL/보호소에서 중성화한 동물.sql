# 동물 보호소 데이터

# 보호소에서 중성화한 동물
# 보호소에서 중성화 수술을 거친 동물 정보를 알아보려 합니다. 보호소에 들어올 당시에는 중성화1되지 않았지만, 보호소를 나갈 당시에는 중성화된 동물의 아이디와 생물 종, 이름을 조회하는 아이디 순으로 조회하는 SQL 문을 작성해주세요.

SELECT i.animal_id, i.animal_type, i.name 
FROM animal_ins i, animal_outs o 
WHERE i.animal_id = o.animal_id 
    AND SUBSTRING(sex_upon_intake,1,6) = 'Intact' 
    AND (SUBSTRING(sex_upon_outcome,1,8) = 'Neutered' OR SUBSTRING(sex_upon_outcome,1,6) = 'Spayed') ;