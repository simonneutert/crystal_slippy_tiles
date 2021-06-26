# https://wiki.openstreetmap.org/wiki/Slippy_map_tilenames#Lon..2Flat._to_tile_numbers_3
module SlippyTiles
  VERSION = "0.1.0"

  extend self

  def get_tile_number(lat_deg : Float64, lng_deg : Float64, zoom : UInt8) : NamedTuple(x: Int32, y: Int32)
    lat_rad = lat_deg/180 * Math::PI
    n = 2.0 ** zoom
    x = ((lng_deg + 180.0) / 360.0 * n).to_i
    y = ((1.0 - Math.log(Math.tan(lat_rad) + (1 / Math.cos(lat_rad))) / Math::PI) / 2.0 * n).to_i
    
    {x: x, y: y}
  end

  def get_lat_lng_for_number(xtile : UInt32, ytile : UInt32, zoom : UInt8) : NamedTuple(lat_deg: Float64, lng_deg: Float64)
    n = 2.0 ** zoom
    lon_deg = xtile / n * 360.0 - 180.0
    lat_rad = Math.atan(Math.sinh(Math::PI * (1 - 2 * ytile / n)))
    lat_deg = 180.0 * (lat_rad / Math::PI)

    {lat_deg: lat_deg, lng_deg: lon_deg}
  end
end
