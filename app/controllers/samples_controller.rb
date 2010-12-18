class SamplesController < ApplicationController
  # this hash constant is avoid using the database for the samples
  ACTIVITIES = {
    :audio    => ["bramble", "slc", "salt lake city", "james miska", "folk", "diy"],
    :bookmark => ["arcade fire", "html5", "google", "chrome", "experiment", "toread", "private"],
    :code     => ["ruby", "rails", "helper"],
    :list     => ["zombies", "28 days later", "stacey", "10 rules"],
    :note     => ["larb"],
    :photo    => ["portland","nintendo","video games","shelf","nate","n8","8-bit","collection","shelf"],
    :quote    => ["crimethinc", "anarchism", "without adjectives"],
    :status   => ["homesteading", "data", "website", "idea", "open web", "personal web", "snowflake"],
    :video    => ["cat", "dog", "puppie", "pit bull", "bike house", "salt lake city"]
  }

  before_filter :set_tags

  def set_tags
    @tags = SamplesController::ACTIVITIES[action_name.to_sym]
  end
end
