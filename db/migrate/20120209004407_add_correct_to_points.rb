class AddCorrectToPoints < ActiveRecord::Migration
  def change
    add_column :points, :correct, :string

  end
end
