class WinHistoryNumber < ApplicationRecord
  belongs_to :win_history, inverse_of: :win_history_numbers
end
