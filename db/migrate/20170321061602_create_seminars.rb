class CreateSeminars < ActiveRecord::Migration[5.0]
  def change
    create_table :seminars do |t|

      t.timestamps
    end
  end
end
