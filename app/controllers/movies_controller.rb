class MoviesController < ApplicationController
  def find
    limit = params[:limit] || 100
    offset = params[:offset] || 0
    filter = params.slice(:year, :title, :genre, :country)
    if !filter.empty?
      @movies = Movie.search(filter).order(year: :desc).limit(limit).offset(offset)
    else
      @movies = Movie.all.order(:year).limit(limit).offset(offset)
    end

    if @movies.empty?
      render json: { message: 'Nenhum título encontrado com os parâmetros fornecidos' }
    else
      render json: @movies
    end
  end

  def find_by_id
    @movies = Movie.find(params[:id].to_s)
    render json: @movies
  end

  def method_test
    render json: { message: "Ok! Tudo certo com o teste!" }, status: :ok
  end

  def create
    CSV.foreach(params[:file], headers: true).each do |row|
      Movie.create!({  id: row['id_csv'],
                       title: row['title'],
                       genre: row['type'],
                       year: row['release_year'],
                       country: row['country'],
                       published_at: row['date_added'],
                       description: row['description'] })
    end
  end
end
