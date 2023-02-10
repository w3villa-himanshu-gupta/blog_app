class CreateArticlees < ActiveRecord::Migration[6.1]
  def change
    create_table :articlees do |t|
      # t.column :id , 'int(11) PRIMARY KEY'
      t.string :title
      t.text :description
      t.references :user , null: false ,foreign_key: true

      t.timestamps
    end
  end
end
