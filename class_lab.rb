class CodeclanStudent

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
    
  end

  def return_name
    return @name
  end

  def return_cohort
    return @cohort
  end

  def set_name(new_name)
    @name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    return "I can talk"
  end

  def favourite_language(language)
    return "I love #{language}!"
  end
end

class SportsTeam
  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
    
  end

  def add_new_player(player)
    @players << "Jack Hamilton"
  end

  def find_player?(player_to_find)
    for player in @players
      if player == player_to_find
        return true
      end
    end
    return false
  end

  def points_total(result)
    if result == "Win"
      @points += 3
    end
  end

  # def update_coach_name(new_name)
  #   @coach = new_name
  # end

  # def return_team_name
  #   return @team_name
  # end

  # def return_players
  #   return @players
  # end

  # def return_coach
  #   return @coach
  # end
end

class Library
  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def list_books
    return @books
  end

  def list_book_by_title(title)
    for book in @books
      if title == book[:title]
        return book
      end
    end
    return "Book does not exist"
  end

def list_rental_deets_by_title(title)
  for book in @books
    if title == book[:title]
      return book[:rental_details]
    end
  end
  return "Book does not exist"
end

def add_new_book(title)
  @books << {title: title, rental_details: { student_name:"", date: ""}}
end

def change_rental_deets(book_name, name, date)
  for book in @books
    if book_name == book[:title]
      book[:rental_details][:student_name] = name
      book[:rental_details][:date] = date
    end
  end
end

end
