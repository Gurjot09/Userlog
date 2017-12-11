class RemoveStringToArticle < ActiveRecord::Migration[5.1]
  def change
  remove_column :articles, :string
  end
end
