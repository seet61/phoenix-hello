defmodule Hello.UserTest do
  use ExUnit.Case
  alias Hello.{Repo, User}

  test "user schema check" do
    changeset = User.changeset(%User{}, %{})
    IO.puts(inspect(changeset))
    IO.puts("is it valid?: #{changeset.valid?}")
    IO.puts("errors: #{inspect(changeset.errors)}")
  end

  @tag create_user: true
  test "create test user" do
    params = %{
      name: "Дима Тест",
      email: "test@mail.ru",
      bio: "asdad",
      number_of_pets: 1,
      random_key: "random value"
    }

    changeset = User.changeset(%User{}, params)
    IO.puts(inspect(changeset))
    IO.puts("is it valid?: #{changeset.valid?}")
    IO.puts("changes: #{inspect(changeset.changes)}")
    Repo.insert(changeset)
  end
end
