class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :text
      t.string :string
      t.references :user, foreign_key: true, index:true

      t.timestamps
    end
  end
end
