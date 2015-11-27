class RenameCloumnDesctriptiontoDescription < ActiveRecord::Migration
  def change
    rename_column :doses, :desctription, :description
  end
end
