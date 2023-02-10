class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name
      # t.string :articlee_id
      t.references :articlee , null: false ,foreign_key: true


      t.timestamps
    end
  end
end
