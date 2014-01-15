require 'spec_helper' 

describe "Posts" do
     describe "failure" do
        before(:each) do
              @attr = { :title => "", :text => "" }
        end
        it "should not make a new post" do
          lambda do
            visit new_post_path
            fill_in :post_title,                        :with => @attr[:title]
            fill_in :post_text,                         :with => @attr[:text]
            click_button 
            response.should render_template('posts/new')
           end.should_not change(Post, :count).by(0) 
         end
     end
  
     describe "success" do
        before(:each) do
              @attr = { :title => "golf", :text => "i love golf" }
        end

        it "should make a new post" do
          lambda do
            visit new_post_path
            fill_in :post_title,                        :with => @attr[:title]
            fill_in :post_text,                         :with => @attr[:text]
            click_button 
            response.should render_template('posts/new')
          end.should change(Post, :count).by(1)
        end
     end
     
end
