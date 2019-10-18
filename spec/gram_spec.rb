require("rspec")
require("gram")

describe("Gram") do
  describe("#anagram") do
    it("checks if two words are anagrams") do
      gram = Gram.new("art", "tar")
      expect(gram.anagram()).to eq("perfect anagram!")
    end

    it("checks if two words are antigrams") do
      gram = Gram.new("art", "con")
      expect(gram.anagram()).to eq("perfect antigram!")
    end
    it("checks if the first word has extra letters") do
      gram = Gram.new("heart", "tar")
      expect(gram.anagram()).to eq("word 1 had extra letters")
    end

    it("checks if the second word has extra letters") do
      gram = Gram.new("art", "tare")
      expect(gram.anagram()).to eq("word 2 had extra letters")
    end

    it("accounts for capitalization") do
      gram = Gram.new("Art", "Tar")
      expect(gram.anagram()).to eq("perfect anagram!")
    end

    it("makes sure words contain vowels") do
      gram = Gram.new("rt", "tr")
      expect(gram.anagram()).to eq("inputs need vowels!")
    end

    it("checks full sentences for anagram/antigram") do
      gram = Gram.new("Justin Timberlake", "Im a jerk, but listen")
      expect(gram.anagram()).to eq("perfect anagram!")
    end

end


end
