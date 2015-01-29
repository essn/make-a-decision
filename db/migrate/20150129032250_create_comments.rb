class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :decision, index: true
      t.references :user, index: true
      t.date :created_at


      t.timestamps
    end
  end
end
