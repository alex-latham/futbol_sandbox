require './lib/stat_tracker'

games_path = './data/games.csv'
teams_path = './data/teams.csv'
game_teams_path = './data/game_teams.csv'

file_paths = {
  games: games_path,
  teams: teams_path,
  game_teams: game_teams_path
}

stat_tracker = StatTracker.from_csv(file_paths)
require 'pry'; binding.pry
