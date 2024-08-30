select "X" = NULL;
select NULL = NULL;

select "X" IS NULL;
select "X" IS NOT NULL;

select NULL IS NULL;
select NULL IS NOT NULL;

set @x = NULL;
set @y = NULL;
select @x, @y, @x = @y;
select @x, @y, @x <=> @y;