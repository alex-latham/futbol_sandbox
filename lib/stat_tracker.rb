require_relative 'game'
require_relative 'team'
require_relative 'game_team'
require_relative 'game_stats'
require_relative 'league_stats'
# require_relative 'season_stats'
# require_relative 'team_stats'
require_relative './modules/data_loadable'

class StatTracker
  include DataLoadable

  def self.from_csv(file_paths)
    StatTracker.new(file_paths)
  end

  def initialize(file_paths)
    @games = csv_data(file_paths[:games], Game)
    @teams = csv_data(file_paths[:teams], Team)
    @game_teams = csv_data(file_paths[:game_teams], GameTeam)
    @game_stats = GameStats.new(@games)
    @league_stats = LeagueStats.new(@games, @game_teams, @teams)
    # @season_stats = SeasonStats.new(@games, @game_teams, @teams)
    # @team_stats = TeamStats.new(@games, @game_teams, @teams)
  end

  def *
    * = method
    method
  end

  def highest_total_score
    @game_stats.highest_total_score
  end

  def lowest_total_score
    @game_stats.lowest_total_score
  end

  def biggest_blowout
    @game_stats.biggest_blowout
  end

  def percentage_home_wins
    @game_stats.percentage_home_wins
  end

  def percentage_visitor_wins
    @game_stats.percentage_visitor_wins
  end

  def percentage_ties
    @game_stats.percentage_ties
  end

  def count_of_games_by_season
    @game_stats.count_of_games_by_season
  end

  def average_goals_per_game
    @game_stats.average_goals_per_game
  end

  def average_goals_by_season
    @game_stats.average_goals_by_season
  end

  def count_of_teams
    @league_stats.count_of_teams
  end

  def best_offense
    @league_stats.best_offense
  end

  def worst_offense
    @league_stats.worst_offense
  end

  # def best_defense
  #   @league_stats.best_defense
  # end

  # def worst_defense
  #   @league_stats.worst_defense
  # end

  def highest_scoring_visitor
    @league_stats.highest_scoring_visitor
  end

  def highest_scoring_home_team
    @league_stats.highest_scoring_home_team
  end

  def lowest_scoring_visitor
    @league_stats.lowest_scoring_visitor
  end

  def lowest_scoring_home_team
    @league_stats.lowest_scoring_home_team
  end

  def winningest_team
    @league_stats.winningest_team
  end

  def best_fans
    @league_stats.best_fans
  end

  def worst_fans
    @league_stats.worst_fans
  end

  # def biggest_bust(season)
  #   @season_stats.biggest_bust(season)
  # end
  #
  # def biggest_surprise(season)
  #   @season_stats.biggest_suprise(season)
  # end
  #
  # def winningest_coach(season)
  #   @season_stats.winningest_coach(season)
  # end
  #
  # def worst_coach(season)
  #   @season_stats.worst_coach(season)
  # end
  #
  # def most_accurate_team(season)
  #   @season_stats.most_accurate_team(season)
  # end
  #
  # def least_accurate_team(season)
  #   @season_stats.least_accurate_team(season)
  # end
  #
  # def most_tackles(season)
  #   @season_stats.most_tackles(season)
  # end
  #
  # def fewest_tackles(season)
  #   @season_stats.fewest_tackles(season)
  # end
  #
  # def team_name(team_id)
  #   @team_stats.team_name(team_id)
  # end
  #
  # def best_season(team_id)
  #   @team_stats.best_season(team_id)
  # end
  #
  # def worst_season(team_id)
  #   @team_stats.worst_season(team_id)
  # end
  #
  # def average_win_percentage(team_id)
  #   @team_stats.worst_win_percentage(team_id)
  # end
  #
  # def most_goals_scored(team_id)
  #   @team_stats.most_goals_scored(team_id)
  # end
  #
  # def fewest_goals_scored(team_id)
  #   @team_stats.fewest_goals_scored(team_id)
  # end
  #
  # def favorite_opponent(team_id)
  #   @team_stats.favorite_opponent(team_id)
  # end
  #
  # def rival(team_id)
  #   @team_stats.rival(team_id)
  # end
  #
  # def biggest_team_blowout(team_id)
  #   @team_stats.biggest_team_blowout(team_id)
  # end
  #
  # def worst_loss(team_id)
  #   @team_stats.worst_loss(team_id)
  # end
  #
  # def head_to_head(team_id)
  #   @team_stats.head_to_head(team_id)
  # end
  #
  # def seasonal_summary(team_id)
  #   @team_stats.seasonal_summary(team_id)
  # end
end
