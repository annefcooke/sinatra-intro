class Photo
  attr_accessor :id, :title, :body, :image

  def self.open_connection
    conn = PG.connect(dbname: 'blog')
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT * FROM photo ORDER BY id"
    results = conn.exec(sql)
    photos = results.map do |tuple|
      self.hydrate(tuple)
    end

    return photos
  end

  def self.hydrate(photo_data)
    photo = Photo.new
    photo.id = photo_data['id']
    photo.title = photo_data['title']
    photo.body = photo_data['body']
    photo.image = photo_data['image']
    return photo
  end

  def self.find(id)
    conn = self.open_connection
    sql = "SELECT * FROM photo WHERE id = #{id}"
    results = conn.exec(sql)
    photo = self.hydrate(results[0])
    return photo
  end

  def save
    conn = Photo.open_connection
    if(!self.id)
      sql = "INSERT INTO photo(title, body, image) VALUES('#{self.title}', '#{self.body}', '#{self.image}')"
    else
      sql = "UPDATE photo SET title='#{self.title}', body='#{self.body}', image='#{self.image}' WHERE id = #{self.id}"
    end
    conn.exec(sql)
  end

  def self.destroy(id)
    conn = self.open_connection
    sql = "DELETE FROM photo WHERE id=#{id}"
    conn.exec(sql)
  end
end
