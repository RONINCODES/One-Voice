class CreateInstructorSurveys < ActiveRecord::Migration[5.1]
  def change
    create_table :instructor_surveys do |t|

      t.timestamps
    end
  end
end
