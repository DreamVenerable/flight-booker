class MakeEmailUnique < ActiveRecord::Migration[7.1]
  def change
    add_index :passengers, :email, unique: true
  end
end
