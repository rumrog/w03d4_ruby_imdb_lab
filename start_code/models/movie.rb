require_relative("../db/sql_runner")

class Movie

    attr_reader :id
    attr_accessor :title, :genre

    def initialize( options )
        @id = options['id'].to_i if options['id']
        @title = options['title']
        @genre = options['genre']
    end

    def save()
      sql = "INSERT INTO stars
      (
          title,
          genre
      )
      VALUES
      (
          $1, $2
      )
      RETURNING id"
      values = [@title, @genre]
      star = SqlRunner.run( sql, values ).first
      @id = star['id'].to_i
    end

end
