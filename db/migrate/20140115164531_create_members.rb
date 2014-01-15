class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :myname
      t.string :email
      t.string :login

      t.timestamps
    end
  end
end
