class CreateSubmittedHomeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :submitted_homeworks do |t|

      t.references :homework, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.string :img

      t.timestamps
    end
  end
end
