class CreateGoalsets < ActiveRecord::Migration
  def change
    create_table :goalsets do |t|
      t.String :title

      t.timestamps
    end
  end
end
