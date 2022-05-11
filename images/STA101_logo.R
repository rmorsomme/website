
library(tidyverse)

set.seed(3)

n <- 20
tibble(
  y = rnorm(3*n),
  g = rep(1:3, rep(n,3))
) %>%
  ggplot(aes(y=y, group = g, fill = g)) +
  geom_boxplot() +
  theme_void() +
  theme(
    legend.position = "none",
    plot.title = element_text(hjust = 0.5, size = 20)
    ) +
  labs(title = "STA101L")
#ggsave("logo.jpg")
