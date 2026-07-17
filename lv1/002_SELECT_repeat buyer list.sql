-- 문제: 재구매가 일어난 상품과 회원 리스트 구하기 lv.2
-- 링크: https://school.programmers.co.kr/learn/courses/30/lessons/131536
-- 핵심 개념: GROUP BY, HAVING, SELF JOIN
-- 메모: GROUP BY로 한 회원이 한 상품을 두 번 이상 구매한 경우를 찾기 위해 HAVING 절에서 COUNT를 사용함, GORUP BY와 DISTINCT를 함께 사용하는 것은 지양

SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(SALES_AMOUNT) >= 2
ORDER BY USER_ID ASC, PRODUCT_ID DESC;
