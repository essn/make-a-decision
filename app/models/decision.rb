class Decision < ActiveRecord::Base
  belongs_to :user

  validates :dilemma, presence: true
end
