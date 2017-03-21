class CreateHomeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :homeworks do |t|

      t.string :title
      t.references :week, index: true, foreign_key: true

      t.timestamps
    end
  end
end
