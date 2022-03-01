class WinHistoryNumber < ApplicationRecord
  belongs_to :win_history, inverse_of: :win_history_numbers

  validate :win_history_numbers_count_must_be_within_limit

  private

  def win_history_numbers_count_must_be_within_limit
    errors.add(:base, :posts_count_must_be_within_limit) if
      win_history.win_history_numbers.count >= win_history.loto_type.history_number_count
  end
end
