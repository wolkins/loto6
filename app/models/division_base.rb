class DivisionBase < ActiveYaml::Base
  set_root_path "config/master"

  def self.[](status)
    if status.is_a? ActiveYaml::Base
      self.find(status.id)
    else
      self.find(status)
    end
  end
end
