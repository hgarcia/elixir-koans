Code.require_file "test_helper.exs", __DIR__

defmodule PatternMatchingTest do
  use ExUnit.Case

  test "modify the right hand to pass the expression" do
    a = []
    assert [1, 2, 3] = a
  end

  test "modify the right hand to pass the assertion" do
    a = 5
    assert 4 = a
  end

  test "modify the left side to cause a match error" do
    assert catch_error [a, b, c] = [1, 2, 3]
  end

  test "modify the assertion to pass the test" do
    a = [[1, 2, 3]]
    assert false = a
  end

  test "what should a match to?" do
    [a..5] = [1..5]
    assert 9 = a
  end

  test "what should a match to now?" do
    [a] = [[1, 2, 3]]
    assert 1 = a
  end

  test "you should now know how to write the assertion for the given expression" do
    #[[a]] = [[1,2,3]]
    assert false
  end

  test "fix the left hand to match" do
    assert [a, b, a] = [1, 2, 3]
  end

  test "fix the right hand to match" do
    assert [a, b, a] = [1, 2, 3]
  end

  test "reorder the right hand list elements to match" do
    assert [a, a, b] = [1, 2, 1]
  end

  test "modify the assert expressions to pass the test" do
    a = 2
    assert [a, b, a] = [1, 2, 3]
    assert [a, b, a] = [1, 1, 2]
    assert a = 1
    assert ^a = 2
  end

end
