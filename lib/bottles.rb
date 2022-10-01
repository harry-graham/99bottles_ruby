class Bottles
  def verse(n)
    "#{subject(n)} of beer on the wall, " +
    "#{subject(n)} of beer.\n" +
    "Take #{n == 1 ? "it" : "one"} down and pass it around, " +
    "#{subject(n-1)} of beer on the wall.\n"
  end

  private

  def subject(n)
    case n
    when 0 then "no more bottles"
    when 1 then "1 bottle"
    else "#{n} bottles"
    end
  end
end
