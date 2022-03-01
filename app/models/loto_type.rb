class LotoType < DivisionBase
  set_filename "loto_type"

  include ActiveHash::Enum
  enum_accessor :type
end
