if(!require("pacman"))install.packages("pacman")
pacman::p_load("tidyverse", "here")
pacman::p_unload("pacman")

movies <- read_csv(here("movies", "2000.csv"))

movies <- list.files(here("movies")) %>%
  here("movies", .) %>%
  map(., read_csv)

movies <- list.files(here("movies")) %>%
  here("movies", .) %>%
  map(., read_csv) %>% 
  bind_rows()

specs <- spec_csv(here("movies", "2000.csv"))

list.files(here("movies")) %>%
  here("movies", .) %>%
  map(., read_csv, col_types = specs) %>% 
  bind_rows()

whats_here <- function(dir)here(dir, list.files(here(dir)))

movies <- whats_here("movies") %>% map_dfr(read_csv, col_types = specs)

whats_here <- function(dir){
  paths <- here(dir, list.files(here(dir)))
  names(paths) <- dir %>% here() %>% list.files() %>% str_split("\\.") %>% map_chr(1)
  return(paths)
}

movies <- whats_here("movies") %>% map_dfr(read_csv, col_types = specs, .id = "year")
