class RenameEventDataToEventDate < ActiveRecord::Migration[5.0]
  def change
    rename_column :quote_requests, :event_data, :event_date
  end
end
