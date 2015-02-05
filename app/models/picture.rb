class Picture < ActiveRecord::Base
	# def self.most_recent_five
	# 	order(created_at: :desc).limit(5)
	# end
	scope :newest_first, -> { order(created_at: :desc)}
	scope :most_recent_five, -> { order(created_at: :desc).limit(5) }
	scope :created_before, -> (date) { where("created_at < ?")}
	

	# ORRRR
	# def self.created_before(date)
	# 	where("created_at < ?", date)
		
	# end
	
end
