class PostsController < ApplicationController

  def new
      @post = Post.new
end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id


      if @post.save
        puts "Insercion correcta"
        redirect_to "", notice: "Insercion correcta"
      else
        puts "Insercion incorrecta"
        redirect_to "", notice: "Insercion incorrecta"
      end

  end

  def insertar_participante
      @usuario_insertado = current_user.username
      @post_a_insertar = Post.find(17)
      @array_participantes[] = @post_a_insertar.participantes
      @array_participantes << @usuario_insertado
      @post_a_insertar.participantes
      flash[:success] = @usuario_insertado
      flash[:alert] = @post_a_insertar
      flash[:success] = @post_a_insertar.participantes.inspect

      redirect_to "", notice: "Insercion correcta"

  end

  private
  def post_params
    params.require(:post).permit(:contenido)
  end

end