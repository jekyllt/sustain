
# Sustain4

[![Build Status](https://secure.travis-ci.org/jekyller/sustain.png?branch=gh-pages)](http://travis-ci.org/jekyller/sustain)
[![Ruby](https://img.shields.io/badge/ruby-2.4.2-blue.svg?style=flat)](http://travis-ci.org/jekyller/sustain)
[![Jekyll](https://img.shields.io/badge/jekyll-3.6.2-blue.svg?style=flat)](http://travis-ci.org/jekyller/sustain)

Personal blog built with [Bootstrap](http://getbootstrap.com/), [SASS](https://sass-lang.com), [Font Awesome](https://www.fontawesome.com), powered by [Jekyll](http://jekyllrb.com/) and freely hosted in [Github pages](https://pages.github.com/).

This version is a fork of [Sustain](https://github.com/jekyller/sustain) but features a number of improvements:
1. Upgrade from Bootstrap 3 to Bootstrap 4
1. Upgrade Font Awesome to version 5.6.x
2. Uses SCSS instead of CSS
3. Implements a best practice directory hierarchy and filename convention outlined by [Ben Balter](http://ben.balter.com/jekyll-style-guide/)



## View the live demo

[Sustain4 Live Demo](https://johnpitchko.github.io/sustain4)



## Screenshots

**Home page**
![home page](https://raw.githubusercontent.com/johnpitchko/sustain4/gh-pages/assets/images/screen1.png)

**Blog page**
![blog page](https://raw.githubusercontent.com/johnpitchko/sustain4/gh-pages/assets/images/screen2.png)

**Post page**
![post page](https://raw.githubusercontent.com/johnpitchko/sustain4/gh-pages/assets/images/screen3.png)

**Projects page**
![project page](https://raw.githubusercontent.com/johnpitchko/sustain4/gh-pages/assets/images/screen4.png)



## How to use it

Simply clone/fork this repository, and then run `jekyll serve` inside the directory.
Edit the site attributes in *_config.yml* and edit the various entries in *_includes/* and *_posts/*.

### Navbar/menu

This theme uses the [jekyll-menus](https://github.com/forestryio/jekyll-menus/) plugin to generate the navbar. Items and sub-items can be added to the navbar either through the `_data/menus.yml` file or in the Front Matter on specific pages. Refer to the documentation for the plugin for more details.

## Issues and contributing

I have tested this install with Ruby v2.5.1 (Mac OS RVM) and Jekyll v3.8.5ru. If you run into any problems please log them on the [issue tracker](https://github.com/johnpitchko/sustain4/issues).

Feel free pull-request your patches and fixes.

## Build and publish the gem

This is a note so I remember the steps to build and publish (and sometimes yank) a gem.

#### To build

1. Update the .gemspec and increment the version number.
1. Run command `gem build sustain4-theme.gemspec`

#### To publish

1. `gem push sustain4-theme-*.gem`
2. Verify on [Rubygems.org](https://rubygems.org/gems/sustain4-theme)



#### Contributors

[John Pitchko](https://github.com/johnpitchko), December 2018

[Sumit Murari](https://github.com/murarisumit), November 2015

[Fábio Madeira](https://github.com/biomadeira) (original author), October 2015



## Thanks

Profile picture from [pexels](https://www.pexels.com/photo/portrait-black-african-ethnicity-person-9494/).



## Copyright & License

Copyright (C) 2015-2018 - Released under the MIT License.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
