class Init < ActiveRecord::Migration[7.0]
  # MEMO: ロト6 以外(ミニロト, ロト7) も流用する可能性があるので、1対多のテーブル構成にしてみる
  def change
    create_table :win_histories, comment: '当選履歴' do |t|
      t.integer :ordinal_number, null: false, comment: '回数'
      t.integer :loto_type_id, null: false, comment: '種類'
      t.timestamps
    end

    create_table :win_history_numbers, comment: '当選ナンバー' do |t|
      t.belongs_to :win_history, null: false, foreign_key: true
      t.integer :number, null: false, default: 0, comment: '当選ナンバー'
    end
  end
end
