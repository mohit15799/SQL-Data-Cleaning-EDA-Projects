Select * from layoffs_staging2;

select company, TRIM(company) from layoffs_staging2;

update layoffs_staging2
set company = TRIM(company);

select distinct industry from layoffs_staging2;

update layoffs_staging2
set industry = 'Crypto'
where industry like 'Crypto%';

select distinct country from layoffs_staging2 order by 1;

update layoffs_staging2
set country = 'United States'
where country like 'United States%';

select `date`, 
STR_TO_DATE(`date`, '%m/%d/%y') as Date
from layoffs_staging2;

update layoffs_staging2
set `date` = STR_TO_DATE(`date`, '%m/%d/%Y');

select * from layoffs_staging2;

Alter table layoffs_staging2
modify column `date` DATE;
