require "application_system_test_case"

class DiaryappsTest < ApplicationSystemTestCase
  setup do
    @diaryapp = diaryapps(:one)
  end

  test "visiting the index" do
    visit diaryapps_url
    assert_selector "h1", text: "Diaryapps"
  end

  test "creating a Diaryapp" do
    visit diaryapps_url
    click_on "New Diaryapp"

    fill_in "Body", with: @diaryapp.body
    fill_in "Title", with: @diaryapp.title
    click_on "Create Diaryapp"

    assert_text "Diaryapp was successfully created"
    click_on "Back"
  end

  test "updating a Diaryapp" do
    visit diaryapps_url
    click_on "Edit", match: :first

    fill_in "Body", with: @diaryapp.body
    fill_in "Title", with: @diaryapp.title
    click_on "Update Diaryapp"

    assert_text "Diaryapp was successfully updated"
    click_on "Back"
  end

  test "destroying a Diaryapp" do
    visit diaryapps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diaryapp was successfully destroyed"
  end
end
