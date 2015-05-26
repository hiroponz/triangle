require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect(Triangle.total_count_for(0)).to eq 0 }
  specify { expect(Triangle.total_count_for(1)).to eq 1 }
  specify { expect(Triangle.total_count_for(3)).to eq 4 }
  specify { expect(Triangle.total_count_for(11)).to eq 16 }
  specify { expect(Triangle.total_count_for(100)).to eq 149 }
end
