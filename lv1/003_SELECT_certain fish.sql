-- 문제: 특정 물고기를 잡은 총 수 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/298518
-- 핵심 개념: COUNT(*), WHERE IN, CASE WHEN 세가지 방법
-- 메모: 처음 CASE WHEN으로 접근했으나, WHERE IN으로 접근하는 것이 더 간단하고 효율적임
-- WHERE IN 안에서도 JOIN을 쓰는 방법과 서브쿼리를 쓰는 방법이 있음. 해당 문제에서는 JOIN이 더 간편

-- 1) CASE WHEN을 활용한 방법
SELECT SUM(CASE WHEN B.FISH_NAME = 'BASS' OR B.FISH_NAME = 'SNAPPER'
            THEN 1
            ELSE 0
            END) AS FISH_COUNT
FROM FISH_INFO A
JOIN FISH_NAME_INFO B ON A.FISH_TYPE = B.FISH_TYPE;

-- 2) WHERE IN 활용 (JOIN)
SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO A
JOIN FISH_NAME_INFO B ON A.FISH_TYPE = B.FISH_TYPE
WHERE B.FISH_NAME IN ('BASS', 'SNAPPER');

-- 3) WHERE IN 활용 (서브쿼리)
SELECT COUNT(*) AS FISH_COUNT
FROM FISH_INFO
WHERE FISH_TYPE IN (SELECT FISH_TYPE FROM FISH_NAME_INFO WHERE FISH_NAME IN ('BASS', 'SNAPPER'))

