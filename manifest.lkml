project_name: "udp_staging"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
remote_dependency: udp_dev {
  url: "https://github.com/khushbuku/udp_dev"
  ref: "master"

  # override_constant: map_layer {
  #   value: "/maps/output.json"
  # }

  # override_constant: format {
  #   value: "topojson"
  # }

  # override_constant: feature_key {
  #   value: "BEL_adm1"
  # }

  # override_constant: property_key {
  #   value: "HASC_1"
  # }

  # override_constant: property_label_key {
  #   value: "NAME_1"
  # }

}
