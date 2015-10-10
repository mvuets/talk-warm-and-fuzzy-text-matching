#!/usr/bin/env perl

use v5.20;
use warnings;
use Text::Fuzzy;

say Text::Fuzzy->new("The Beatles")
               ->distance("The Rolling Stones");
