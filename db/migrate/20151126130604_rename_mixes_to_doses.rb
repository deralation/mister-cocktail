class RenameMixesToDoses < ActiveRecord::Migration
  def change
    rename_table :mixes, :doses
  end
end
