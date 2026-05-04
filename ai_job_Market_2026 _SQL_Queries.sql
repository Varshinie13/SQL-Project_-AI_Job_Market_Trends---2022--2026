create database AI_JOB_MARKET_2026;
use  AI_JOB_MARKET_2026;
select * from ai_job_market_dataset;
SELECT * FROM ai_job_market_dataset LIMIT 10;
select count(*) as total_Records from ai_job_market_dataset;
alter table ai_job_market_dataset
	modify column Year YEAR;
insert into ai_job_market_dataset (Year, job_Title ,Country ,Company_Type ,
	Experience_Level, Salary_USD,remote ,Top_Skill)  
		values ( "2024", "Data Analyst", "Ireland", "Big Tech", "Mid", 32700, "No", "SQL");
select * from ai_job_market_dataset where Country = "Ireland";
set Sql_safe_updates = 0;
update ai_job_market_dataset set Company_Type = 'Tech Hub' where Country = "Ireland";
select * from ai_job_market_dataset where Country = "Ireland";
select job_title ,Country,  Company_Type from ai_job_market_dataset where Country = "Germany" and Company_Type = "Big Tech";
select count(job_title) as Total_Big_Company_Germany from ai_job_market_dataset where Country = "Germany" and Company_Type = "Big Tech";
select count(Company_type) as No_Of_Companies, Country from ai_job_market_dataset where company_type = "Big Tech" group by country;
select job_Title , ceil(avg(salary_USD)) avg_Salary from  ai_job_market_dataset group by job_Title having avg_Salary > 95000 ;
select year, Experience_level,job_Title from ai_job_market_dataset ;
select count(job_Title) as JOBS_Title, top_skill from ai_job_market_dataset group by top_skill ;
select count(job_Title) as JOBS_Title, top_skill from ai_job_market_dataset where top_skill = "SQL";

select year, job_title ,
if ( year > 2024 , 'Earlier Data','Historic data') as Job_Type_from_Year
	from ai_job_market_dataset;
    
alter table  ai_job_market_dataset add Column salary_Brackets varchar(100);
update ai_job_market_dataset set salary_Brackets = 
 case 
	when salary_USD >= 80000 then "High Pay"
    when salary_USD >= 50000 then "Medium pay"
    else 'Entry pay'
end ;
select * from  ai_job_market_dataset;
select distinct job_title, salary_Brackets from ai_job_market_dataset where salary_Brackets  = 'High pay';
use  AI_JOB_MARKET_2026;

delimiter //
create function GetYearlyStatus (Year year)
returns Varchar(100)
deterministic
begin 
	declare Status_label varchar(20);
    if Year< 2026 then 
		set Status_label = 'Historical';
	elseif Year = 2026 then 
		set Status_label = 'Current';
	else
		set Status_label = 'projected ';
	end if;
return Status_Label;
end//
delimiter ;

select job_title, Year, GetYearlyStatus(Year) from ai_job_market_dataset;
delimiter //
create function Categorizeskills(Skill_Name Varchar(100))
returns Varchar(100)
deterministic
begin 
	declare Category varchar(100);
  set category = case  
	when Skill_Name = 'SQL' Then 'Database_management '
	when Skill_Name = 'Python' Then 'General Programming '
	when Skill_Name in ( 'NLP','TensorFlow','PyTorch') Then 'Deep Learning and AI'
    else 'Other Technical'
end;
return Category;
end//
delimiter ;

select distinct top_Skill, Categorizeskills(Top_Skill) as Skill_Group from ai_job_market_dataset;

select distinct top_Skill from ai_job_market_dataset;

select job_Title, Salary_USD ,
	if (Salary_USD > (select avg(Salary_USD) from  ai_job_market_dataset), 'Above Average Salary','Below Average Salary ') as Avg_Salary_Status 
		from ai_job_market_dataset;

select job_Title , Country, remote from  ai_job_market_dataset
	where remote  in (select remote from ai_job_market_dataset where remote = 'Yes');


select * from ai_job_market_dataset;


Delimiter //
create procedure GetSalaryBracketsStatus (in salary_Bracket varchar(100)) 
begin 
	 select * from ai_job_market_dataset 
		where Salary_Brackets = salary_Bracket;
end//
Delimiter ;

call GetSalaryBracketsStatus('High Pay');

select Country , job_Title from ai_job_market_dataset where exists (select Country from ai_job_market_dataset where Country = 'India');

create or replace view Avg_Salary_Per_Job as 
	select job_Title ,Avg(Salary_USD) as Avg_Salary from ai_job_market_dataset  group by  job_Title; 

select * from Avg_Salary_Per_Job;


delimiter //
create trigger before_Delete_job_Title before delete on ai_job_market_dataset for each row 
 begin 
	 signal sqlstate '45000'
     set Message_Text = 'Deletion is Strictly prohibited in the dataset to maintain Integrity';
end //
delimiter ;
set sql_safe_updates = 0 ;
delete from ai_job_market_dataset where job_Title = 'Data Analyst';

create index Name_Index on ai_job_market_dataset(Country) ;
show index from  ai_job_market_dataset;


