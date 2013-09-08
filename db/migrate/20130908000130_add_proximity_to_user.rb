class AddProximityToUser < ActiveRecord::Migration
  def change
  	add_column :users, :at_home, :boolean
  end
end
