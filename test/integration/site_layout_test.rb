require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    # Rails automatically inserts the value of about_path in place of the question mark
    # count: 2 verifies that there are two such links (one each for the logo and navigation),
    # this makes sure that both links to the Home page exist
    assert_select "a[href=?]", root_path, count: 2
    assert_select "a[href=?]", help_path
    assert_select "a[href=?]", about_path
    assert_select "a[href=?]", contact_path
    assert_select "a[href=?]", signup_path

  end

end
