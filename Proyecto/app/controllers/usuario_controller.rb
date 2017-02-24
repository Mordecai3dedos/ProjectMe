
class UsuarioController < ApplicationController

  def index
    @posts = Post.all
    @newPost = Post.new
  end
  def index_usuario
    @posts = Post.all
    @newPost = Post.new
  end
  def crear_proyecto
    @posts = Post.all
    @newPost = Post.new
  end

end
