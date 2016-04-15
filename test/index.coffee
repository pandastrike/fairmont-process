assert = require "assert"
Amen = require "amen"

Amen.describe "Process functions", (context) ->

  {abort, shell} = require "../src"
  {join} = require "path"

  context.test "abort", ->
    # We can't really test functionality because it would just kill the test, haha.
    # So, we'll just check to make sure it is always exported and is a function.
    assert abort
    assert abort instanceof Function

  context.test "shell", ->
    {stdout} = yield shell "ls " + join __dirname, "shell-test-dir"
    files = stdout.split "\n"
    assert.deepEqual files, [ 'panda.md', 'strike.md', '' ]
