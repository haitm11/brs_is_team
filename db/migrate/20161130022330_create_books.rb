class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.date :publish_date
      t.integer :pages
      t.string :photo
      t.integer :sum_rate
      t.integer :sum_point
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
