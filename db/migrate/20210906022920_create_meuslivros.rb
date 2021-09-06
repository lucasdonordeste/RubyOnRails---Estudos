class CreateMeuslivros < ActiveRecord::Migration[5.0]
  def change
    create_table :meuslivros do |t|
      t.string :nomedolivro
      t.text :resumo
      t.date :datadeinicio
      t.date :datedetermino

      t.timestamps
    end
  end
end
