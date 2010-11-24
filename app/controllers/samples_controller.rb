class SamplesController < ApplicationController
  # this hash constant is avoid using the database for the samples
  ACTIVITIES = {
    :note     => ["larb"],
    :status   => ["homesteading", "data", "website", "idea", "open web", "personal web", "snowflake"],
    :photo    => ["portland","nintendo","video games","shelf","nate","n8","8-bit","collection","shelf"],
    :video    => ["cat", "dog", "puppie", "pit bull", "bike house", "salt lake city"],
    :audio    => ["bramble", "slc", "salt lake city", "james miska", "folk", "diy"],
    :quote    => ["crimethinc", "anarchism", "without adjectives"],
    :bookmark => ["arcade fire", "html5", "google", "chrome", "experiment", "toread", "private"],
    :list     => ["zombies", "28 days later", "stacey", "10 rules"]
  }

  before_filter :set_tags

  def set_tags
    @tags = SamplesController::ACTIVITIES[action_name.to_sym]
  end
end
