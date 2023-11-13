class AddPhoneToMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :messages, :phone, :string
  end
end
