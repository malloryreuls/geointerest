json.igroups do |json|
	json.array!(@igroups) do |igroup|
	  json.extract! igroup, :id, :name
	end
end