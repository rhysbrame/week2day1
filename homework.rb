class Student

  def initialize(student_name,cohort,prog_language)
    @student_name = student_name
    @cohort = cohort
    @prog_language = prog_language
  end

  def student_name
    return @student_name
  end

  def cohort
    return @cohort
  end

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talks(words)
    return words
  end

  def talks_language()
    return "I love " + @prog_language
  end
end

class Team

  attr_reader :team_name
  attr_accessor :players, :coach, :points

  def initialize(team_name, players_array, coach, points)
    @team_name = team_name
    @players = players_array
    @coach = coach
    @points = points

  end

  def add_player(new_player)
    @players << new_player
  end

  def player_search(searched)
    @players.include?(searched)
  end

  def win_or_lose(result)
    if result == "W"
      @points += 3
    elsif result == "D"
      @points += 1
    elsif result == "L"
      return
    end

  end

end

class Library

  attr_accessor :book_list

  def initialize(book_list)
    @book_list = book_list
  end

  def list_all_books
      return @book_list
  end




end




























