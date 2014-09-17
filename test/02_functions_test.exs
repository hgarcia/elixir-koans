Code.require_file "test_helper.exs", __DIR__

defmodule FunctionsTest do
  use ExUnit.Case

  test "modify the left hand side to pass the expression" do
    sum = fn (a,b) -> a + b end
    assert sum.(5,5) == 0
  end

  test "modify the anonymous function body to pass the expression" do
    multi = fn(a,b) -> 0 end
    assert multi.(5,6) == 30
  end

  test "modify the anonymous function to pass the expression" do
    sub = fn(a) -> a - b end
    assert fn(1,2) == 1
  end

  def new_name(name), do: "" 
  test "modify the named function above to pass the assertion" do
    assert new_name("José") == "Chris"
  end

  def put_in_list(name), do name
  test "modify the named function above to pass the assertion" do
    assert put_in_list("Bruce") == ["Bruce"]
  end
end
