class DreamjobController < ApplicationController
  def randojob

        @unicorn_click = params[:unicorn]

        require 'cb'
        require 'pry'

        # add our developer key to the cb gem configuration
        #     Cb.configure do |config|
        #       config.dev_key    = 'WDHM2SQ6YLLT361PRNZF'
        #       config.time_out   = 5
        #     end

        # ask the important questions
            search_location = "atlanta, ga"
            search_this_keyword = "Software Engineer"

        # the api wants keywords as comma seperated
            user_keywords = search_this_keyword.split(" ").join(',')

        # Use our CB job helper to search for jobs in atlanta
            results = Cb.job.search({ location: search_location,
                                      keyword: user_keywords
                                    })

            results.model.jobs.each do |job|
              @title = job.title
              @location =  job.location
              @pay = job.pay

    end
  end

  def jobpath
  end
end
