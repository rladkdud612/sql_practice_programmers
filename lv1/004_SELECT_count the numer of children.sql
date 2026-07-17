-- 문제: 대장균들의 자식의 수 구하기
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/299305
-- 핵심 개념: COUNT, LEFT JOIN, GROUP BY
-- 메모: LEFT JOIN을 활용하여 자식이 없는 경우도 포함시켜야함. GROUP BY로 각 대장균의 수 구함.
-- 서브쿼리 방법도 사용 가능

-- 1) LEFT JOIN 활용
SELECT A.ID, COUNT(B.ID) AS CHILD_COUNT
FROM ECOLI_DATA A
LEFT JOIN ECOLI_DATA B ON A.ID = B. PARENT_ID
GROUP BY A.ID
ORDER BY A.ID;

-- 2) 서브쿼리 활용
SELECT ID, (SELECT COUNT(*) FROM ECOLI_DATA WHERE PARENT_ID=A.ID) AS CHILD_COUNT
FROM ECOLI_DATA A
ORDER BY ID;

-- 스칼라 서브쿼리 방식은 GROUP BY가 필요하지 않은 이유:
-- 메인 쿼리가 테이블을 위에서부터 한 행씩 차례대로 읽어 내려가면서 즉석에서 계산
-- 즉, '개별 행 중식' 방식이기 때문
