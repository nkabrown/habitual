class CreateMottos < ActiveRecord::Migration
  def change
    create_table :mottos do |t|
      t.string :body
      t.references :user, index: true

      t.timestamps
    end
  end
end
