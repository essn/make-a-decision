class AddPipeDreamToDecision < ActiveRecord::Migration
  def change
    add_column :decisions, :pipe_dream, :boolean
    add_column :decisions, :apocalypse, :boolean
  end
end
