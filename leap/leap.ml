let leap_year (year : int) : bool =
    if (year mod 4) == 0 && 
       ((year mod 100 <> 0) || (year mod 400 == 0))
        then true
    else
        false;;