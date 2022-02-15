module ApplicationHelper
    def select_year
        if !@datetime || @datetime == 0
          val = "1"
          middle_year = Date.today.year
        else
          val = middle_year = year
        end
      
        if @options[:use_hidden] || @options[:discard_year]
          build_hidden(:year, val)
        else
          options                     = {}
          options[:start]             = @options[:start_year] || middle_year - 50
          options[:end]               = @options[:end_year] || middle_year + 5
          options[:step]              = options[:start] < options[:end] ? 1 : -1
          options[:leading_zeros]     = false
          options[:max_years_allowed] = @options[:max_years_allowed] || 1000
      
          if (options[:end] - options[:start]).abs > options[:max_years_allowed]
            raise ArgumentError, "There are too many years options to be built. Are you sure you haven't mistyped something? You can provide the :max_years_allowed parameter."
          end
      
          build_options_and_select(:year, val, options)
        end
      end

end
