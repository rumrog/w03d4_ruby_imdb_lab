require_relative("../db/sql_runner")
require_relative("movie")
require_relative("casting")


class Casting

  attr_reader :id
  attr_accessor :star_id, :movie_id, :fee

  def initialize( options )
    @id = options['id'].to_i if options['id']
    @star_id = options['star_id'].to_i
    @movie_id = options['movie_id'].to_i
    @fee = options['fee'].to_i
  end

  def save()
    sql = "INSERT INTO castings
    (
      star_id,
      movie_id,
      fee
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@star_id, @movie_id, @fee]
    casting = SqlRunner.run(sql, values).first
    @id = casting['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM castings"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM castings"
    casting_data = SqlRunner.run(sql)
    return Casting.map_items(casting_data)
end

  def self.map_items(casting_data)
    result = casting_data.map { |casting| Casting.new( casting ) }
    return result
  end

end
