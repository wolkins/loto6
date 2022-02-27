class CreateWinHistoryNumbers < ActiveRecord::Migration[7.0]
  def change
    create_table :win_history_numbers do |t|

      t.timestamps
    end
  end
end
