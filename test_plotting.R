library(ggplot2)
hist(diamonds$carat)

# my first git plot
ggplot(diamonds, aes(x=carat, y=price, color=cut)) +
  geom_point() +
  geom_smooth()

# nicer plot
ggplot(diamonds, aes(x=carat, y=price, color=cut)) +
  geom_point() +
  geom_smooth() +
  facet_wrap( ~ cut, ncol=3)
