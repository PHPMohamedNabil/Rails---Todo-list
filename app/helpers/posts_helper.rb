module PostsHelper

    def getPost id
        @post = Post.find(id)
    end
end
