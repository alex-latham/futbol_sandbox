class Team
  attr_reader :team_id, :franchise_id, :team_name

  def initialize(team_data)
    @team_id = team_data[:team_id].to_i
    @franchise_id = team_data[:franchiseid].to_i
    @team_name = team_data[:teamname]
  end
end
