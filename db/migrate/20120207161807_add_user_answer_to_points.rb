class AddUserAnswerToPoints < ActiveRecord::Migration
  def change
    add_column :points, :user_answer, :integer

  end
end
