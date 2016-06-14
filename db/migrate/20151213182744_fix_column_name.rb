class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :communities, :comName, :com_name
    rename_column :events, :eventName, :event_name
  end
end
