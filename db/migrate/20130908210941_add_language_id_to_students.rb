class AddLanguageIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :language_id, :integer
  end
end
