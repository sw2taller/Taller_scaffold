class CreateTransportes < ActiveRecord::Migration[5.1]
  def change
    create_table :transportes do |t|
      t.string :tipo
      t.string :placa
      t.string :color
      t.integer :modelo
      t.integer :cilindraje

      t.timestamps
    end
  end
end
