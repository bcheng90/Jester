class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :line1, null: false
      t.string :line2
      t.references :user # Nice use of AR association migration method.

      t.timestamps null: false
    end
  end
end
