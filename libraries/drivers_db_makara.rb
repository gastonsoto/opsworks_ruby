# frozen_string_literal: true

module Drivers
  module Db
    class Makara < Base
      adapter :postgresql_makara
      allowed_engines :postgres, :postgresql, :postgresql_makara
      packages debian: 'libpq-dev', rhel: 'postgresql96-devel'

      def out
        output = super
        output[:adapter] = 'postgresql_makara'
        handle_output(output)
      end     
    end
  end
end
