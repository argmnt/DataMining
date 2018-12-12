View(mtcars)
lnmod <- lm(mpg~cyl~disp, data = mtcars)
scatter.smooth(mtcars$mpg, mtcars$cyl)