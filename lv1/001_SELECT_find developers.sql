-- 문제: 조건에 맞는 개발자 찾기 lv.2
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/276034
-- 핵심 개념: SELECT, 비트 AND 연산(&)
-- 메모: 처음엔 JOIN + GROUP BY + HAVING으로 접근했는데, 비트 연산을 활용하면 훨씬 간단하게 해결 가능

SELECT ID, EMAIL, FRIST_NAME, LAST_NAME
FROM DEVELOPERS
WHERE SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'Python') > 0
OR WHERE SKILL_CODE & (SELECT CODE FROM SKILLCODES WHERE NAME = 'C#') > 0
ORDER BY ID ASC;
