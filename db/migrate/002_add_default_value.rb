class AddDefaultValue < ActiveRecord::Migration 

  def up
    change_column :profiles, :show_attribute, :boolean, default: true
  end