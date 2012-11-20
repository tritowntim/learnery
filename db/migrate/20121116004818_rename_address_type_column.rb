class RenameAddressTypeColumn < ActiveRecord::Migration

	change_table :addresses do |t| 
	  t.rename :type, :address_type
	end

end
