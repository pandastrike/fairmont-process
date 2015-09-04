assert = require "assert"
Amen = require "amen"

Amen.describe "Process functions", (context) ->

  {shell, abort} = require "../src"

   context.test "shell", ->
    assert (yield shell "ls").stdout.trim?

   context.test "abort", ->
     assert abort "Process stopped."
