assert = require "assert"
Amen = require "amen"

Amen.describe "Process functions", (context) ->

  {abort, shell} = require "../src"

  context.test "abort", ->
    # abort is exported and is a function
    assert abort
    assert abort instanceof Function

  context.test "shell", ->
    assert.equal "hello",
      (yield shell "bash -c 'echo -n hello'").stdout
