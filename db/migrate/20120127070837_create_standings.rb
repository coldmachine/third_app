class CreateStandings < ActiveRecord::Migration
  def self.up
    create_table :standings do |t|
      t.intenger :position
      t.string :club
      t.integer :points
      t.integer :gamesPlayed
      t.integer :goalsFor
      t.integer :goalsAgainst

      t.timestamps
    end
  end

  def self.down
    drop_table :standings
  end
end
