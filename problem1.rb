puts (1..999).inject(0) {|s, i| (i%5==0 || i%3==0) ?  s + i : s}

