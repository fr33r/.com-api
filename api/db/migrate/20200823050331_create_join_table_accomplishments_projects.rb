class CreateJoinTableAccomplishmentsProjects < ActiveRecord::Migration[6.0]
  def change
    create_join_table :accomplishments, :projects do |t|
      # t.index [:accomplishment_id, :project_id]
      # t.index [:project_id, :accomplishment_id]
    end
  end
end
