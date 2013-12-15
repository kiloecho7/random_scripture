require 'net/http'

ot_books = ['gen', 'ex', 'lev', 'num', 'deut', 'josh', 'judg', 'ruth', '1-sam', '2-sam', '1-kgs', '2-kgs', '1-chr', '2-chr', 'ezra', 'neh', 'esth', 'job', 'ps', 'prov', 'eccl', 'song', 'isa', 'jer', 'lam', 'ezek', 'dan', 'hosea', 'joel', 'amos', 'obad', 'jonah', 'micah', 'nahum', 'hab', 'zeph', 'hag', 'zech', 'mal']

nt_books = ['matt', 'mark', 'luke', 'john', 'acts', 'rom', '1-cor', '2-cor', 'gal', 'eph', 'philip', 'col', '1-thes', '2-thes', '1-tim', '2-tim', 'titus', 'philem', 'heb', 'james', '1-pet', '2-pet', '1-jn', '2-jn', '3-jn', 'jude', 'rev']

bm_books = ['introduction', 'three', 'eight', 'js', 'explanation', 'illustrations', '1-ne', '2-ne', 'jacob', 'enos', 'jarom', 'omni', 'w-of-m', 'mosiah', 'alma', 'hel', '3-ne', '4-ne', 'morm', 'ether', 'moro']

pgp = []

bm_books.each { |book| 
  print "#{book} "
  chap = 1
  has_chapter = true
  while has_chapter do
    #puts chap
    path =           "/scriptures/bofm/#{book}/#{chap}?lang=eng"
    #puts path
    source = Net::HTTP.get('www.lds.org', path)
    #puts source
    has_chapter = source.length != 0
    #puts source.include? 'Page Not Found'
    chap += 1
  end
  puts ( chap - 2)  

}


