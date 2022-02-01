# ASSESSMENT 6: Rails Commenting Challenge

# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# FILE: app/controller/blog_posts_controller.rb

# ---1) class BlogPost extends ApplicationController. this creates an instace of ApplicationController called BlogPostsController.
class BlogPostsController < ApplicationController
  def index
    # ---2)  the @posts = BlogPost.all variable declaration references all the information contained in the BlogPost table.
    @posts = BlogPost.all
  end

  def show
    # ---3) BlogPost.find(params[id]) allows the user of the app to retrieve and display the information that corresponds with the ID that was passed in.
    @post = BlogPost.find(params[:id])
  end

  # ---4) BlogPost.new creates a new blog post that will be saved on the BlogPost table. The new record will automatically be assigned the next available id [ID's are only used once].
  def new
    @post = BlogPost.new
  end

  def create
    # ---5) BlogPost.create allows for the creation of a new blog and contains strong parameters that must be met in order to create a new post. The conditional is being used to ensure the required params are met, else the user will be redirected to the new_blog_post_path.
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to new_blog_post_path
    end
  end

  # ---6) this edit allows the user to search for a particular entry in the table to they can edit the data. The user is able to specify what entry they would like to modify by adding the relevant ID to the params.
  def edit
    @post = BlogPost.find(params[:id])
  end

  def update
    @post = BlogPost.find(params[:id])
    # ---7) this update method allows the user to update a particular entry in the table. The conditional statement is used to make sure the required params are being met, else the user will be redirected to edit_blog_post_path.
    @post.update(blog_post_params)
    if @post.valid?
      redirect_to blog_post_path(@post)
    else
      redirect_to edit_blog_post_path
    end
  end

  def destroy
    @post = BlogPost.find(params[:id])
    if @post.destroy
      redirect_to blog_posts_path
    else
      # ---8) this else statement redirects the user to blog_post_path(@post) if the user decides not to destroy the blog post.
      redirect_to blog_post_path(@post)
    end
  end

  # ---9) the private reserved word is used to define strong parameters. These are the conditions and information that must be met by the end user in order to create or update data. strong params are used to add a layer of security to the database.
  private
  def blog_post_params
    # ---10) the params.require command is used to specify what conditions and information is required to create a new blog post. params.permit specify what information is permitted, but not necessarily required.
    params.require(:blog_post).permit(:title, :content)
  end
end
