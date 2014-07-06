Put in the number that you want to compare in #0 and #1
For this example #0 = 1 #1 = 2

+               #0 = 1
>               Move to #1
++              #1 = 2
>               Move to #2
+++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++  #2 = '0'
>               Move to #3
+++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ +++++ ++++ #3 = '1'
>               Move to #4
+++++ +++++     #4 '\n'
>               Move to #5 (used to control outer loop)
+               #5 = 1
[
    >           Move to #6
    [-]         #6 = 0
    +           #6 = 1
    >           Move to #7
    [-]         #7 = 0

    <<<<<<<     Move to #0
    [
        -       Decrement #0
        >>>>>>  Move to #6
        [-]     #6 = 0
        >       Move to #7
        +       Increment #7
        <<<<<<< Move to #0
    ]

    >>>>>>      Move to #6
    [
        [-]     #6 = 0
        <<<<    Move to #2
        .       Print #2
        >>      Move to #4
        .       Print '\n'
        >       Move to #5
        [-]     #5 = 0
        >       Move to #6
    ]

    Copy #7 back to #0
    >           Move to #7
    [
        -
        <<<<<<< Move to #0
        +       Increment #0
        >>>>>>> Move to #7
    ]

    <           Move to #6
    [-]         #6 = 0
    +           #6 = 1
    >           Move to #7
    [-]         #7 = 0

    <<<<<<      Move to #1
    [
        -       Decrement #1
        >>>>>   Move to #6
        [-]     #6 = 0
        >       Move to #7
        +       Increment #7
        <<<<<<  Move to #1
    ]

    >>>>>       Move to #6
    [
        [-]     #6 = 0
        <<<     Move to #3
        .       Print '1'
        >       Move to #4
        .       Print '\n'
        >       Move to #5
        [-]     #5 = 0
        >       Move to #6
    ]

    >           Move to #7
    [
        -       Decrement #7
        <<<<<<  Move to #1
        +       Increment #1
        >>>>>>  Move to #7
    ]

    <<<<<<      Move to #1
    -           Decrement #1
    <           Move to #0
    -           Decrement #0
    >>>>>       Move to #5
]
