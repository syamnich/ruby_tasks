require 'spec_helper'

describe 'Task' do
  context 'from wiki' do
    it '1' do
      a = [1, 2, 3, 4, 5, 6, 7, 8]
      expect(task1 a).to eq [1, 3, 5, 7, 2, 4, 6, 8]
    end

    it '5' do
      a = [4, 2, 5, 4, 3, 6, 9, 8]
      expect(task5 a).to eq [4, 6, 5, 8, 3, 10, 9, 8]
    end

    it '9' do
      a = [4, -2, 3, 0, 1, -1, 2]
      b = [4, 2, 3, 1, 6]
      expect(task9 a).to eq [-2, -2, -2, 0, -2, -1, -2]
      expect(task9 b).to eq [1, 1, 1, 1, 1]
    end

    it '13' do
      a = [1, 2, 3, 4, 5, 6, 7, 8]
      expect(task13 a).to eq [2, 3, 4, 5, 6, 7, 8, 1]
    end

    it '17' do
      a = [2, 3, 1, -1, 0, -2, 4]
      b = [8, 3, 1, 5, 2, 6]
      expect(task17 a).to eq 2
      expect(task17 b).to eq 1
    end

    it '21' do
      a = [2, 3, 5, 10, 10, 2, 4]
      b = [1, 2, 5, 2, 3, 7, 6, 9]
      c = [1, 2]
      expect(task21 a).to eq 2
      expect(task21 b).to eq 3
      expect(task21 c).to eq 1
    end

    it '25' do
      a = [1, 3, -5, 4, 2, -5, 6]
      expect(task25 a).to eq [1, 1, 1, 3, -5, 1, 4, 1, 2, -5, 1, 6]
    end

    it '29' do
      a = [4, 2, 5, 1]
      expect(task29 a).to eq [1, 2, 4, 5]
    end

    it '33' do
      a = [4, 2, 5, 1]
      expect(task33 a).to eq 3
    end

    it '37' do
      a = [1, 7, -3, 6, -3, 9]
      expect(task37 a).to eq 4
    end

    it '41' do
      a = [2, 7, -3, 6, -4, 9]
      expect(task41 a).to eq -4
    end

    it '45' do
      a = [2, 7, -3, 6, -4, 9]
      expect(task45 a).to eq 2
    end

    it '49' do
      a = [2, 7, -3, 6, -4, -4]
      expect(task49 a).to eq 4
    end

    it '51' do
      a = [2, 7, -4, 6, -4, 5]
      expect(task51 a).to eq 4
    end

    it '53' do
      a = [2, 7, -4, 7, 3, 4]
      expect(task53 a).to eq 3
    end

    it '57' do
      a = [2, 7, -4, 7, 3, 4]
      expect(task57 a).to eq 1
    end

    it '61' do
      a = [2, 7, -4, 8, 3, 4]
      expect(task61 a).to eq [7, 8]
    end

    it '65' do
      a = [1, 3, 8, 5, 4, 2, 0]
      expect(task65 a).to eq [8, 4, 2, 0, 1, 3, 5]
    end

    it '69' do
      r = 10.2
      a = [1.15, 3.6, 8.4, 5.55]
      expect(task69 a, r).to eq [1.15, 8.4]
    end

    it '73' do
      a = [1, 2, 1, 5, 2, 0, 2, 0]
      expect(task73 a).to eq [2, 5, 2, 2]
    end

    it '77' do
      n = 546
      expect(task77 n).to eq 15
    end

    it '81' do
      range = 1..8
      expect(task81 range).to eq({array: [7, 6, 5, 4, 3, 2], size: 6})
    end

    it '85' do
      n = 6
      expect(task85 n).to eq 48
      n = 5
      expect(task85 n).to eq 15
    end

    it '89' do
      a = [1, 3, 8, 5, 4, 2, 0]
      expect(task89 a).to eq [1, 3, 5]
    end

    it '93' do
      a = [1, 3, 8, 5, 4, 2, 0]
      k = 10
      expect(task93 a, k).to eq true
      k = 3
      expect(task93 a, k).to eq false
    end

    it '97' do
      a = [1, 5, 4, 2, 10, 5]
      k = 5
      expect(task97 a, k).to eq 3
    end

    it '101' do
      a = [1, 3, 8, 5, 4, 2, 3]
      expect(task101 a).to eq({ indices: [1, 2, 6], count: 3 })
    end

    it '105' do
      a = [9, 8, 17, 6, 3, 5, 2, 1]
      expect(task105 a).to eq 17
      a = [9, 8, 6, 3, 2, 1]
      expect(task105 a).to eq nil
    end

    it '109' do
      a = [1, 3, 8, 6, 4, 2, 3]
      expect(task109 a).to eq({ min: 1, max: 8})
    end
  end

  context 'custom implementation' do
    it 'sorting an array in even/odd order' do
      a = [1, 3, 8, 15, 4, 2, 3]
      expect(srt a).to eq [2, 4, 8, 1, 3, 3, 15]
    end

    it 'reversed an array' do
      a = [1, 2, 3, 4, 5]
      expect(rvr a).to eq [5, 4, 3, 2, 1]
    end

    it 'group by length' do
      a = ['three', 'one', 'four', 'six', 'ten', 'si', 'am']
      expect(group_by_length a).to eq ({ 2=>["si", "am"], 3=>["one", "six", "ten"], 4=>["four"], 5=>["three"] })
    end

    it 'local maximum in array' do
      a = [2, 3, 1, -1, 0, -2, 4]
      expect(local_max a).to eq [3, 0]
    end

    it 'map' do
      a = [1, 2, 3]
      expect(new_map(a) { |i| i + 1 }).to eq [2, 3, 4]
      expect(new_map(a) { 'cat' }).to eq ['cat', 'cat', 'cat']
    end

    it 'select' do
      a = [1, 2, 3]
      expect(new_select(a) { |i| i > 1 }).to eq [2, 3]
    end

    it 'detect' do
      a = [1, 2, 3]
      expect(new_detect(a) { |i| i > 1 }).to eq 2
      expect(new_detect(a) { |i| i > 5 }).to eq nil
    end

    it 'count' do
      a = [1, 2, 3, 2]
      expect(new_count(a)).to eq 4
      expect(new_count(a, 2)).to eq 2
      expect(new_count(a) { |i| i > 2 }).to eq 1
    end

    it 'all?' do
      a = [1, 2, 3, 2]
      expect(new_all?(a) { |i| i > 1 }).to eq false
      expect(new_all?(a) { |i| i >= 1 }).to eq true
      a = [nil, true, 99]
      expect(new_all?(a)).to eq false
      a = [1, true, 99]
      expect(new_all?(a)).to eq true
    end

    it 'any?' do
      a = [1, 2, 3, 2]
      expect(new_any?(a) { |i| i > 2 }).to eq true
      expect(new_any?(a) { |i| i >= 1 }).to eq true
      a = [nil, true, 99]
      expect(new_any?(a)).to eq true
    end

    it 'new_flatten?' do
      a = [[1, 2], [3, 4, 5], [6, [7, [8]]]]
      expect(new_flatten(a)).to eq [1, 2, 3, 4, 5, 6, 7, 8]
      expect(new_flatten(a, 1)).to eq [1, 2, 3, 4, 5, 6, [7, [8]]]
    end

    it 'hash_merge' do
      h1 = { a: 100, b: 200 }
      h2 = { b: 254, c: 300 }
      expect(hash_merge(h1, h2)).to eq({ a: 100, b: 254, c: 300})
    end

    it 'hash_merge' do
      a = ['James Bond', 'John Rambo', 'John Bond', 'Jack Rambo', 'Billy Idol']
      expect(group_by_last_name a).to eq({ "Bond"=>["James Bond", "John Bond"], "Rambo"=>["John Rambo", "Jack Rambo"], "Idol"=>["Billy Idol"] })
    end
  end
end
