class CreateEsolGroups < ActiveRecord::Migration
  def change
    create_table :esol_groups do |t|
      t.string :group_name

      t.timestamps
    end
  end
end
