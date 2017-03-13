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