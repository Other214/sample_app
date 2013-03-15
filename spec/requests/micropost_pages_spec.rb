require 'spec helper'

describe "Micropost pages" do

  subject { page }

  let(:user) { FactoryGirl.create(:user) }
  before { sign in user }

  describe "micropost creation" do
    before { visit root path }
    
    describe "with invalid information" do
      it "should not create a micropost" do
        expect { click button "Post" }.should not change(Micropost, :count)
      end

      describe "error messages" do
        before { click button "Post" }
        it { should have content('error') }
      end 
    end

    describe "with valid information" do

      before { fill in 'micropost content', with: "Lorem ipsum" }
      it "should create a micropost" do
        expect { click button "Post" }.should change(Micropost, :count).by(1)
      end
    end
  end
end

