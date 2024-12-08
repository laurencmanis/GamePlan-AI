############################################### DATA COLLECTION 01 ######################################################## 
########################################################################################################################### 
library(nflfastR)
library(dplyr)

######### 01. Phase II Fine-Tuning Data Collection: Game Logs ######### 

# Load in all play by play information for 2024 season games to date
pbp <- load_pbp() %>% arrange(week, game_date, game_id, play_id)

# Select play descriptions
pbp <- pbp %>% 
  select(game_id, game_date, week, away_team, home_team, play_id, posteam, defteam, desc) %>%
  rename('offense_team' = posteam, 'defense_team' = defteam, 'description' = desc) %>%
  filter(!is.na(description))

all_ids <- unique(pbp$game_id)

# Randomly select a game_id
gameid <- sample(all_ids, 1)
game <- pbp %>% filter(game_id == gameid)

# Re-create the game log using play descriptions
game_log <- game %>% select(description)

# Save as csv for later use
write.csv(game_log, '/Users/laurenmanis/Desktop/game_log.csv') 

######### 02. Phase I Fine-Tuning Data Collection: Player Information ######### 

# Create a dataframe of active players for pre-training
teams <- teams_colors_logos %>% select(team_abbr, team_name) %>% rename(team=team_abbr)

# Read in list of all-pros from the last 3 full seasons, retrieved from pro-football-reference   
all_pro <- read.csv('/Users/laurenmanis/Downloads/all-pros.csv') %>% 
  select(-Tm) %>% 
  mutate(all_pro = 1) %>%
  rename(full_name=Player, position=Pos)

# Select all active players and relevant information
players <- fast_scraper_roster(2024) %>% 
  left_join(teams, by='team') %>%
  left_join(all_pro, by=c('full_name','position')) %>%
  select(team, team_name, position, jersey_number, full_name, years_exp, rookie_year, all_pro) %>%
  replace(is.na(.), 0) %>%
  mutate(rookie = ifelse(rookie_year == 2024, 1, 0))

# Save as CSV
write.csv(players, '/Users/laurenmanis/Desktop/nfl_players.csv') 

######### 03. Model Evaluation & Full Season to Date Game Logs ######### 
all_logs_df <- pbp %>%
  group_by(game_id) %>%
  summarize(
    # Concatenate all play descriptions
    game_log = paste(description, collapse = "\n"),  
    .groups = "drop" 
  )

head(all_logs_df)

# Save as a CSV 
write.csv(all_logs_df, '/Users/laurenmanis/Desktop//Fall 2024/DS 5690 | Gen AI Models/all_game_logs.csv') 
