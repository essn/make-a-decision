class ChangePrivateDefaultValueOnDecisions < ActiveRecord::Migration
  def change
    remove_column :decisions, :private
    add_column :decisions, :private, :boolean, default: false
  end
end
