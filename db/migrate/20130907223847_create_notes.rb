class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
    	t.string :message
    	t.string :from_user_id
    	t.string :user_id
      t.timestamps
    end
  end
end
