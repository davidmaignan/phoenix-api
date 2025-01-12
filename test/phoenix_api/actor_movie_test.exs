defmodule PhoenixApi.ActorMovieTest do
  use PhoenixApi.DataCase

  describe "actor movies" do
    import PhoenixApi.ActorMovieFixtures
    import PhoenixApi.ActorsFixtures
    import PhoenixApi.MoviesFixtures

    test "list_movies/0 returns all movies" do
      a = actor_fixture()
      m = movie_fixture()

      actor_movie_fixture(%{actor_id: a.id, movie_id: m.id})

      movie = Repo.get(PhoenixApi.Movies.Movie, m.id) |> Repo.preload(:actors)
      actor = Repo.get(PhoenixApi.Actors.Actor, a.id) |> Repo.preload(:movies)

      assert movie.actors == [a]
      assert actor.movies == [m]
    end
  end
end
