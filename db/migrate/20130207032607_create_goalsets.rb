class CreateGoalsets < ActiveRecord::Migration
  def change
    create_table :goalsets do |t|
      t.string :title

      t.timestamps
    end
  end
end
