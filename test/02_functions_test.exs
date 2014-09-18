Code.require_file "test_helper.exs", __DIR__

defmodule FunctionsTest do
  use ExUnit.Case

  test "modify the right hand side to pass the assertion" do
    sum = fn (a,b) -> a + b end
    assert sum.(5,5) == 0
  end

  test "modify the anonymous function body to pass the assertion" do
    multi = fn(a,b) -> 0 end
    assert multi.(5,6) == 30
  end

  test "modify the anonymous function to pass the assertion" do
    sub = fn(a) -> a end
    assert sub.(1,2) == 1
  end

  def new_name(name), do: "" 
  test "modify the named function above to pass the assertion" do
    assert new_name("José") == "Chris"
  end

  def put_in_list(name), do: name
  test "modify the named function above to pass the assertion" do
    assert put_in_list("Bruce") == ["Bruce"]
  end

  def get_first_in_list(list) do
    [head|tail] = list
    head
  end
  test "modify the right hand side to pass the assertion" do
    assert get_first_in_list([1,2,3]) == 0
  end
end
