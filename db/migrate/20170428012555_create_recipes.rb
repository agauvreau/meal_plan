class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps null: false
    end
    #prevent save user to have recipe with same name. allows same name with different users
    add_index :recipes, [:user_id, :name]
  end
end
