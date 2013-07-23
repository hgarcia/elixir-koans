Code.require_file "test_helper.exs", __DIR__

defmodule FunctionsTest do
  use ExUnit.Case

  test "modify the right hand to pass the expression" do
    a = []
    assert [1, 2, 3] = a
  end


end
