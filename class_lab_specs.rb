require ('minitest/autorun')
require ('minitest/rg')
require_relative ('./class_lab')

class TestClassLab < MiniTest::Test

  def setup
    @test_student =  CodeclanStudent.new("James", 11)
  end

  def test_return_name
    assert_equal("James", @test_student.return_name) 
  end

  def test_return_cohort
    assert_equal(11, @test_student.return_cohort) 
  end

  def test_set_name
    @test_student.set_name("Steve")
    assert_equal("Steve", @test_student.return_name)
  end

  def test_set_cohort
    @test_student.set_cohort(10)
    assert_equal(10, @test_student.return_cohort)
  end

  def test_student
    @test_student.talk()
    assert_equal("I can talk", @test_student.talk)
  end

  def test_favourite_language
    assert_equal("I love Ruby!", @test_student.favourite_language("Ruby"))
  end
end

class TestSportsTeam < MiniTest::Test

  def setup
    @test_team = SportsTeam.new("Heart of Midlothian", ["Jamie Walker", "Sam Nicholson", "Bjorn Johnson"], "Ian Cathro")
  end

  def test_team_name
    assert_equal("Heart of Midlothian", @test_team.team_name)
  end

  def test_player_name
    assert_equal(["Jamie Walker", "Sam Nicholson", "Bjorn Johnson"] ,@test_team.players)
  end

  def test_coach_name
    assert_equal("Ian Cathro", @test_team.coach)
  end

  def test_update_coach_name
    @test_team.coach ="Craig Levein"
    assert_equal("Craig Levein", @test_team.coach)
  end

  def test_add_new_player
    @test_team.add_new_player("Jack Hamilton")
    assert_equal(["Jamie Walker", "Sam Nicholson", "Bjorn Johnson", "Jack Hamilton"], @test_team.players)
  end

  def test_find_player_true?
    result = @test_team.find_player?("Jamie Walker")
    assert_equal(true, result)
  end

  def test_find_player_false?
    result = @test_team.find_player?("Jason Cummings")
    assert_equal(false, result)
  end

  def test_points_win
    @test_team.points_total("Win")
    assert_equal(3, @test_team.points)
  end

  def test_points_lose
    @test_team.points_total("Lose")
    assert_equal(0, @test_team.points)
  end
end