json.data do |data|
	data.array!(@member) do |member|
		json.partial! '/bold/v1/partials/members', member: member
	end
end