require "Tame.bundle"
OSX::ns_import :Tame

steps_for(:tame) do
  Given "a Tame instance" do
    @tame = OSX::Tame.alloc.init
  end
  
  Given "two numbers to add, $a and $b" do |a, b|
    @a = a.to_i
    @b = b.to_i
  end
  
  When "the numbers are added" do
    @ret = @tame.add_to(@a, @b)
  end
  
  Then "the return value should be $x" do |x|
    @ret.should == x.to_i
  end
end