delete from layoffs_staging2
where total_laid_off is null and percentage_laid_off is null;

alter table layoffs_staging2
drop column row_num;