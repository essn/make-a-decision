# == Schema Information
#
# Table name: decisions
#
#  id                   :integer          not null, primary key
#  dilemma              :string(255)
#  needed_by            :date
#  decision_importance  :string(255)
#  indecisiveness_level :string(255)
#  best_case            :text
#  worst_case           :text
#  gut_feeling          :text
#  pluses               :text
#  minuses              :text
#  intuitive_conclusion :string(255)
#  rational_conclusion  :string(255)
#  next_steps           :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  user_id              :integer
#  pipe_dream           :boolean
#  apocalypse           :boolean
#  final_decision       :string(255)
#  private              :boolean          default(FALSE)
#

class Decision < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :comments

  validates :dilemma, :needed_by, :decision_importance, :indecisiveness_level, :best_case,
            :worst_case, :gut_feeling, :pluses, :minuses, :intuitive_conclusion,
            :rational_conclusion, :next_steps, :final_decision, presence: true

  default_scope { order('created_at DESC') }
end

