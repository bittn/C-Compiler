#!/bin/bash
assert() {
  expected="$1"
  input="$2"
  
  bittn bikefile.rb "$input"
  sh build.sh bikefile.rb "$input"
  ./output
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "$input => $actual"
  else
    echo "$input => $expected expected, but got $actual"
    exit 1
  fi
}

assert example/example1.rb 
assert 42 42

echo OK
