class ChangeVegCsaToBeStringInRegistrations < ActiveRecord::Migration[5.0]
  def change
    change_column :registrations, :veg_csa, :string
  end
end
