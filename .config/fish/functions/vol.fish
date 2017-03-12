#!/bin/fish

function vol

  if count $argv > /dev/null
    pamixer --set-volume $argv
  else
    pamixer --get-volume
  end

end
