defmodule ListlengthTest do
  use ExUnit.Case

  describe "call/1" do
    test "count list elements" do
      list1 = [1, 2, 3, 4, 5, 6]
      list2 = [1, 2]
      list3 = [1, 2, 3, 4]

      assert Listlength.call(list1) == 6
      assert Listlength.call(list2) == 2
      assert Listlength.call(list3) == 4
    end

    test "passing an empty list" do
      list = []

      assert Listlength.call(list) == 0
    end
  end
end
