import jester

import json
import asyncdispatch


routes:
  post "/webhook":
    let data = parseJson(request.body)
    echo($data)
    resp Http200, "OK"

runForever()
