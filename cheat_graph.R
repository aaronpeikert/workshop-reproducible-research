pacman::p_load("ggthemes")
movies %>% filter(!is.na(budget)) %>% ggplot(aes(year, budget)) + geom_point() + theme_minimal()
movies %>%
  filter(!is.na(budget), budget != 0) %>%
  group_by(year) %>% summarise(budget = max(budget)) %>%
  ggplot(aes(year, budget)) +
  geom_point() + 
  scale_y_log10() +
  theme_minimal()

movies %>% 
  filter(!is.na(budget), budget != 0) %>% 
  mutate(decade = year %>% as.character() %>% str_sub(1, 3) %>% paste0("0")) %>% 
  ggplot(aes(budget, rating, group = year)) +
  geom_point() +
  facet_wrap(~decade) +
  scale_x_log10() +
  theme_minimal()

movies %>%
  filter(!is.na(budget), budget != 0) %>%
  mutate(budget_log = log10(budget)) %>% 
  group_by(year) %>%
  do(lm = lm(rating ~ budget, data = .), n = NROW(.)) %>% 
  summarise(year = year,
            rsq = summary(lm)$r.squared, 
            n = n) %>% 
  filter(n > 10) %>% 
  ggplot(aes(year, rsq, size = n)) + geom_point() + theme_minimal()
