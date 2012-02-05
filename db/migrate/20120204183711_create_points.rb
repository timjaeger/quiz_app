class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :correct_answer

      t.timestamps
    end
  end
end
