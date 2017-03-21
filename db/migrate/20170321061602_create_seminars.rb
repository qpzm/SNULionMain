class CreateSeminars < ActiveRecord::Migration[5.0]
  def change
    create_table :seminars do |t|

      t.string :title
      t.string :content
      t.string :document
      t.references :week, index: true, foreign_key: true

      t.timestamps
    end
  end
end
