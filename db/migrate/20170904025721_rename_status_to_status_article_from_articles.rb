class RenameStatusToStatusArticleFromArticles < ActiveRecord::Migration[5.0] 
  def change 
         #migration definitions :tabel, :kolom_lama, :kolom_baru
  	rename_column :articles, :status, :status_article 
  end 
end 