class Decision < ActiveRecord::Base
  belongs_to :user

  validates :dilemma, :needed_by, :decision_importance, :indecisiveness_level, :best_case,
            :worst_case, :gut_feeling, :pluses, :minuses, :intuitive_conclusion,
            :rational_conclusion, :next_steps, :final_decision, presence: true
end

