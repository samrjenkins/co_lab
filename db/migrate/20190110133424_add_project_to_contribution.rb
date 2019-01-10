class AddProjectToContribution < ActiveRecord::Migration[5.2]
  def change
    add_column :contributions, :project_id, :integer
  end
end
