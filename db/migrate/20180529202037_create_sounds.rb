class CreateSounds < ActiveRecord::Migration[5.2]
  def change
    create_table :sounds do |t|
      t.string :path
      t.string :name

			t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
