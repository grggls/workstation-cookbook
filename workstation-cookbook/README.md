# workstation-cookbook-cookbook

Configures a personal computer for the day-to-day tasks of a system administrator (or just this one), includes tools, packages, and some dotfiles.

## Supported Platforms

Tested on Mac OS X 10.10.x

## Attributes

## Usage

### workstation-cookbook::default

Include `workstation-cookbook` in your node's `run_list` if you have other chef work to incorporate this into:

```json
{
  "run_list": [
    "recipe[workstation-cookbook::default]"
  ]
}
```

## License and Authors

Author:: Gregory Damiani <gregory.damiani@gmail.com>
