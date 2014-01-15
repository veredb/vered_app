require 'spec_helper'

describe PostsController do
   describe "GET 'new'" do

       it "should be successful" do
           get 'new'
           response.should be_success
       end
   end
   describe "GET 'show'" do

       before(:each) do
         @post = Factory(:post)
       end

       it "should be successful" do
           get :show, :id => @post
           response.should be_success
       end

       it "should find the right user" do
           get :show, :id => @post
           assigns(:post).should == @post
       end
        
   end

   describe "GET 'create'" do
          before(:each) do
              @attr = { :title => "Golf", :text => "I love golf" }
          end

          it "should create a post" do
            lambda do
              post :create, :post => @attr
            end.should change(Post, :count).by(1)  
          end

          it "should redirect to the post show page" do
             post :create, :post => @attr
             response.should redirect_to(post_path(assigns(:post)))
          end
   end

end
