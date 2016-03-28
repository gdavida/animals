require_relative "../lib/dog.rb"
require_relative "test_helper.rb"

class DogTest < Minitest::Test 


  #INITIAL TEST
  #---------------------------
  def test_can_be_created_under_normal_circumstances
    dog = Dog.new(name: "Henry", breed: "basset hound", size: "medium", age: "10", sex: "M")
    refute_nil(dog)
  end

  #GETTER TESTS
  #---------------------------

  def test_name_getter
    dog = Dog.new(name: "Henry", breed: "basset hound", size: "medium", age: "10", sex: "M")
    assert_equal("Henry", dog.name)
  end

  def test_breed_getter
    dog = Dog.new(name: "Henry", breed: "basset hound", size: "medium", age: "10", sex: "M")
    assert_equal("basset hound", dog.breed)
  end

  def test_size_getter
    dog = Dog.new(name: "Henry", breed: "basset hound", size: "medium", age: "10", sex: "M")
    assert_equal("medium", dog.size)
  end

  def test_age_getter
    dog = Dog.new(name: "Henry", breed: "basset hound", size: "medium", age: "10", sex: "M")
    assert_equal("10", dog.age)
  end

  def test_sex_written_getter
    dog = Dog.new(name: "Henry", breed: "basset hound", size: "medium", age: "10", sex: "M")
    assert_equal("M", dog.sex)
  end

  #SETTER TESTS
  #---------------------------

  def test_name_setter_with_valid_name
    dog = Dog.new(name: "Henry", breed: "basset hound", size: "medium", age: "10", sex: "M")
    dog.name = "Clementine"
    assert_equal("Clementine", dog.name)
  end

  def test_breed_setter_with_valid_breed
    dog = Dog.new(name: "Henry", breed: "UNKNOWN", size: "medium", age: "10", sex: "M")
    dog.breed = "basset hound"
    assert_equal("basset hound", dog.breed)
  end

  def test_size_setter_with_valid_size
    dog = Dog.new(name: "Henry", breed: "basset hound", size: "small", age: "10", sex: "M")
    dog.size = "medium"
    assert_equal("medium", dog.size)
  end

  def test_age_setter_with_valid_age
    dog = Dog.new(name: "Henry", breed: "basset hound", size: "medium", age: "1", sex: "M")
    dog.age = "10"
    assert_equal("10", dog.age)
  end

  def test_sex_setter_with_valid_sex
    dog = Dog.new(name: "Henry", breed: "basset hound", size: "medium", age: "10", sex: "M")
    dog.sex = "F"
    assert_equal("F", dog.sex)
  end
end