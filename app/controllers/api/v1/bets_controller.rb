class Api::V1::BetsController < ApplicationController
  def create
    id = JWT.decode(request.headers['Authorization'], ENV['PLAY_IT_SAFE'])[0]['identifier']
    @user = User.find(id)

    account = @user.accounts[0].balance.to_i
    account -= bet_params['amount'].to_i

    if @user && account >= 0

      @user.accounts[0].update(balance: account)
      @bet = Bet.create(user_id: @user.id, game_id: bet_params['game'],
                        wager: bet_params['amount'], odds: bet_params['odds'],
                        bet_type: bet_params['bet_type'])

      render json: UsersSerializer.new(@user).serialized_json, status: :ok
    end
  end

  private

  def bet_params
    params.require(:bet).permit(:amount, :odds, :game, :bet_type)
  end
end
