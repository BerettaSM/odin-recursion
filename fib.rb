def fibs n
    n2 = 0
    n1 = 1

    numbers = []

    n.times do
        numbers.append(n2)
        n2 = n1 + n2
        n1 = n2 - n1
    end

    numbers
end

