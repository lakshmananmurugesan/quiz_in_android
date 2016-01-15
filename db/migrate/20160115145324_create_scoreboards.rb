class CreateScoreboards < ActiveRecord::Migration
  def self.up
    create_table :scoreboards do |t|
      t.string :name
      t.string :email
      t.string :score

      t.timestamps
    end
  end

  def self.down
    drop_table :scoreboards
  end
end
