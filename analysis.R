#Open libraries
library(tidyverse)

#Make dataset

df <- data.frame(x=rnorm(50, 23, 12), 
                 group = rep(c("gamepad", "mkb"),
                             each = 25))

df %>% 
  group_by(group) %>%
  summarise(mean=mean(x),
            n=length(x),
            sd=sd(x))
