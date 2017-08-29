class ChangeFlowerCsaToBeStringInRegistrations < ActiveRecord::Migration[5.0]
  def change
    change_column :registrations, :flower_csa, :string
  end
end
