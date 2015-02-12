class DreamjobController < ApplicationController
  def randojob

        @unicorn_click = params[:unicorn]


        # add our developer key to the cb gem configuration
        #     Cb.configure do |config|
        #       config.dev_key    = 'WDHM2SQ6YLLT361PRNZF'
        #       config.time_out   = 5
        #     end

        # ask the important questions
            job_array = ["lawyer", "doctor", "engineer", "police", "fire", "surgeon", "manager", "teacher"]
            location_array = ["Atlanta", "Raleigh", "Orlando", "Indianapolis", "Denver"]
            search_location = location_array.shuffle.last
            search_this_keyword = job_array.shuffle.shuffle.first

        # the api wants keywords as comma seperated
            user_keywords = search_this_keyword.split(" ").join(',')

        # Use our CB job helper to search for jobs in atlanta
            @results = Cb.job.search({ location: search_location,
                                      keyword: user_keywords
                                    })
  end

  def jobpath
  end
end
