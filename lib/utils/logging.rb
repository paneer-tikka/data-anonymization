require 'active_record'
require 'logger'

module DataAnon
  module Utils
    module Logging

      def logger
        # We will assume that we are running under rails
        ActiveRecord::Base.logger ||= (self.logger = Logger.new(STDOUT) )
      end

      def logger= logger
        # We do not use @@logger
        ActiveRecord::Base.logger = logger
        logger
      end

    end
  end
end
