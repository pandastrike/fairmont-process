assert = require "assert"
Amen = require "amen"

Amen.describe "Process functions", (context) ->

  {abort, shell} = require "../src"

  context.test "abort"
  context.test "shell", ->
    assert (yield shell "ls ./test").stdout.trim?
