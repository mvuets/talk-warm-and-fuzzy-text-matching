#!/usr/bin/env perl

use v5.20;
use warnings;
use Data::CosineSimilarity;
use Text::Ngram qw<ngram_counts>;

my $cs = Data::CosineSimilarity->new;
$cs->add("listen-1", ngram_counts("listen", 1));
$cs->add("silent-1", ngram_counts("silent", 1));
say $cs->similarity("listen-1", "silent-1")->cosine;

$cs->add("listen-2", ngram_counts("listen", 2));
$cs->add("silent-2", ngram_counts("silent", 2));
say $cs->similarity("listen-2", "silent-2")->cosine;
