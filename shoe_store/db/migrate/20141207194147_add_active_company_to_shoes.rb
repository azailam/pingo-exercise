class AddActiveCompanyToShoes < ActiveRecord::Migration
  def change
    add_column :shoes, :active_company, :boolean, default: true
  end
end
