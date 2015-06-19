class Comic
  attr_reader :id
  attr_accessor :title, :issue_number, :publisher_id, :year, :box_id
  
  # Adds one comic to the table by taking these 5 arguments inserting them in their assigned column.
  #
  # title        - String of comic's title.
  # issue_number - Integer of the comic's issue number.
  # pulisher_id  - Integer of the comic's publisher ID number.
  # year         - Integer of the comic's year published.
  # box_id       - Integer of the comic's box loction ID number.
  #
  # Returns an empty Array.
  def self.add(title, issue_number, publisher_id, year, box_id)
    CONNECTION.execute("INSERT INTO comics (title, issue_number, publisher_id, year, box_id) VALUES ('#{title}', '#{issue_number}', #{publisher_id}, '#{year}', #{box_id});")
  end
  
  # Finds one comic by the ID number.
  #
  # id - Integer that indentifies the comic.
  #
  # Returns an Array of Hashes containing the information for the comic.
  def self.find(id)
    CONNECTION.execute("SELECT * FROM comics WHERE id = #{id};")
  end
  
  # Gets all comics in database.
  #
  # Returns an Array of Hashes with key/value pairs.
  def self.all
    CONNECTION.execute("SELECT * FROM comics;") 
  end
end