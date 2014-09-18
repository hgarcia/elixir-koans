Code.require_file "test_helper.exs", __DIR__

defmodule FunctionsTest do
  use ExUnit.Case

  test "modify the right hand side to pass the assertion" do
    count = 99
    add_one = fn(n) -> n+1 end
    add_one.(count)
    assert count == 100
  end

  test "modify the right hand side to pass the assertion" do
    name = "dave"
    assert String.capitalize name == "dave"
  end
end
