class AddDetailsToGoals < ActiveRecord::Migration
  def change
    add_column :goals, :step, :string
    add_column :goals, :routine, :string
  end
end
