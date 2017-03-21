class CreateSubmittedHomeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :submitted_homeworks do |t|

      t.timestamps
    end
  end
end
