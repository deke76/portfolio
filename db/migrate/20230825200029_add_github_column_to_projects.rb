class AddGithubColumnToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :github_url, :string
  end
end
