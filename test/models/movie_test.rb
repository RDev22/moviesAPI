require "test_helper"

class MovieTest < ActiveSupport::TestCase
  test "should have a valid id" do
    @movies = Movie.all
    @movies.each do |m|
      assert_instance_of(Integer, m.id)
    end
     # Mensagem de sucesso
     puts "Ok! Tudo certo com o teste!"
  end
end
