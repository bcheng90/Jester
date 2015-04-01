class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, unique: true, null: false, limit: 25
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
