=begin
R18n methods for Rails helpers and controllers.

Copyright (C) 2009 Andrey “A.I.” Sitnik <andrey@sitnik.ru>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
=end

module R18n
  module Rails
    module Mixin
      # Return current R18n instance.
      def r18n
        R18n.get
      end
      
      # Extend +t+ helper to use also R18n syntax.
      # 
      #   t 'user.name' # Rails I18n style
      #   t.user.name   # R18n style
      def t(*params)
        if params.empty?
          r18n.t
        else
          super(*params)
        end
      end
    end
  end
end
