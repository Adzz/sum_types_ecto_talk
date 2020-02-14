import Config

config :olympics, ecto_repos: [Olympics.Repo]

config :olympics, Olympics.Repo,
  database: "olympics_repo",
  username: "nested",
  password: "nested",
  database: "nest",
  hostname: "127.0.0.1",
  socket_dir: nil,
  port: 54321,
  timeout: 60_000
