class AddUserToQuoteRequests < ActiveRecord::Migration[5.0]
  def change
    add_reference :quote_requests, :user, foreign_key: true
  end
end
