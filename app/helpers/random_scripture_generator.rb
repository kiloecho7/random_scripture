require 'net/http'

class RandomScriptureGenerator
  #@@ot = ['gen', 'ex', 'lev', 'num', 'deut', 'josh', 'judg', 'ruth', '1-sam', '2-sam', '1-kgs', '2-kgs', '1-chr', '2-chr', 'ezra', 'neh', 'esth', 'job', 'ps', 'prov', 'eccl', 'song', 'isa', 'jer', 'lam', 'ezek', 'dan', 'hosea', 'joel', 'amos', 'obad', 'jonah', 'micah', 'nahum', 'hab', 'zeph', 'hag', 'zech', 'mal']
  #@@nt = ['matt', 'mark', 'luke', 'john', 'acts', 'rom', '1-cor', '2-cor', 'gal', 'eph', 'philip', 'col', '1-thes', '2-thes', '1-tim', '2-tim', 'titus', 'philem', 'heb', 'james', '1-pet', '2-pet', '1-jn', '2-jn', '3-jn', 'jude', 'rev']
  #@@bm = ['introduction', 'three', 'eight', 'js', 'explanation', 'illustrations', '1-ne', '2-ne', 'jacob', 'enos', 'jarom', 'omni', 'w-of-m', 'mosiah', 'alma', 'hel', '3-ne', '4-ne', 'morm', 'ether', 'moro']
  @@dc = ['introduction', '*sections', 'od']
  #@@pgp = ['moses', 'abr', 'introduction', 'js-m', 'js-h', 'a-of-f']
  @@volumes = [ @@dc ]
  #@@volumes = [@@ot, @@nt, @@bm, @@dc, @@pgp]

  def do_it
    volume_num = 0
    #volume_num = rand(5)
    volume = look_up_volume( volume_num )
    book_index = rand(volume.size)
    book = volume[book_index]
    chapter = calculate_chapter( book )
    "#{book} #{chapter}"
  end
  
  def look_up_volume( volume_num )
    @@volumes[volume_num]
  end

  def calculate_chapter( book )
    max_chapters = @@chapters_per_book[book]
    return 0 if max_chapters == 0
    rand(max_chapters) + 1
  end


  @@chapters_per_book = {
    'gen' => 50,
    'ex' => 29,
    'lev' => 27,
    'num' => 36,
    'deut' => 34,
    'josh' => 24,
    'judg' => 21,
    'ruth' => 4,
    '1-sam' => 31,
    '2-sam' => 24,
    '1-kgs' => 22,
    '2-kgs' => 25,
    '1-chr' => 29,
    '2-chr' => 36,
    'ezra' => 10,
    'neh' => 13,
    'esth' => 10,
    'job' => 42,
    'ps' => 150,
    'prov' => 31,
    'eccl' => 12,
    'song' => 8,
    'isa' => 66,
    'jer' => 52,
    'lam' => 5,
    'ezek' => 48,
    'dan' => 12,
    'hosea' => 14,
    'joel' => 3,
    'amos' => 9,
    'obad' => 1,
    'jonah' => 4,
    'micah' => 7,
    'nahum' => 3,
    'hab' => 3,
    'zeph' => 3,
    'hag' => 2,
    'zech' => 14,
    'mal' => 4,
    'matt' => 28,
    'mark' => 16,
    'luke' => 24,
    'john' => 21,
    'acts' => 28,
    'rom' => 16,
    '1-cor' => 16,
    '2-cor' => 13,
    'gal' => 6,
    'eph' => 6,
    'philip' => 4,
    'col' => 4,
    '1-thes' => 5,
    '2-thes' => 3,
    '1-tim' => 6,
    '2-tim' => 4,
    'titus' => 3,
    'philem' => 1,
    'heb' => 13,
    'james' => 5,
    '1-pet' => 5,
    '2-pet' => 3,
    '1-jn' => 5,
    '2-jn' => 1,
    '3-jn' => 1,
    'jude' => 1,
    'rev' => 22,
    'introduction' => 0,
    'three' => 0,
    'eight' => 0,
    'js' => 0,
    'explanation' => 0,
    'illustrations' => 0,
    '1-ne' => 22,
    '2-ne' => 33,
    'jacob' => 7,
    'enos' => 1,
    'jarom' => 1,
    'omni' => 1,
    'w-of-m' => 1,
    'mosiah' => 29,
    'alma' => 63,
    'hel' => 16,
    '3-ne' => 30,
    '4-ne' => 1,
    'morm' => 9,
    'ether' => 15,
    'moro' => 10,
    '*sections' => 138,
    'od' => 0,
    'moses' => 8,
    'abr' => 5,
    'introduction' => 0,
    'js-m' => 1,
    'js-h' => 1,
    'a-of-f' => 1
  }
  
  
end
