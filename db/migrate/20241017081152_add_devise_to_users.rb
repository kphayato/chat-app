class AddDeviseToUsers < ActiveRecord::Migration[7.0]
  def change
    change_table :users do |t|
      # 重複する `email` カラムの追加行をコメントアウトまたは削除
      # t.string :email, null: false, default: ""

      # Confirmable のカラムを追加
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :unconfirmed_email # Only if using reconfirmable

      # その他必要なカラムを追加
    end

    add_index :users, :confirmation_token, unique: true unless index_exists?(:users, :confirmation_token)
  end
end