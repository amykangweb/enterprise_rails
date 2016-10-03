module Physical
	module Orders
		class Physical::Orders::Order < Physical::ApplicationRecord
			include SetPrimary
			belongs_to :movie, class_name: "Physical::Movies::Movie"
	end
end