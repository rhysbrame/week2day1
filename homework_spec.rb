require ('minitest/autorun')
require_relative ('homework.rb')
require('minitest/rg')

class TestStudent < MiniTest::Test

  def setup
    @student = Student.new("Rhys",11,"ruby")
  end

  def test_student_name
    assert_equal("Rhys",@student.student_name)
  end

  def test_cohort
    assert_equal(11,@student.cohort)
  end

  def test_set_student_name
    @student.set_student_name("Darren")
    assert_equal("Darren", @student.student_name)
  end

  def test_set_cohort
    @student.set_cohort(13)
    assert_equal(13,@student.cohort)
  end

  def test_talks
    talking = @student.talks("Something")
    assert_equal("Something",talking)
  end

  def test_talks_language
    talking = @student.talks_language()
    assert_equal("I love ruby",talking)
  end

end

class TestTeam < MiniTest::Test

  def setup
    players_array = ["Chris Cousins","Jordan Reed", "DeShaun Jackson"]
    @team = Team.new("Washington Redskins", players_array, "Jay Gruden", 0)
  end

  def test_team_name
    assert_equal("Washington Redskins", @team.team_name)
  end

  def test_team_coach
    assert_equal("Jay Gruden", @team.coach)
  end

  def test_players_array
    assert_equal(  ["Chris Cousins","Jordan Reed", "DeShaun Jackson"], @team.players)
  end

  def test_set_coach
    @team.coach = "Jon Gruden"
    assert_equal("Jon Gruden", @team.coach)
  end

  def test_add_player
    @team.add_player("Bennie Logan")
    assert_equal(4, (@team.players).length)
  end

  def test_player_search
    assert_equal(true, @team.player_search("DeShaun Jackson"))
  end

  def test_team_points
    assert_equal(0,@team.points)
  end

  def test_win_or_lose
    @team.win_or_lose("D")
    assert_equal(1, @team.points)
  end

end

class TestLibrary < MiniTest::Test  

    def setup
      @library = Library.new(
    [
    { title: "Book_1",
    rental_details: {
      student_name: "Student A",
      date: "1/1/17"
    }   
    },
    
    { title: "Book_2",
    rental_details: {
      student_name: "Student B",
      date: "2/1/17"
    } 
    },
    
    { title: "Book_3",
    rental_details: {
      student_name: "Student C",
      date: "3/1/17"
    } 
    },

    { title: "Book_4",
    rental_details: {
      student_name: "Student D",
      date: "4/1/17"
    } 
    },

    { title: "Book_5",
    rental_details: {
      student_name: "Student E",
      date: "5/1/17"
    } 
    }
    ]
    )
    end

  def test_list_all_books
    assert_equal(    [
    { title: "Book_1",
    rental_details: {
      student_name: "Student A",
      date: "1/1/17"
    }   
    },
    
    { title: "Book_2",
    rental_details: {
      student_name: "Student B",
      date: "2/1/17"
    } 
    },
    
    { title: "Book_3",
    rental_details: {
      student_name: "Student C",
      date: "3/1/17"
    } 
    },

    { title: "Book_4",
    rental_details: {
      student_name: "Student D",
      date: "4/1/17"
    } 
    },

    { title: "Book_5",
    rental_details: {
      student_name: "Student E",
      date: "5/1/17"
    } 
    }
    ], @library.list_all_books)
  end


end