require './article.rb'

describe Article do
      let(:article) { Article.new(title: "War and Peace", body: "Hipster Lorem", author: "Julie R") }

      let(:empty_article) { Article.new(title: "", body: "", author: "") }

         it "allows reading and writing for :title" do
                  article = Article.new
                  article.title = ("test")
                  expect(article.title).to eq("test")
         end

         it "allows reading and writing for :body" do
                  article = Article.new
                  article.body = ("test2")
                  expect(article.body). to eq("test2")
         end

          it "allows reading and writing for :author" do
                  article = Article.new
                  article.author = ("test3")
                  expect(article.author). to eq("test3")
          end
	
      context "#title?" do
            it "returns true if string is present" do
                  expect(article.title?).to eq(true)
            end

            it "returns false if string is empty or nil" do
                  expect(empty_article.title?).to eq(false)
            end      
      end

      context "#body?" do 
            it "returns true if string is present" do
                  expect(article.body?).to eq(true)
            end 
            it "returns false if string is empty or nil" do
                  expect(empty_article.body?).to eq(false)
            end     
      end

        context "#authors_name_starts_with_q" do 
            it "returns true if author name starts with q" do
                  article.author = "qdoba"
                  expect(article.authors_name_starts_with_q?).to eq(true)
            end 
            
            it "returns false if author name does not start with q" do
                  expect(article.authors_name_starts_with_q?).to eq(false)
            end     
      end
end





      





       	