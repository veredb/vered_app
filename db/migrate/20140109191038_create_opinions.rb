class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      t.string :opinionator
      t.text :body
      t.references :post, index: true

      t.timestamps
    end
  end
end
