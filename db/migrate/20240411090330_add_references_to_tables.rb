class AddReferencesToTables < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :region, foreign_key: true
    add_reference :posts, :user, foreign_key: true
    add_reference :posts, :region, foreign_key: true
  end
end
