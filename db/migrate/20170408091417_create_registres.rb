class CreateRegistres < ActiveRecord::Migration[5.0]
  def change
    create_table :registres do |t|
      t.integer :site_id
      t.integer :requete_id

      t.timestamps
    end
  end
end
