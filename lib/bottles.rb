class Bottles
  def verse(n)
    "#{subject(n).capitalize} of beer on the wall, " +
    "#{subject(n)} of beer.\n" +
    "#{action_statement(n)}, " +
    "#{subject(n-1)} of beer on the wall.\n"
  end

  def verses(n1, n2)
    [*n1.downto(n2)].map { |n| verse(n) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  private

  def subject(n)
    case n
    when -1 then "99 bottles"
    when 0 then "no more bottles"
    when 1 then "1 bottle"
    else "#{n} bottles"
    end
  end

  def action_statement(n)
    case n
    when 0 then "Go to the store and buy some more"
    when 1 then "Take it down and pass it around"
    else "Take one down and pass it around"
    end
  end
end
