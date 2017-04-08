class CreateRequetes < ActiveRecord::Migration[5.0]
  def change
    create_table :requetes do |t|
      t.string :nom

      t.timestamps
    end
  end
end
