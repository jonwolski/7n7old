valid([]).
valid([Head|Tail]) :- 
  fd_all_different(Head),
  valid(Tail).

sudoku( Puzzle, Solution ) :- 
  Solution = Puzzle,
  Puzzle = [ S00, S01, S02,   S03, S04, S05,   S06, S07, S08,
             S10, S11, S12,   S13, S14, S15,   S16, S17, S18,
             S20, S21, S22,   S23, S24, S25,   S26, S27, S28,

             S30, S31, S32,   S33, S34, S35,   S36, S37, S38,
             S40, S41, S42,   S43, S44, S45,   S46, S47, S48,
             S50, S51, S52,   S53, S54, S55,   S56, S57, S58,

             S60, S61, S62,   S63, S64, S65,   S66, S67, S68,
             S70, S71, S72,   S73, S74, S75,   S76, S77, S78,
             S80, S81, S82,   S83, S84, S85,   S86, S87, S88 ],

  fd_domain(Solution, 1, 9 ),

  Row0 = [ S00, S01, S02, S03, S04, S05, S06, S07, S08 ],
  Row1 = [ S10, S11, S12, S13, S14, S15, S16, S17, S18 ],
  Row2 = [ S20, S21, S22, S23, S24, S25, S26, S27, S28 ],
  Row3 = [ S30, S31, S32, S33, S34, S35, S36, S37, S38 ],
  Row4 = [ S40, S41, S42, S43, S44, S45, S46, S47, S48 ],
  Row5 = [ S50, S51, S52, S53, S54, S55, S56, S57, S58 ],
  Row6 = [ S60, S61, S62, S63, S64, S65, S66, S67, S68 ],
  Row7 = [ S70, S71, S72, S73, S74, S75, S76, S77, S78 ],
  Row8 = [ S80, S81, S82, S83, S84, S85, S86, S87, S88 ],
 
  Col0 = [ S00, S10, S20, S30, S40, S50, S60, S70, S80 ],
  Col1 = [ S01, S11, S21, S31, S41, S51, S61, S71, S81 ],
  Col2 = [ S02, S12, S22, S32, S42, S52, S62, S72, S82 ],
  Col3 = [ S03, S13, S23, S33, S43, S53, S63, S73, S83 ],
  Col4 = [ S04, S14, S24, S34, S44, S54, S64, S74, S84 ],
  Col5 = [ S05, S15, S25, S35, S45, S55, S65, S75, S85 ],
  Col6 = [ S06, S16, S26, S36, S46, S56, S66, S76, S86 ],
  Col7 = [ S07, S17, S27, S37, S47, S57, S67, S77, S87 ],
  Col8 = [ S08, S18, S28, S38, S48, S58, S68, S78, S88 ],

  Square0 = [ S00, S01, S02, 
              S10, S11, S12,
              S20, S21, S22 ],

  Square1 = [ S30, S31, S32,
              S40, S41, S42, 
              S50, S51, S52 ],

  Square2 = [ S60, S61, S62,
              S70, S71, S72,
              S80, S81, S82 ],
  
  Square3 = [               S03, S04, S05,
                            S13, S14, S15,
                            S23, S24, S25 ],

  Square4 = [               S33, S34, S35, 
                            S43, S44, S45,
                            S53, S54, S55 ],

  Square5 = [               S63, S64, S65,
                            S73, S74, S75,
                            S83, S84, S85 ],

  Square6 = [                               S06, S07, S08,
                                            S16, S17, S18,
                                            S26, S27, S28 ],

  Square7 = [                               S36, S37, S38,
                                            S46, S47, S48,
                                            S56, S57, S58 ],

  Square8 = [                               S66, S67, S68,
                                            S76, S77, S78,
                                            S86, S87, S88 ],

  valid( [ Col0, Col1, Col2, Col3, Col4, Col5, Col6, Col7, Col8,
           Row0, Row1, Row2, Row3, Row4, Row5, Row6, Row7, Row8,
           Square0, Square1, Square2, Square3, Square4, Square5, Square6, Square7, Square8 ] ).

