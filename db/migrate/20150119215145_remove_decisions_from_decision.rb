class RemoveDecisionsFromDecision < ActiveRecord::Migration
  def change
    drop_table :decisions do |t|
      t.string :decisions
    end 

    create_table :decisions do |t|
      t.string :decision
    end
  end
end
