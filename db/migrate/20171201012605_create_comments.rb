class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content, null: false, default: ""
      t.integer :post, index: true
      t.integer :user, index: true

      t.timestamps null: false
    end
  end
end
