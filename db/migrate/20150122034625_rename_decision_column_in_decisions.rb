class RenameDecisionColumnInDecisions < ActiveRecord::Migration
  def change
    remove_column :decisions, :decision
    add_column :decisions, :final_decision, :string
  end
end
