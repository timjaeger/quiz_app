class RemoveAdminIdFromQuestions < ActiveRecord::Migration
  def up
    remove_column :questions, :admin_id
      end

  def down
    add_column :questions, :admin_id, :integer
  end
end
