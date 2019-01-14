class CreateCitations < ActiveRecord::Migration[5.2]
  def change
    create_table :citations do |t|
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
