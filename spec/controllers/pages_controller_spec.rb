require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'chemistry'" do
    it "returns http success" do
      get 'chemistry'
      response.should be_success
    end
  end

  describe "GET 'discussions'" do
    it "returns http success" do
      get 'discussions'
      response.should be_success
    end
  end

  describe "GET 'other'" do
    it "returns http success" do
      get 'other'
      response.should be_success
    end
  end

end
