class Ajoutcommentaires < ActiveRecord::Migration[5.0]

  def change

  	create_table :commentaires do |t|
      t.string :titre
      t.text :content
      t.references :user, foreign_key: true
      t.references :articles, foreign_key: true

  end
  end
end
