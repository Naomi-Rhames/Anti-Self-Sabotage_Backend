class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :profile_photo
      t.string :username
      t.string :password_digest
      t.text :bio
      t.timestamps
    end
  end
end
