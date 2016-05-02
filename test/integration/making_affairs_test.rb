require 'test_helper'

class MakingAffairsTest < ActionDispatch::IntegrationTest
  def test_I_can_enter_my_affair_details_on_the_main_page
    page.visit affairs_path

    assert page.has_content?("Add a New Event")
    page.click_link("Add a New Event")

    fill_in("title", :with => "Josh's Birthday Party")
    select '2017', :from => 'year'
    select 'March', :from => 'month'
    select '14', :from => 'day'
    fill_in("location", :with => "8492 Main St.")
    fill_in("text", :with => "Come celebrate my birthday!")

    page.click_button('Create Affair')
    assert page.has_content?("Josh's Birthday Party")

    fill_in('Guest', :with =>'Brandt Faulkner')
    fill_in('Body', :with => 'I will maybe go')
    fill_in('Email' :with => 'blech@blech.com')

    page.click_button('Create Rsvp')
    assert page.has_content?("Brandt")
            
  end
end
