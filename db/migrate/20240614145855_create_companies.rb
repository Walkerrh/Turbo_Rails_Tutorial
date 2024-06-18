# /home/unix_wrh/quote-editor/db/migrate/20240614145855_create_companies.rb

class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
