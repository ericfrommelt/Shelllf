require 'rails_helper'

describe Book do
  it "is valid when created with title, author, year_published, publisher" do
    book = Book.create(title: "Green Eggs and Ham", author: "Dr. Seuss",
                       year_published: 1995, publisher: "Random House")
    expect(book).to be_valid
  end

  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :author }
  it { is_expected.to validate_presence_of :year_published }
  it { is_expected.to validate_presence_of :publisher }
  it { is_expected.to have_and_belong_to_many :users }

end
