class ProjectsTags < ActiveRecord::Migration
  def up
  	create_table :projects_tags, :id => false do |t|
  		t.integer :project_id
  		t.integer :tag_id
  	end
  end

  def down
  	drop_table :projects_tags
  end
end
