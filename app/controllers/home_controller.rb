class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def gerar_pdf
    pdf = Prawn::Document.new
    pdf.text "Posts"
    pdf.move_down 10

    Post.all.each do |post|
      pdf.text post.title
    end

    send_data pdf.render,
            filename: "posts.pdf",
            type: "application/pdf",
            disposition: "inline"
  end
end
