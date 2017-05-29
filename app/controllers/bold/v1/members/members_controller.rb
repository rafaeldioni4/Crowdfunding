module Bold::V1::Members
	class MembersController < Bold::V1::BaseController
		def index
			@member = Member.all
		end

	end
end
