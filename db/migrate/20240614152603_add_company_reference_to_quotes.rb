# /home/unix_wrh/quote-editor/db/migrate/20240614152603_add_company_reference_to_quotes.rb

class AddCompanyReferenceToQuotes < ActiveRecord::Migration[7.1]
  def change
    add_reference :quotes, :company, null: false, foreign_key: true
  end
end