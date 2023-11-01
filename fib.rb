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

def fibs_rec n
    return [ 0 ] if n == 1
    return [ 0, 1 ] if n == 2
    arr = fibs_rec(n - 1)
    return arr + [arr[-2] + arr[-1]]
end
