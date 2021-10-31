require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the home page" do
    visit root_path

    assert_selector "h1", text: "Flats"
  end

  test 'visit a specific flat page' do
    visit '/flats/145'

    assert_selector "h1", text: "Charm at the Steps of the Sacre Coeur/Montmartre"
  end
end
