#!/usr/bin/env ruby -wKU

require './tower.rb'

first = Tower.new([1,2,3,4], "first")
second = Tower.new([],"second")
third = Tower.new([], "third")


print first.status