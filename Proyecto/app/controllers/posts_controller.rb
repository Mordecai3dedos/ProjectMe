class PostsController < ApplicationController

  def new
      @post = Post.new.chomp
  end

  def vista_post_individual
    @post = Post.find(params[:id])
  end

  def show
    @post=Post.find(params[:id])
    redirect_to "/posts/vista_post_individual"
  end




  def create

    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.participantes = current_user.username
    @post.participantes = current_user.username+"##"

      if @post.save
        puts "Insercion correcta"
        redirect_to "", notice: "Insercion correcta"
      else
        puts "Insercion incorrecta"
        redirect_to "", notice: "Insercion incorrecta"
      end

  end

  def insertar_participante
    @post_a_insertar = Post.find(params[:id])
   if @post_a_insertar.participantes.include? current_user.username
     redirect_to :back, notice: "Insercion incorrecta"
    else
      @usuario_insertado = current_user.username.chomp+"##"
      @post_a_insertar = Post.find(params[:id])
      @post_a_insertar.participantes << @usuario_insertado
      @post_a_insertar.save

      flash[:success] = @usuario_insertado
      flash[:alert] = @post_a_insertar
      flash[:success] = @post_a_insertar.participantes.inspect

      redirect_to :back, notice: "Insercion correcta"
    end


  end

  private
  def post_params
    params.require(:post).permit(:contenido, :titulo, :nombre_habilidad, :nivelDeProyecto, :sugerencias, :necesidades, :tiempoNecesario, :numeroDeFreelancers, :tipoDeProyecto)
  end
  end

