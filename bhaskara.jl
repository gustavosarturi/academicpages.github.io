function bhaskara(a, b, c)
    if a !=0
        Δ = b^2 - 4 * a * c
        if Δ < 0
            error("As soluções deste número são complexas")
        else
            x1 = (-b + Δ^(1/2))/(2*a)
            x2 = (-b - Δ^(1/2))/(2*a)
        end
        return x1, x2
    else
        error("Não é uma função quadrática")
    end
end
