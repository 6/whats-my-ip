run Proc.new {|env|
  ip = env["HTTP_X_FORWARDED_FOR"] || env["REMOTE_ADDR"]
  [200, {"Content-Type" => "text/plain"}, [ip]]
}
