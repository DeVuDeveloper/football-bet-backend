class GamesSerializer
  include FastJsonapi::ObjectSerializer

  meta do |game|
    {
      homeTeam: Team.find(game.home_team_id),
      awayTeam: Team.find(game.away_team_id)
    }
  end

  attributes :home_team_id, :away_team_id, :match_date, :match_time,
             :location, :street, :street_2, :city, :state, :country, :zip,
             :match_name, :one, :draw, :two, :one_draw, :two_draw, :winner
end
