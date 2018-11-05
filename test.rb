require './parentheses_matcher'

describe 'parentheses_matcher.match' do
  let(:subject) { ParenthesesMatcher }

  context 'when str is ()' do
    let(:str) { '()' }

    it '0 should return 1' do
      expect(subject.match(str, 0)).to eq(1)
    end

    it '1 should return -1' do
      expect(subject.match(str, 1)).to eq(-1)
    end

    it '2 should return -1' do
      expect(subject.match(str, 2)).to eq(-1)
    end
  end

  context 'when str is (((())))' do
    let(:str) { '(((())))' }

    it '1 should return 6' do
      expect(subject.match(str, 1)).to eq(6)
    end

    it '0 should return 7' do
      expect(subject.match(str, 0)).to eq(7)
    end

    it '2 should return 5' do
      expect(subject.match(str, 2)).to eq(5)
    end

    it '3 should return 4' do
      expect(subject.match(str, 3)).to eq(4)
    end
  end

  context 'when str is (((()' do
    let(:str) { '(((()' }

    it '0 should return -1' do
      expect(subject.match(str, 0)).to eq(-1)
    end
  end
end
