class CreateWinHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :win_histories do |t|

      t.timestamps
    end
  end
end
