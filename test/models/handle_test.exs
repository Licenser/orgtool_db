defmodule OrgtoolDb.HandleTest do
  use OrgtoolDb.ModelCase

  alias OrgtoolDb.Handle

  @valid_attrs %{handle: "some content", img: "some content", login: "some content", member: 42, name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Handle.changeset(%Handle{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Handle.changeset(%Handle{}, @invalid_attrs)
    refute changeset.valid?
  end
end