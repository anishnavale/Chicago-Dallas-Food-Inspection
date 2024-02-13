--Date Dimension Loader Procedure
CREATE TABLE dbo.DIM_Date(
    date_sk                 int             NOT NULL,
    full_date_ak            date            NOT NULL,
    day_number_of_week      int             NOT NULL,
    day_name_of_week        nvarchar(10)    NOT NULL,
    day_number_of_month     int             NOT NULL,
    day_number_of_year      int             NOT NULL,
    week_number_of_year     int             NOT NULL,
    month_name              nvarchar(10)    NOT NULL,
    month_number_of_year    int             NOT NULL,
    calendar_quarter        int             NOT NULL,
    calendar_year           smallint        NOT NULL,
    CONSTRAINT PK__Dim_Date__A4262D75D6BC5B9B PRIMARY KEY NONCLUSTERED (date_sk)
)




/****** Object:  StoredProcedure [dbo].[date_dimension_loader]    Script Date: 20-02-2023 07:56:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[date_dimension_loader](
	@startdate as date,
	@enddate as date
)
as
begin

	WHILE @startdate <= @enddate
	BEGIN
		insert into dbo.DIM_Date 
		select
			convert(varchar(10), @startdate, 112) as date_sk,
			@startdate as full_date_ak,
			datepart(weekday, @startdate) as day_number_of_week ,
			datename(weekday, @startdate) as day_name_of_week ,
			datename(day, @startdate) as day_number_of_month ,    
			datename(dayofyear, @startdate) as day_number_of_year ,    
			datename(week, @startdate) as week_number_of_year    , 
			datename(month, @startdate) as month_name ,             
			datepart(month, @startdate) as month_number_of_year  ,  
			datename(quarter, @startdate) as calendar_quarter  ,      
			datename(year, @startdate) as calendar_year
		SET @startdate = dateadd(day, 1, @startdate);
	END       
end
GO

exec dbo.date_dimension_loader '1900-01-01', '2100-12-31';