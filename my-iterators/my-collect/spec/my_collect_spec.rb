describe "my_collect" do
  let(:languages) { ['ruby', 'javascript', 'python', 'objective-c'] }

  it "can handle an empty collection" do
    empty_array = []
    counter = 0
      my_collect(empty_array) do |x|
        counter += 1
      end
    expect(counter).to eq(0)
  end

  it "yields the correct element" do
    my_collect(languages) do |language|
      expect(language).to_not eq(nil)
    end
  end

  it "returns a new collection" do
    expect(my_collect(languages) do |language|
      language.upcase
    end).to eq(["RUBY", "JAVASCRIPT", "PYTHON", "OBJECTIVE-C"])
  end

  it 'does not modify the original collection' do
    my_collect(languages) do |language|
      language.upcase
    end
    expect(languages).to eq(['ruby', 'javascript', 'python', 'objective-c'])
  end
end
