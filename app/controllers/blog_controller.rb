class BlogController < ApplicationController
    def index
        @post = Post.where("published_date <= ?", Time.zone.now).first
    end
end
