class DecisionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @decision = Decision.new
  end

  def create
    @decision = current_user.decisions.build(decision_params)
    if @decision.save
      redirect_to @decision
    else
      render action: 'new'
    end
  end 

  def index
    @decision.all
  end

  def show
    @decision = User.find(params[:user_id]).decisions.find(params[:id])
  end

  private

  def decision_params
    params.require(:decision).permit(:dilemma, :needed_by, :decision_importance, :indecisiveness_level, :best_case,
                                     :worst_case, :gut_feeling, :pluses, :minuses, :intuitive_conclusion,
                                     :rational_conclusion, :next_steps, :pipe_dream, :apocalypse, :final_decision)
  end
end
