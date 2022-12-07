require "rails_helper"

RSpec.describe "UserShows", type: :system do
  subject { User.new(name: 'Christian', posts_counter: 0, photo: 'https://randomuser.me/api/portraits/men/70.jpg', bio: 'Student at Microverse') }

  before { subject.save }

  describe 'index page' do
    it 'I can see the username of all other users.' do
      visit root_path(subject)
      page.has_content?(subject.name)
    end
  end
end