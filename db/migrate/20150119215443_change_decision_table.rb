class ChangeDecisionTable < ActiveRecord::Migration
  def change
    change_table :decisions do |t|
      t.string :dilemma
      t.date :needed_by
      t.string :decision_importance
      t.string :indecisiveness_level
      t.text :best_case
      t.text :worst_case
      t.text :gut_feeling
      t.text :pluses
      t.text :minuses 
      t.string :intuitive_conclusion
      t.string :rational_conclusionr
      t.string :next_steps

      t.timestamps
    end
  end
end
