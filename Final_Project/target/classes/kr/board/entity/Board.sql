select * from t_fdata;

select * from t_fdata where f_cate=1 and f_brand= '호킨스';

SELECT distinct f_brand from t_fdata;


SELECT f_brand, COUNT(f_brand),f_cate FROM t_fdata
where f_cate=1
GROUP BY f_brand
HAVING COUNT(f_brand) > 30;

SELECT closet_name, closet_img
FROM t_closet
WHERE mem_id = ''