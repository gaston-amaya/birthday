class CreateBirthdayMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :birthday_messages do |t|
      t.string :name

      t.timestamps
    end
  end
end
