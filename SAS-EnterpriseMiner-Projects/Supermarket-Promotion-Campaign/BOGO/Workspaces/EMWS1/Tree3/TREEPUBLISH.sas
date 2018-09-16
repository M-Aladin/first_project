****************************************************************;
******             DECISION TREE SCORING CODE             ******;
****************************************************************;

******         LENGTHS OF NEW CHARACTER VARIABLES         ******;
LENGTH I_TargetBuy  $   12; 
LENGTH _WARN_  $    4; 

******              LABELS FOR NEW VARIABLES              ******;
label _NODE_ = 'Node' ;
label _LEAF_ = 'Leaf' ;
label P_TargetBuy0 = 'Predicted: TargetBuy=0' ;
label P_TargetBuy1 = 'Predicted: TargetBuy=1' ;
label Q_TargetBuy0 = 'Unadjusted P: TargetBuy=0' ;
label Q_TargetBuy1 = 'Unadjusted P: TargetBuy=1' ;
label V_TargetBuy0 = 'Validated: TargetBuy=0' ;
label V_TargetBuy1 = 'Validated: TargetBuy=1' ;
label I_TargetBuy = 'Into: TargetBuy' ;
label U_TargetBuy = 'Unnormalized Into: TargetBuy' ;
label _WARN_ = 'Warnings' ;


******      TEMPORARY VARIABLES FOR FORMATTED VALUES      ******;
LENGTH _ARBFMT_12 $     12; DROP _ARBFMT_12; 
_ARBFMT_12 = ' '; /* Initialize to avoid warning. */
LENGTH _ARBFMT_1 $      1; DROP _ARBFMT_1; 
_ARBFMT_1 = ' '; /* Initialize to avoid warning. */


