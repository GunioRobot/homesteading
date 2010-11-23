class SamplesController < ApplicationController
  def note
    @tags = ["homesteading", "data", "website", "idea", "open web", "personal web", "snowflake"]
  end

  def status
    @tags = ["larb"]
  end
end
