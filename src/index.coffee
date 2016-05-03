abort = (message) ->
  console.error message if message?
  process.exit -1

shell = (command) ->
  {promise} = require "fairmont-helpers"
  {exec} = require "child_process"
  promise (resolve, reject) ->
    exec command, (error, stdout, stderr) ->
      if error
        reject error
      else
        resolve {stdout, stderr}

module.exports = {abort, shell}
