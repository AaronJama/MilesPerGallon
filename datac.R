library(tidyverse)

data()
View(mpg)

?filter
filter(mpg, cty >= 20)
mpg_efficient <- filter(mpg, cty >= 20)
View(mpg_efficient)

mpg_ford <- filter(mpg, manufacturer== "ford")

mpg_metric <- mutate(mpg, cty_metric = 0.425144 * cty)

mpg_metric <- mpg %>%
  mutate(cty_metric = 0.425144 * cty)


mpg %>% 
  group_by(class) %>% 
  summarize(mean(cty),
            median(cty))

ggplot(mpg, aes(x= cty, y= hwy, color= class)) +
  geom_point() +
  scale_color_brewer(palette = "Dark2")