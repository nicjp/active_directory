#-- license
#
#  Based on original code by Justin Mecham and James Hunt
#  at http://rubyforge.org/projects/activedirectory
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#++ license

module ActiveDirectory
  module FieldType
    class Binary
      #
      # Encodes a hex string into a GUID
      #
      def self.encode(hex_string)
        hex_string.to_a.pack("H*")
      end

      #
      # Decodes a binary GUID as a hex string
      #
      def self.decode(guid)
        guid.unpack("H*").first.to_s
      end
    end
  end
end
