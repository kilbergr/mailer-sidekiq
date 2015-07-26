require "rails_helper"

feature "Send Reminder" do

	let(:user){ User.create(username: "REBKIL", email:"test@test.com", first_name: "Reb", last_name: "Kil") }

	before {visit root_path}
	scenario "send a user a single reminder" do
		fill_in "Your Username", with: user.username
		fill_in "Your Email", with: user.email
		fill_in "Add Message", with: "This is a test"
		fill_in "Add Recipient", with: user.email
		click_button "Send Reminder"
		expect {ActionMailer::Base.deliveries.count.to eq(1)}
	end

end

