class ChangeColumnBodyToArticles < ActiveRecord::Migration[5.0]
  def change
  	change_column :articles, :body, :text
  end
end
