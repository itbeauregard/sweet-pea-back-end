class CreateQuoteRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :quote_requests do |t|
      t.string :email
      t.string :phone
      t.string :event_type
      t.date :event_data
      t.string :color_scheme
      t.text :description

      t.timestamps
    end
  end
end
