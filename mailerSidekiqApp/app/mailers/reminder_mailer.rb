class ReminderMailer < ApplicationMailer
	 default_url_options[:host] = "localhost:3000"
	def remind_one_email(user, email, friend, message)
		@user = user
		@email = email
		@message = message
		@friend = friend
		mail(from: @email,
			to: @friend,
			subject: "A reminder from #{user.first_name}",
			)

	end

end

# If we want to do to a group, have the group.users be the recipients as in
 		# to: 
			# @friends.each do |friend|
			# 	friend.email
			# end