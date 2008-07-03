require File.dirname(__FILE__) + "/story_helper"

with_steps_for(:tame) do
  run_local_story "tame_story"
end