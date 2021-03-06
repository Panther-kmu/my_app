require 'spec_helper'

describe "Static pages" do

  let(:base_title) {"Ruby on Rails Tutorial My App"}

  describe "Home page" do

     it "should have the h1'Home'" do
       visit '/static_pages/home'
       page.should have_selector('h1', :text => 'Home')
     end

     it "should have the title 'Home'" do
       visit '/static_pages/home'
       page.should have_selector('title',
                                 :text => "#{base_title} | Home")
     end
    end


      describe "Help page" do

        it "should have the h1 'Help'" do
          visit '/static_pages/help'
          page.should have_selector('h1', :text => 'Help')
        end
        it "should have the title 'Help'" do
          visit '/static_pages/help'
          page.should have_selector('title',
                                    :text => "#{base_title} | Help")
        end
      end


    describe "About page" do

      it "should have the h1 'About Us'" do
        visit '/static_pages/about'
        page.should have_selector('h1', :text => 'About Us')
      end
      it "should have the title 'About Us'" do
        visit '/static_pages/about'
        page.should have_selector('title',
                                  :text => "#{base_title} | About Us")
     end
   end


    describe "Contact page" do

      it "shud have 'Contact'" do
        visit '/static_pages/Contact'
        page.should have_selector('h1', :text => 'Contact')
      end

      it "should contain title for 'Contact'" do
        visit '/static_pages/Contact'
        page.should have_selector('title', :text => base_title)
      end

     it "should not have the title"   do
       visit '/static_pages/Contact'
       page.should have_selector('title',:text => " | Contact")
     end
    end
end

