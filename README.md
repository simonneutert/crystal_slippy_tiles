# slippy_tiles

Crystal implementation of the Slippy Map Tilenames

https://wiki.openstreetmap.org/wiki/Slippy_map_tilenames

you can wrap this in a [kemal](https://kemalcr.com) project (or any other webservice / FaaS project) and use this for your tile based project 🔮 🚀
## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     slippy_tiles:
       github: simonneutert/slippy_tiles
   ```

2. Run `shards install`

## Usage

```crystal
require "slippy_tiles"

tile = SlippyTiles.get_tile_number(50.0, 8.0, 14)
puts tile[:x] #=> 8556
puts tile[:y] #=> 5556

geo = SlippyTiles.get_lat_lng_for_number(8556, 5556, 14) 
puts geo[:lat_deg].round #=> 50.0
puts geo[:lng_deg].round #=> 8.0
```

## Contributing

1. Fork it (<https://github.com/simonneutert/slippy_tiles/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Simon Neutert](https://github.com/simonneutert) - creator and maintainer
