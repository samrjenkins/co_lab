class CreateContributions < ActiveRecord::Migration[5.2]
  def change
    create_table :contributions do |t|
      t.string :headline
      t.text :description
      t.references :requirement, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
