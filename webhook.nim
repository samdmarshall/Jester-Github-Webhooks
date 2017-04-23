import jester

import json
import asyncdispatch


routes:
  post "/webhook":
    let data = parseJson(request.body)
    echo(request.headers["X-GitHub-Event"])
    resp Http200, "OK"

runForever()
