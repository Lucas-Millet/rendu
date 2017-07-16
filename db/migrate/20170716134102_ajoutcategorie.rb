class Ajoutcategorie < ActiveRecord::Migration[5.0]
  def change
  	 create_table :category do |t|
      t.string :title
     
      

      end
  end
end
