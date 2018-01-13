class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.references :user, null:false
      t.references :play, null:false
      t.timestamps null: false
    end

    add_index :clips, :user_id
    add_index :clips, :play_id
  end
end