******             ASSIGN OBSERVATION TO NODE             ******;
IF  NOT MISSING(REP_Age ) AND 
  REP_Age  <                 44.5 THEN DO;
  _ARBFMT_1 = PUT( REP_Gender , $CHAR1.);
   %DMNORMIP( _ARBFMT_1);
  IF _ARBFMT_1 IN ('M' ,'U' ) THEN DO;
    IF  NOT MISSING(AffluenceGrade ) AND 
                      10.5 <= AffluenceGrade  THEN DO;
      IF  NOT MISSING(AffluenceGrade ) AND 
                        15.5 <= AffluenceGrade  THEN DO;
        _NODE_  =                   19;
        _LEAF_  =                    6;
        P_TargetBuy0  =     0.12195121951219;
        P_TargetBuy1  =      0.8780487804878;
        Q_TargetBuy0  =     0.12195121951219;
        Q_TargetBuy1  =      0.8780487804878;
        V_TargetBuy0  =     0.20930232558139;
        V_TargetBuy1  =      0.7906976744186;
        I_TargetBuy  = '1' ;
        U_TargetBuy  =                    1;
        END;
      ELSE DO;
        IF  NOT MISSING(NightRepairProducts ) AND 
          NightRepairProducts  <                  0.5 THEN DO;
          _NODE_  =                   36;
          _LEAF_  =                    4;
          P_TargetBuy0  =     0.64516129032258;
          P_TargetBuy1  =     0.35483870967741;
          Q_TargetBuy0  =     0.64516129032258;
          Q_TargetBuy1  =     0.35483870967741;
          V_TargetBuy0  =             0.546875;
          V_TargetBuy1  =             0.453125;
          I_TargetBuy  = '0' ;
          U_TargetBuy  =                    0;
          END;
        ELSE DO;
          _NODE_  =                   37;
          _LEAF_  =                    5;
          P_TargetBuy0  =     0.41666666666666;
          P_TargetBuy1  =     0.58333333333333;
          Q_TargetBuy0  =     0.41666666666666;
          Q_TargetBuy1  =     0.58333333333333;
          V_TargetBuy0  =     0.51351351351351;
          V_TargetBuy1  =     0.48648648648648;
          I_TargetBuy  = '1' ;
          U_TargetBuy  =                    1;
          END;
        END;
      END;
    ELSE DO;
      IF  NOT MISSING(REP_Age ) AND 
        REP_Age  <                 29.5 THEN DO;
        _ARBFMT_12 = PUT( MobileApplications , BEST12.);
         %DMNORMIP( _ARBFMT_12);
        IF _ARBFMT_12 IN ('1' ) THEN DO;
          _NODE_  =                   33;
          _LEAF_  =                    2;
          P_TargetBuy0  =     0.09090909090909;
          P_TargetBuy1  =      0.9090909090909;
          Q_TargetBuy0  =     0.09090909090909;
          Q_TargetBuy1  =      0.9090909090909;
          V_TargetBuy0  =     0.03703703703703;
          V_TargetBuy1  =     0.96296296296296;
          I_TargetBuy  = '1' ;
          U_TargetBuy  =                    1;
          END;
        ELSE DO;
          _NODE_  =                   32;
          _LEAF_  =                    1;
          P_TargetBuy0  =     0.73170731707317;
          P_TargetBuy1  =     0.26829268292682;
          Q_TargetBuy0  =     0.73170731707317;
          Q_TargetBuy1  =     0.26829268292682;
          V_TargetBuy0  =     0.65116279069767;
          V_TargetBuy1  =     0.34883720930232;
          I_TargetBuy  = '0' ;
          U_TargetBuy  =                    0;
          END;
        END;
      ELSE DO;
        _NODE_  =                   17;
        _LEAF_  =                    3;
        P_TargetBuy0  =     0.80877742946708;
        P_TargetBuy1  =     0.19122257053291;
        Q_TargetBuy0  =     0.80877742946708;
        Q_TargetBuy1  =     0.19122257053291;
        V_TargetBuy0  =     0.79756468797564;
        V_TargetBuy1  =     0.20243531202435;
        I_TargetBuy  = '0' ;
        U_TargetBuy  =                    0;
        END;
      END;
    END;
  ELSE DO;
    IF  NOT MISSING(AffluenceGrade ) AND 
      AffluenceGrade  <                  8.5 THEN DO;
      IF  NOT MISSING(REP_Age ) AND 
        REP_Age  <                 31.5 THEN DO;
        _NODE_  =                   20;
        _LEAF_  =                    7;
        P_TargetBuy0  =     0.17582417582417;
        P_TargetBuy1  =     0.82417582417582;
        Q_TargetBuy0  =     0.17582417582417;
        Q_TargetBuy1  =     0.82417582417582;
        V_TargetBuy0  =     0.31683168316831;
        V_TargetBuy1  =     0.68316831683168;
        I_TargetBuy  = '1' ;
        U_TargetBuy  =                    1;
        END;
      ELSE DO;
        IF  NOT MISSING(NightRepairProducts ) AND 
          NightRepairProducts  <                  0.5 THEN DO;
          _NODE_  =                   42;
          _LEAF_  =                    8;
          P_TargetBuy0  =     0.73142857142857;
          P_TargetBuy1  =     0.26857142857142;
          Q_TargetBuy0  =     0.73142857142857;
          Q_TargetBuy1  =     0.26857142857142;
          V_TargetBuy0  =     0.65340909090909;
          V_TargetBuy1  =      0.3465909090909;
          I_TargetBuy  = '0' ;
          U_TargetBuy  =                    0;
          END;
        ELSE DO;
          _ARBFMT_12 = PUT( FacebookLike , BEST12.);
           %DMNORMIP( _ARBFMT_12);
          IF _ARBFMT_12 IN ('1' ) THEN DO;
            _NODE_  =                   65;
            _LEAF_  =                   10;
            P_TargetBuy0  =     0.37426900584795;
            P_TargetBuy1  =     0.62573099415204;
            Q_TargetBuy0  =     0.37426900584795;
            Q_TargetBuy1  =     0.62573099415204;
            V_TargetBuy0  =     0.38541666666666;
            V_TargetBuy1  =     0.61458333333333;
            I_TargetBuy  = '1' ;
            U_TargetBuy  =                    1;
            END;
          ELSE DO;
            _NODE_  =                   64;
            _LEAF_  =                    9;
            P_TargetBuy0  =     0.56950672645739;
            P_TargetBuy1  =      0.4304932735426;
            Q_TargetBuy0  =     0.56950672645739;
            Q_TargetBuy1  =      0.4304932735426;
            V_TargetBuy0  =     0.63084112149532;
            V_TargetBuy1  =     0.36915887850467;
            I_TargetBuy  = '0' ;
            U_TargetBuy  =                    0;
            END;
          END;
        END;
      END;
    ELSE DO;
      _ARBFMT_12 = PUT( MobileApplications , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
        IF  NOT MISSING(AffluenceGrade ) AND 
                          11.5 <= AffluenceGrade  THEN DO;
          _NODE_  =                   45;
          _LEAF_  =                   13;
          P_TargetBuy0  =     0.23170731707317;
          P_TargetBuy1  =     0.76829268292682;
          Q_TargetBuy0  =     0.23170731707317;
          Q_TargetBuy1  =     0.76829268292682;
          V_TargetBuy0  =     0.19642857142857;
          V_TargetBuy1  =     0.80357142857142;
          I_TargetBuy  = '1' ;
          U_TargetBuy  =                    1;
          END;
        ELSE DO;
          IF  NOT MISSING(LotionProducts ) AND 
                             4.5 <= LotionProducts  THEN DO;
            _NODE_  =                   67;
            _LEAF_  =                   12;
            P_TargetBuy0  =     0.61904761904761;
            P_TargetBuy1  =     0.38095238095238;
            Q_TargetBuy0  =     0.61904761904761;
            Q_TargetBuy1  =     0.38095238095238;
            V_TargetBuy0  =     0.53658536585365;
            V_TargetBuy1  =     0.46341463414634;
            I_TargetBuy  = '0' ;
            U_TargetBuy  =                    0;
            END;
          ELSE DO;
            _NODE_  =                   66;
            _LEAF_  =                   11;
            P_TargetBuy0  =     0.34269662921348;
            P_TargetBuy1  =     0.65730337078651;
            Q_TargetBuy0  =     0.34269662921348;
            Q_TargetBuy1  =     0.65730337078651;
            V_TargetBuy0  =     0.41545893719806;
            V_TargetBuy1  =     0.58454106280193;
            I_TargetBuy  = '1' ;
            U_TargetBuy  =                    1;
            END;
          END;
        END;
      ELSE DO;
        _NODE_  =                   23;
        _LEAF_  =                   14;
        P_TargetBuy0  =                 0.15;
        P_TargetBuy1  =                 0.85;
        Q_TargetBuy0  =                 0.15;
        Q_TargetBuy1  =                 0.85;
        V_TargetBuy0  =     0.18568994889267;
        V_TargetBuy1  =     0.81431005110732;
        I_TargetBuy  = '1' ;
        U_TargetBuy  =                    1;
        END;
      END;
    END;
  END;
ELSE DO;
  IF  NOT MISSING(AffluenceGrade ) AND 
                    12.5 <= AffluenceGrade  THEN DO;
    _ARBFMT_1 = PUT( REP_Gender , $CHAR1.);
     %DMNORMIP( _ARBFMT_1);
    IF _ARBFMT_1 IN ('M' ,'U' ) THEN DO;
      IF  NOT MISSING(AffluenceGrade ) AND 
                        18.5 <= AffluenceGrade  THEN DO;
        _NODE_  =                   29;
        _LEAF_  =                   17;
        P_TargetBuy0  =     0.16666666666666;
        P_TargetBuy1  =     0.83333333333333;
        Q_TargetBuy0  =     0.16666666666666;
        Q_TargetBuy1  =     0.83333333333333;
        V_TargetBuy0  =     0.16666666666666;
        V_TargetBuy1  =     0.83333333333333;
        I_TargetBuy  = '1' ;
        U_TargetBuy  =                    1;
        END;
      ELSE DO;
        _NODE_  =                   28;
        _LEAF_  =                   16;
        P_TargetBuy0  =     0.81617647058823;
        P_TargetBuy1  =     0.18382352941176;
        Q_TargetBuy0  =     0.81617647058823;
        Q_TargetBuy1  =     0.18382352941176;
        V_TargetBuy0  =     0.79856115107913;
        V_TargetBuy1  =     0.20143884892086;
        I_TargetBuy  = '0' ;
        U_TargetBuy  =                    0;
        END;
      END;
    ELSE DO;
      _ARBFMT_12 = PUT( MobileApplications , BEST12.);
       %DMNORMIP( _ARBFMT_12);
      IF _ARBFMT_12 IN ('0' ) THEN DO;
        _NODE_  =                   31;
        _LEAF_  =                   20;
        P_TargetBuy0  =     0.58522727272727;
        P_TargetBuy1  =     0.41477272727272;
        Q_TargetBuy0  =     0.58522727272727;
        Q_TargetBuy1  =     0.41477272727272;
        V_TargetBuy0  =      0.6021505376344;
        V_TargetBuy1  =     0.39784946236559;
        I_TargetBuy  = '0' ;
        U_TargetBuy  =                    0;
        END;
      ELSE DO;
        IF  NOT MISSING(DayCareProducts ) AND 
          DayCareProducts  <                  0.5 THEN DO;
          _NODE_  =                   58;
          _LEAF_  =                   18;
          P_TargetBuy0  =               0.6875;
          P_TargetBuy1  =               0.3125;
          Q_TargetBuy0  =               0.6875;
          Q_TargetBuy1  =               0.3125;
          V_TargetBuy0  =     0.59090909090909;
          V_TargetBuy1  =      0.4090909090909;
          I_TargetBuy  = '0' ;
          U_TargetBuy  =                    0;
          END;
        ELSE DO;
          _NODE_  =                   59;
          _LEAF_  =                   19;
          P_TargetBuy0  =     0.25925925925925;
          P_TargetBuy1  =     0.74074074074074;
          Q_TargetBuy0  =     0.25925925925925;
          Q_TargetBuy1  =     0.74074074074074;
          V_TargetBuy0  =     0.27536231884057;
          V_TargetBuy1  =     0.72463768115942;
          I_TargetBuy  = '1' ;
          U_TargetBuy  =                    1;
          END;
        END;
      END;
    END;
  ELSE DO;
    _NODE_  =                    6;
    _LEAF_  =                   15;
    P_TargetBuy0  =     0.88150029886431;
    P_TargetBuy1  =     0.11849970113568;
    Q_TargetBuy0  =     0.88150029886431;
    Q_TargetBuy1  =     0.11849970113568;
    V_TargetBuy0  =     0.87782805429864;
    V_TargetBuy1  =     0.12217194570135;
    I_TargetBuy  = '0' ;
    U_TargetBuy  =                    0;
    END;
  END;

****************************************************************;
******          END OF DECISION TREE SCORING CODE         ******;
****************************************************************;
