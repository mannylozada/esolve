class AddEsolGroupIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :esol_group_id, :integer
  end
end
