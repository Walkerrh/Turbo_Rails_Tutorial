# /home/unix_wrh/quote-editor/db/migrate/20240614152611_add_company_reference_to_users.rb

class AddCompanyReferenceToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :company, null: false, foreign_key: true
  end
end