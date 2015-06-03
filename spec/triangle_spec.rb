require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect(Triangle.new(0, 1, 2).category).to eq :invalid }
  specify { expect(Triangle.new(1, 2, 3).category).to eq :invalid }
  specify { expect(Triangle.new(2, 3, 4).category).to eq :scalene }
  specify { expect(Triangle.new(1, 1, 2).category).to eq :invalid }
  specify { expect(Triangle.new(2, 2, 3).category).to eq :isosceles }
  specify { expect(Triangle.new(2, 2, 4).category).to eq :invalid }
  specify { expect(Triangle.new(3, 3, 4).category).to eq :isosceles }
  specify { expect(Triangle.new(0, 0, 0).category).to eq :invalid }
  specify { expect(Triangle.new(1, 1, 1).category).to eq :regular }
  specify { expect(Triangle.new(2, 2, 2).category).to eq :regular }
end
