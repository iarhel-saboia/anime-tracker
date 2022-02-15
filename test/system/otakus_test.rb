require "application_system_test_case"

class OtakusTest < ApplicationSystemTestCase
  setup do
    @otaku = otakus(:one)
  end

  test "visiting the index" do
    visit otakus_url
    assert_selector "h1", text: "Otakus"
  end

  test "creating a Otaku" do
    visit otakus_url
    click_on "New Otaku"

    fill_in "Birthday", with: @otaku.birthday
    fill_in "Name", with: @otaku.name
    click_on "Create Otaku"

    assert_text "Otaku was successfully created"
    click_on "Back"
  end

  test "updating a Otaku" do
    visit otakus_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @otaku.birthday
    fill_in "Name", with: @otaku.name
    click_on "Update Otaku"

    assert_text "Otaku was successfully updated"
    click_on "Back"
  end

  test "destroying a Otaku" do
    visit otakus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Otaku was successfully destroyed"
  end
end
