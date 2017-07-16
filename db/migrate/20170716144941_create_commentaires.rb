class CreateCommentaires < ActiveRecord::Migration[5.0]
  def change
  	drop_table :commentaires
    create_table :commentaires do |t|
      t.string :titre
      t.text :content
      t.references :articles, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
