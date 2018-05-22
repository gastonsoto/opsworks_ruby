# frozen_string_literal: true

module Drivers
  module Db
    class PostgresqlMakara < Base
      adapter :postgresql_makara
      allowed_engines :postgresql_makara
      packages debian: 'libpq-dev', rhel: 'postgresql96-devel'
    end
  end
end
