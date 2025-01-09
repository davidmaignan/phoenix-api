defmodule PhoenixApiWeb.FilmControllerTest do
  use PhoenixApiWeb.ConnCase

  import PhoenixApi.FilmsFixtures

  alias PhoenixApi.Films.Film

  @create_attrs %{
    title: "some title"
  }
  @update_attrs %{
    title: "some updated title"
  }
  @invalid_attrs %{title: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all films", %{conn: conn} do
      conn = get(conn, ~p"/api/films")
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create film" do
    test "renders film when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/api/films", film: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, ~p"/api/films/#{id}")

      assert %{
               "id" => ^id,
               "title" => "some title"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/api/films", film: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update film" do
    setup [:create_film]

    test "renders film when data is valid", %{conn: conn, film: %Film{id: id} = film} do
      conn = put(conn, ~p"/api/films/#{film}", film: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, ~p"/api/films/#{id}")

      assert %{
               "id" => ^id,
               "title" => "some updated title"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, film: film} do
      conn = put(conn, ~p"/api/films/#{film}", film: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete film" do
    setup [:create_film]

    test "deletes chosen film", %{conn: conn, film: film} do
      conn = delete(conn, ~p"/api/films/#{film}")
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, ~p"/api/films/#{film}")
      end
    end
  end

  defp create_film(_) do
    film = film_fixture()
    %{film: film}
  end
end
