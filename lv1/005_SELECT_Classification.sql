-- 문제: 대장균의 크기에 따라 분류하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/299307
-- 핵심 개념: CASE WHEN, IF절
-- 메모: SELECT 절에 CASE WHEN 혹은 IF 절을 사용하여 추출

1) CASE WHEN 활용
SELECT ID,
  (CASE
    WHEN SIZE <=100 THEN 'LOW'
    WHEN SIZE <= 1000 THEN 'MEDIUM'
    ELSE 'HIGH' END) AS SIZE
FROM ECOLI_DATA
ORDER BY ASC;

2) IF절 활용
SELECT ID,
  IF(SIZE <=100, 'LOW', IF(SIZE <=1000, 'MEDIUM', 'HIGH'))
  AS SIZE
FROM ECOLI_DATA
ORDER BY ID ASC;

