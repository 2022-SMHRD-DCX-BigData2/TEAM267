select * from t_member;
select * from t_closet;
select * from t_fdata where f_cate=1 and f_brand= '호킨스';
SELECT distinct c_cate from t_cdata
SELECT distinct f_brand from t_fdata;
select * from t_cdata where c_cate=1

SELECT f_brand, COUNT(f_brand),f_cate FROM t_fdata
where f_cate=1
GROUP BY f_brand
HAVING COUNT(f_brand) > 30;

SELECT closet_name, closet_img
FROM t_closet
WHERE mem_id = ''


SELECT * FROM INFORMATION_SCHEMA.TABLES where TABLE_SCHEMA='team267';


SELECT closet_name, closet_img FROM t_closet WHERE mem_id = 

insert into t_closet(closet_seq,mem_id,closet_name,closet_img)
values ('1','admin','시범이름','https://image.a-rt.com/art/product/2022/11/03290_1668653717413.jpg')

SELECT closet_name, closet_img FROM t_closet WHERE mem_id = 'admin'

update t_closet set closet_img='https://image.a-rt.com/art/product/2022/11/03290_1668653717413.jpg'
where  mem_id = 'admin'

select * from t_member;
