# # app/models/quote.rb

# class Quote < ApplicationRecord
#   belongs_to :company
#   # All the previous code

#   # after_create_commit -> { broadcast_prepend_to "quotes", partial: "quotes/quote", locals: { quote: self }, target: "quotes" }

#   # after_create_commit -> { broadcast_prepend_to "quotes", partial: "quotes/quote", locals: { quote: self } }

#   # after_create_commit -> { broadcast_prepend_to "quotes" }
#   # after_update_commit -> { broadcast_replace_to "quotes" }
#   # after_destroy_commit -> { broadcast_remove_to "quotes" }

#   # asynchronous equivalents
#   # after_create_commit -> { broadcast_prepend_later_to "quotes" }
#   # after_update_commit -> { broadcast_replace_later_to "quotes" }
#   # after_destroy_commit -> { broadcast_remove_to "quotes" }

#   # # Those three callbacks are equivalent to the following single line
#   # broadcasts_to ->(quote) { "quotes" }, inserts_by: :prepend

#   # broadcasts_to ->(quote) { "quotes" }, inserts_by: :prepend

#   # gpt fix
#   scope :ordered, -> { order(created_at: :desc) }

#   broadcasts_to ->(quote) { [quote.company, "quotes"] }, inserts_by: :prepend
# end





# app/models/quote.rb

class Quote < ApplicationRecord
  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }

  # after_create_commit -> { broadcast_prepend_later_to "quotes" }
  # after_update_commit -> { broadcast_replace_later_to "quotes" }
  # after_destroy_commit -> { broadcast_remove_to "quotes" }
  # Those three callbacks are equivalent to the following single line
  broadcasts_to ->(quote) { [quote.company, "quotes"] }, inserts_by: :prepend

  belongs_to :company
  has_many :line_item_dates, dependent: :destroy
  has_many :line_items, through: :line_item_dates

  def total_price
    line_items.sum(&:total_price)
  end
end