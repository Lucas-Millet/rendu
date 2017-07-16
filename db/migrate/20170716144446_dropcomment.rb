class Dropcomment < ActiveRecord::Migration[5.0]
  def change
  	drop_table :commentaires
  end
end
