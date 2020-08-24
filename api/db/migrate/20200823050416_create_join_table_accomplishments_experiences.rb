class CreateJoinTableAccomplishmentsExperiences < ActiveRecord::Migration[6.0]
  def change
    create_join_table :accomplishments, :experiences do |t|
      # t.index [:accomplishment_id, :experience_id]
      # t.index [:experience_id, :accomplishment_id]
    end
  end
end
