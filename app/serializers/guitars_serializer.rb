class GuitarsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :description, :name, :url
end
