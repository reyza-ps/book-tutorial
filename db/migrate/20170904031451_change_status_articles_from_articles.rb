class ChangeStatusArticlesFromArticles < ActiveRecord::Migration[5.0] 
  def change 
  	#migration_definition :tabel, :kolom, :type_data_yang_baru, :opsi_defaul 
  	change_column :articles, :status_article, :boolean, :default => true 
  end 
end 