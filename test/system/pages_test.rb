require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  test "finds fixtures pages with no setup" do
    visit page_url(pages(:one))
    assert_selector "*", text: "The title of the first page"
  end
end
