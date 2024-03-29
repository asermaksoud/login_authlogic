require 'spec_helper'

describe "users/edit" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :first => "MyString",
      :last => "MyString",
      :address => "MyString",
      :mobile => "MyString",
      :email => "MyString",
      :id => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path(@user), :method => "post" do
      assert_select "input#user_first", :name => "user[first]"
      assert_select "input#user_last", :name => "user[last]"
      assert_select "input#user_address", :name => "user[address]"
      assert_select "input#user_mobile", :name => "user[mobile]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_id", :name => "user[id]"
    end
  end
end
