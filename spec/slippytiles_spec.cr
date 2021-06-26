require "./spec_helper"

describe SlippyTiles do
  it "gets tile number X" do
    tile = SlippyTiles.get_tile_number(50.0, 8.0, 14)
    tile[:x].should eq(8556)
  end

  it "gets tile number Y" do
    tile = SlippyTiles.get_tile_number(50.0, 8.0, 14)
    tile[:y].should eq(5556)
  end

  it "gets lat_deg from tile" do
    geo = SlippyTiles.get_lat_lng_for_number(8556, 5556, 14) 
    geo[:lat_deg].round.should eq(50)
  end

  it "gets lng_deg from tile" do
    geo = SlippyTiles.get_lat_lng_for_number(8556, 5556, 14) 
    geo[:lng_deg].round.should eq(8)
  end
end
