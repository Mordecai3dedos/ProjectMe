
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
  def mostrar_intereses
    @posts = Post.all.where(tipoDeProyecto: current_user.puntoFuerte)
  end
  def show
    @usuario=User.find(params[:id])
    render action: "vista_usuario_individual"

  end

end
