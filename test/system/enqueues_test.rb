require "application_system_test_case"

class EnqueuesTest < ApplicationSystemTestCase
  setup do
    @enqueue = enqueues(:one)
  end

  test "visiting the index" do
    visit enqueues_url
    assert_selector "h1", text: "Enqueues"
  end

  test "creating a Enqueue" do
    visit enqueues_url
    click_on "New Enqueue"

    fill_in "Category", with: @enqueue.category
    fill_in "Text", with: @enqueue.text
    fill_in "Title", with: @enqueue.title
    fill_in "Type", with: @enqueue.type
    fill_in "User", with: @enqueue.user_id
    click_on "Create Enqueue"

    assert_text "Enqueue was successfully created"
    click_on "Back"
  end

  test "updating a Enqueue" do
    visit enqueues_url
    click_on "Edit", match: :first

    fill_in "Category", with: @enqueue.category
    fill_in "Text", with: @enqueue.text
    fill_in "Title", with: @enqueue.title
    fill_in "Type", with: @enqueue.type
    fill_in "User", with: @enqueue.user_id
    click_on "Update Enqueue"

    assert_text "Enqueue was successfully updated"
    click_on "Back"
  end

  test "destroying a Enqueue" do
    visit enqueues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enqueue was successfully destroyed"
  end
end
