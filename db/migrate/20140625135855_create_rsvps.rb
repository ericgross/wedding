class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :attending
      t.string :who
      t.string :additional_person
      t.boolean :bbq
      t.boolean :brunch
      t.string :veggie
      t.string :campfire_song
      t.text :other

      t.timestamps
    end
  end
end
