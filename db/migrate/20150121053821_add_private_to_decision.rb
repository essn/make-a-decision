class AddPrivateToDecision < ActiveRecord::Migration
  def change
    add_column :decisions, :private, :boolean
  end
end
