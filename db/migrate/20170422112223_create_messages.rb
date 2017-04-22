class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.boolean :flag, default: true
      t.text :content, null: false, default: ""
      t.integer :user_or_admin_id, index: true, foreign_key: true
      t.string :user_or_admin_type, null: false
      # Rails permits value of this to be only Admin or User.

      t.timestamps
    end
  end
end
