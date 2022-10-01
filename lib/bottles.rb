class Bottles
  def verse(n)
    "#{n} bottles of beer on the wall, " +
    "#{n} bottles of beer.\n" +
    "Take one down and pass it around, " +
    "#{n-1} #{n == 2 ? "bottle" : "bottles"} of beer on the wall.\n"
  end
end
