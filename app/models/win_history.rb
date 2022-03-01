class WinHistory < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  has_many :win_history_numbers, inverse_of: :win_history
  belongs_to :loto_type
end
