class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.string :name
      t.string :email
      t.text :abstract
      t.text :notes
      t.text :bio
      t.references :track, index: true

      t.timestamps
    end
  end
end
