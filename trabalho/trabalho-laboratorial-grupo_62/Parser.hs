{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.8

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,290) ([0,0,80,0,0,10,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,32768,2,0,0,0,8192,0,0,0,320,0,256,0,0,0,128,32,0,0,16384,65353,3,0,0,2048,0,0,0,0,256,65440,771,0,32768,53264,4,20480,65490,0,16896,4928,0,64,0,0,8,0,0,40993,9,0,0,0,0,0,0,0,0,0,16,0,0,2,0,0,4,0,0,640,0,0,0,0,1056,308,0,32900,38,32768,53264,32772,4094,12,0,0,0,0,2112,616,0,264,77,0,0,0,40960,65445,1,0,0,61440,24959,0,0,0,0,0,16450,19,16384,26632,2,2048,19713,0,8448,2464,0,1056,308,0,32900,38,32768,53264,4,4096,39426,0,16896,4928,0,2112,616,0,264,77,0,40993,9,8192,13316,1,0,0,0,0,0,65024,1039,0,65472,1,0,248,0,0,31,0,57344,3,0,31744,0,0,53120,3,0,31216,0,0,0,0,0,0,0,0,0,0,7168,0,0,896,0,0,0,0,0,0,0,0,0,0,65024,3119,0,65472,389,0,0,0,0,6143,6,57344,49919,0,64512,6175,0,32,0,0,4,0,0,20480,65490,0,18944,8186,0,0,0,0,0,0,0,0,0,0,0,0,37888,16372,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Funcs","Func","Args","Block","Stmt","Simple","Types","Exp","';'","','","'+'","'-'","'*'","'/'","'%'","\"==\"","\"!=\"","'<'","\"<=\"","'>'","\">=\"","'('","')'","'{'","'}'","'='","'!'","\"&&\"","\"||\"","if","else","while","return","int","num","bool","true","false","print_int","scan_int","id","%eof"]
        bit_start = st * 45
        bit_end = (st + 1) * 45
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..44]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (37) = happyShift action_4
action_0 (39) = happyShift action_5
action_0 (4) = happyGoto action_6
action_0 (5) = happyGoto action_7
action_0 (10) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (37) = happyShift action_4
action_1 (39) = happyShift action_5
action_1 (5) = happyGoto action_2
action_1 (10) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyFail (happyExpListPerState 2)

action_3 (44) = happyShift action_9
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_20

action_5 _ = happyReduce_21

action_6 (45) = happyAccept
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (37) = happyShift action_4
action_7 (39) = happyShift action_5
action_7 (4) = happyGoto action_8
action_7 (5) = happyGoto action_7
action_7 (10) = happyGoto action_3
action_7 _ = happyReduce_1

action_8 _ = happyReduce_2

action_9 (25) = happyShift action_10
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (37) = happyShift action_4
action_10 (39) = happyShift action_5
action_10 (6) = happyGoto action_11
action_10 (10) = happyGoto action_12
action_10 _ = happyReduce_4

action_11 (26) = happyShift action_14
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (44) = happyShift action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (13) = happyShift action_31
action_13 _ = happyReduce_5

action_14 (25) = happyShift action_19
action_14 (27) = happyShift action_20
action_14 (30) = happyShift action_21
action_14 (33) = happyShift action_22
action_14 (35) = happyShift action_23
action_14 (36) = happyShift action_24
action_14 (37) = happyShift action_4
action_14 (38) = happyShift action_25
action_14 (39) = happyShift action_5
action_14 (40) = happyShift action_26
action_14 (41) = happyShift action_27
action_14 (42) = happyShift action_28
action_14 (43) = happyShift action_29
action_14 (44) = happyShift action_30
action_14 (8) = happyGoto action_15
action_14 (9) = happyGoto action_16
action_14 (10) = happyGoto action_17
action_14 (11) = happyGoto action_18
action_14 _ = happyFail (happyExpListPerState 14)

action_15 _ = happyReduce_3

action_16 (12) = happyShift action_59
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (44) = happyShift action_58
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (12) = happyShift action_44
action_18 (14) = happyShift action_45
action_18 (15) = happyShift action_46
action_18 (16) = happyShift action_47
action_18 (17) = happyShift action_48
action_18 (18) = happyShift action_49
action_18 (19) = happyShift action_50
action_18 (20) = happyShift action_51
action_18 (21) = happyShift action_52
action_18 (22) = happyShift action_53
action_18 (23) = happyShift action_54
action_18 (24) = happyShift action_55
action_18 (31) = happyShift action_56
action_18 (32) = happyShift action_57
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (25) = happyShift action_19
action_19 (30) = happyShift action_21
action_19 (38) = happyShift action_25
action_19 (40) = happyShift action_26
action_19 (41) = happyShift action_27
action_19 (44) = happyShift action_37
action_19 (11) = happyGoto action_43
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (25) = happyShift action_19
action_20 (27) = happyShift action_20
action_20 (30) = happyShift action_21
action_20 (33) = happyShift action_22
action_20 (35) = happyShift action_23
action_20 (36) = happyShift action_24
action_20 (37) = happyShift action_4
action_20 (38) = happyShift action_25
action_20 (39) = happyShift action_5
action_20 (40) = happyShift action_26
action_20 (41) = happyShift action_27
action_20 (42) = happyShift action_28
action_20 (43) = happyShift action_29
action_20 (44) = happyShift action_30
action_20 (7) = happyGoto action_41
action_20 (8) = happyGoto action_42
action_20 (9) = happyGoto action_16
action_20 (10) = happyGoto action_17
action_20 (11) = happyGoto action_18
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (25) = happyShift action_19
action_21 (30) = happyShift action_21
action_21 (38) = happyShift action_25
action_21 (40) = happyShift action_26
action_21 (41) = happyShift action_27
action_21 (44) = happyShift action_37
action_21 (11) = happyGoto action_40
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (25) = happyShift action_39
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (25) = happyShift action_38
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (25) = happyShift action_19
action_24 (30) = happyShift action_21
action_24 (38) = happyShift action_25
action_24 (40) = happyShift action_26
action_24 (41) = happyShift action_27
action_24 (44) = happyShift action_37
action_24 (11) = happyGoto action_36
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_22

action_26 _ = happyReduce_23

action_27 _ = happyReduce_24

action_28 (25) = happyShift action_35
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (25) = happyShift action_34
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (29) = happyShift action_33
action_30 _ = happyReduce_40

action_31 (37) = happyShift action_4
action_31 (39) = happyShift action_5
action_31 (6) = happyGoto action_32
action_31 (10) = happyGoto action_12
action_31 _ = happyReduce_4

action_32 _ = happyReduce_6

action_33 (25) = happyShift action_19
action_33 (30) = happyShift action_21
action_33 (38) = happyShift action_25
action_33 (40) = happyShift action_26
action_33 (41) = happyShift action_27
action_33 (44) = happyShift action_37
action_33 (11) = happyGoto action_81
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (25) = happyShift action_19
action_34 (30) = happyShift action_21
action_34 (38) = happyShift action_25
action_34 (40) = happyShift action_26
action_34 (41) = happyShift action_27
action_34 (44) = happyShift action_37
action_34 (11) = happyGoto action_80
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (25) = happyShift action_19
action_35 (30) = happyShift action_21
action_35 (38) = happyShift action_25
action_35 (40) = happyShift action_26
action_35 (41) = happyShift action_27
action_35 (44) = happyShift action_37
action_35 (11) = happyGoto action_79
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (12) = happyShift action_78
action_36 (14) = happyShift action_45
action_36 (15) = happyShift action_46
action_36 (16) = happyShift action_47
action_36 (17) = happyShift action_48
action_36 (18) = happyShift action_49
action_36 (19) = happyShift action_50
action_36 (20) = happyShift action_51
action_36 (21) = happyShift action_52
action_36 (22) = happyShift action_53
action_36 (23) = happyShift action_54
action_36 (24) = happyShift action_55
action_36 (31) = happyShift action_56
action_36 (32) = happyShift action_57
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_40

action_38 (25) = happyShift action_19
action_38 (30) = happyShift action_21
action_38 (38) = happyShift action_25
action_38 (40) = happyShift action_26
action_38 (41) = happyShift action_27
action_38 (44) = happyShift action_37
action_38 (11) = happyGoto action_77
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (25) = happyShift action_19
action_39 (30) = happyShift action_21
action_39 (38) = happyShift action_25
action_39 (40) = happyShift action_26
action_39 (41) = happyShift action_27
action_39 (44) = happyShift action_37
action_39 (11) = happyGoto action_76
action_39 _ = happyFail (happyExpListPerState 39)

action_40 _ = happyReduce_37

action_41 (25) = happyShift action_19
action_41 (27) = happyShift action_20
action_41 (28) = happyShift action_75
action_41 (30) = happyShift action_21
action_41 (33) = happyShift action_22
action_41 (35) = happyShift action_23
action_41 (36) = happyShift action_24
action_41 (37) = happyShift action_4
action_41 (38) = happyShift action_25
action_41 (39) = happyShift action_5
action_41 (40) = happyShift action_26
action_41 (41) = happyShift action_27
action_41 (42) = happyShift action_28
action_41 (43) = happyShift action_29
action_41 (44) = happyShift action_30
action_41 (8) = happyGoto action_74
action_41 (9) = happyGoto action_16
action_41 (10) = happyGoto action_17
action_41 (11) = happyGoto action_18
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_7

action_43 (14) = happyShift action_45
action_43 (15) = happyShift action_46
action_43 (16) = happyShift action_47
action_43 (17) = happyShift action_48
action_43 (18) = happyShift action_49
action_43 (19) = happyShift action_50
action_43 (20) = happyShift action_51
action_43 (21) = happyShift action_52
action_43 (22) = happyShift action_53
action_43 (23) = happyShift action_54
action_43 (24) = happyShift action_55
action_43 (26) = happyShift action_73
action_43 (31) = happyShift action_56
action_43 (32) = happyShift action_57
action_43 _ = happyFail (happyExpListPerState 43)

action_44 _ = happyReduce_11

action_45 (25) = happyShift action_19
action_45 (30) = happyShift action_21
action_45 (38) = happyShift action_25
action_45 (40) = happyShift action_26
action_45 (41) = happyShift action_27
action_45 (44) = happyShift action_37
action_45 (11) = happyGoto action_72
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (25) = happyShift action_19
action_46 (30) = happyShift action_21
action_46 (38) = happyShift action_25
action_46 (40) = happyShift action_26
action_46 (41) = happyShift action_27
action_46 (44) = happyShift action_37
action_46 (11) = happyGoto action_71
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (25) = happyShift action_19
action_47 (30) = happyShift action_21
action_47 (38) = happyShift action_25
action_47 (40) = happyShift action_26
action_47 (41) = happyShift action_27
action_47 (44) = happyShift action_37
action_47 (11) = happyGoto action_70
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (25) = happyShift action_19
action_48 (30) = happyShift action_21
action_48 (38) = happyShift action_25
action_48 (40) = happyShift action_26
action_48 (41) = happyShift action_27
action_48 (44) = happyShift action_37
action_48 (11) = happyGoto action_69
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (25) = happyShift action_19
action_49 (30) = happyShift action_21
action_49 (38) = happyShift action_25
action_49 (40) = happyShift action_26
action_49 (41) = happyShift action_27
action_49 (44) = happyShift action_37
action_49 (11) = happyGoto action_68
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (25) = happyShift action_19
action_50 (30) = happyShift action_21
action_50 (38) = happyShift action_25
action_50 (40) = happyShift action_26
action_50 (41) = happyShift action_27
action_50 (44) = happyShift action_37
action_50 (11) = happyGoto action_67
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (25) = happyShift action_19
action_51 (30) = happyShift action_21
action_51 (38) = happyShift action_25
action_51 (40) = happyShift action_26
action_51 (41) = happyShift action_27
action_51 (44) = happyShift action_37
action_51 (11) = happyGoto action_66
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (25) = happyShift action_19
action_52 (30) = happyShift action_21
action_52 (38) = happyShift action_25
action_52 (40) = happyShift action_26
action_52 (41) = happyShift action_27
action_52 (44) = happyShift action_37
action_52 (11) = happyGoto action_65
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (25) = happyShift action_19
action_53 (30) = happyShift action_21
action_53 (38) = happyShift action_25
action_53 (40) = happyShift action_26
action_53 (41) = happyShift action_27
action_53 (44) = happyShift action_37
action_53 (11) = happyGoto action_64
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (25) = happyShift action_19
action_54 (30) = happyShift action_21
action_54 (38) = happyShift action_25
action_54 (40) = happyShift action_26
action_54 (41) = happyShift action_27
action_54 (44) = happyShift action_37
action_54 (11) = happyGoto action_63
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (25) = happyShift action_19
action_55 (30) = happyShift action_21
action_55 (38) = happyShift action_25
action_55 (40) = happyShift action_26
action_55 (41) = happyShift action_27
action_55 (44) = happyShift action_37
action_55 (11) = happyGoto action_62
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (25) = happyShift action_19
action_56 (30) = happyShift action_21
action_56 (38) = happyShift action_25
action_56 (40) = happyShift action_26
action_56 (41) = happyShift action_27
action_56 (44) = happyShift action_37
action_56 (11) = happyGoto action_61
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (25) = happyShift action_19
action_57 (30) = happyShift action_21
action_57 (38) = happyShift action_25
action_57 (40) = happyShift action_26
action_57 (41) = happyShift action_27
action_57 (44) = happyShift action_37
action_57 (11) = happyGoto action_60
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_19

action_59 _ = happyReduce_10

action_60 (14) = happyShift action_45
action_60 (15) = happyShift action_46
action_60 (16) = happyShift action_47
action_60 (17) = happyShift action_48
action_60 (18) = happyShift action_49
action_60 (19) = happyShift action_50
action_60 (20) = happyShift action_51
action_60 (21) = happyShift action_52
action_60 (22) = happyShift action_53
action_60 (23) = happyShift action_54
action_60 (24) = happyShift action_55
action_60 (31) = happyShift action_56
action_60 _ = happyReduce_39

action_61 (14) = happyShift action_45
action_61 (15) = happyShift action_46
action_61 (16) = happyShift action_47
action_61 (17) = happyShift action_48
action_61 (18) = happyShift action_49
action_61 (19) = happyShift action_50
action_61 (20) = happyShift action_51
action_61 (21) = happyShift action_52
action_61 (22) = happyShift action_53
action_61 (23) = happyShift action_54
action_61 (24) = happyShift action_55
action_61 _ = happyReduce_38

action_62 (14) = happyShift action_45
action_62 (15) = happyShift action_46
action_62 (16) = happyShift action_47
action_62 (17) = happyShift action_48
action_62 (18) = happyShift action_49
action_62 _ = happyReduce_35

action_63 (14) = happyShift action_45
action_63 (15) = happyShift action_46
action_63 (16) = happyShift action_47
action_63 (17) = happyShift action_48
action_63 (18) = happyShift action_49
action_63 _ = happyReduce_34

action_64 (14) = happyShift action_45
action_64 (15) = happyShift action_46
action_64 (16) = happyShift action_47
action_64 (17) = happyShift action_48
action_64 (18) = happyShift action_49
action_64 _ = happyReduce_33

action_65 (14) = happyShift action_45
action_65 (15) = happyShift action_46
action_65 (16) = happyShift action_47
action_65 (17) = happyShift action_48
action_65 (18) = happyShift action_49
action_65 _ = happyReduce_32

action_66 (14) = happyShift action_45
action_66 (15) = happyShift action_46
action_66 (16) = happyShift action_47
action_66 (17) = happyShift action_48
action_66 (18) = happyShift action_49
action_66 (21) = happyShift action_52
action_66 (22) = happyShift action_53
action_66 (23) = happyShift action_54
action_66 (24) = happyShift action_55
action_66 _ = happyReduce_31

action_67 (14) = happyShift action_45
action_67 (15) = happyShift action_46
action_67 (16) = happyShift action_47
action_67 (17) = happyShift action_48
action_67 (18) = happyShift action_49
action_67 (21) = happyShift action_52
action_67 (22) = happyShift action_53
action_67 (23) = happyShift action_54
action_67 (24) = happyShift action_55
action_67 _ = happyReduce_30

action_68 _ = happyReduce_29

action_69 _ = happyReduce_28

action_70 _ = happyReduce_27

action_71 (16) = happyShift action_47
action_71 (17) = happyShift action_48
action_71 (18) = happyShift action_49
action_71 _ = happyReduce_26

action_72 (16) = happyShift action_47
action_72 (17) = happyShift action_48
action_72 (18) = happyShift action_49
action_72 _ = happyReduce_25

action_73 _ = happyReduce_36

action_74 _ = happyReduce_8

action_75 _ = happyReduce_12

action_76 (14) = happyShift action_45
action_76 (15) = happyShift action_46
action_76 (16) = happyShift action_47
action_76 (17) = happyShift action_48
action_76 (18) = happyShift action_49
action_76 (19) = happyShift action_50
action_76 (20) = happyShift action_51
action_76 (21) = happyShift action_52
action_76 (22) = happyShift action_53
action_76 (23) = happyShift action_54
action_76 (24) = happyShift action_55
action_76 (26) = happyShift action_85
action_76 (31) = happyShift action_56
action_76 (32) = happyShift action_57
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (14) = happyShift action_45
action_77 (15) = happyShift action_46
action_77 (16) = happyShift action_47
action_77 (17) = happyShift action_48
action_77 (18) = happyShift action_49
action_77 (19) = happyShift action_50
action_77 (20) = happyShift action_51
action_77 (21) = happyShift action_52
action_77 (22) = happyShift action_53
action_77 (23) = happyShift action_54
action_77 (24) = happyShift action_55
action_77 (26) = happyShift action_84
action_77 (31) = happyShift action_56
action_77 (32) = happyShift action_57
action_77 _ = happyFail (happyExpListPerState 77)

action_78 _ = happyReduce_16

action_79 (14) = happyShift action_45
action_79 (15) = happyShift action_46
action_79 (16) = happyShift action_47
action_79 (17) = happyShift action_48
action_79 (18) = happyShift action_49
action_79 (19) = happyShift action_50
action_79 (20) = happyShift action_51
action_79 (21) = happyShift action_52
action_79 (22) = happyShift action_53
action_79 (23) = happyShift action_54
action_79 (24) = happyShift action_55
action_79 (26) = happyShift action_83
action_79 (31) = happyShift action_56
action_79 (32) = happyShift action_57
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (14) = happyShift action_45
action_80 (15) = happyShift action_46
action_80 (16) = happyShift action_47
action_80 (17) = happyShift action_48
action_80 (18) = happyShift action_49
action_80 (19) = happyShift action_50
action_80 (20) = happyShift action_51
action_80 (21) = happyShift action_52
action_80 (22) = happyShift action_53
action_80 (23) = happyShift action_54
action_80 (24) = happyShift action_55
action_80 (26) = happyShift action_82
action_80 (31) = happyShift action_56
action_80 (32) = happyShift action_57
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (14) = happyShift action_45
action_81 (15) = happyShift action_46
action_81 (16) = happyShift action_47
action_81 (17) = happyShift action_48
action_81 (18) = happyShift action_49
action_81 (19) = happyShift action_50
action_81 (20) = happyShift action_51
action_81 (21) = happyShift action_52
action_81 (22) = happyShift action_53
action_81 (23) = happyShift action_54
action_81 (24) = happyShift action_55
action_81 (31) = happyShift action_56
action_81 (32) = happyShift action_57
action_81 _ = happyReduce_9

action_82 (12) = happyShift action_89
action_82 _ = happyFail (happyExpListPerState 82)

action_83 (12) = happyShift action_88
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (25) = happyShift action_19
action_84 (27) = happyShift action_20
action_84 (30) = happyShift action_21
action_84 (33) = happyShift action_22
action_84 (35) = happyShift action_23
action_84 (36) = happyShift action_24
action_84 (37) = happyShift action_4
action_84 (38) = happyShift action_25
action_84 (39) = happyShift action_5
action_84 (40) = happyShift action_26
action_84 (41) = happyShift action_27
action_84 (42) = happyShift action_28
action_84 (43) = happyShift action_29
action_84 (44) = happyShift action_30
action_84 (8) = happyGoto action_87
action_84 (9) = happyGoto action_16
action_84 (10) = happyGoto action_17
action_84 (11) = happyGoto action_18
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (25) = happyShift action_19
action_85 (27) = happyShift action_20
action_85 (30) = happyShift action_21
action_85 (33) = happyShift action_22
action_85 (35) = happyShift action_23
action_85 (36) = happyShift action_24
action_85 (37) = happyShift action_4
action_85 (38) = happyShift action_25
action_85 (39) = happyShift action_5
action_85 (40) = happyShift action_26
action_85 (41) = happyShift action_27
action_85 (42) = happyShift action_28
action_85 (43) = happyShift action_29
action_85 (44) = happyShift action_30
action_85 (8) = happyGoto action_86
action_85 (9) = happyGoto action_16
action_85 (10) = happyGoto action_17
action_85 (11) = happyGoto action_18
action_85 _ = happyFail (happyExpListPerState 85)

action_86 (34) = happyShift action_90
action_86 _ = happyReduce_14

action_87 _ = happyReduce_15

action_88 _ = happyReduce_17

action_89 _ = happyReduce_18

action_90 (25) = happyShift action_19
action_90 (27) = happyShift action_20
action_90 (30) = happyShift action_21
action_90 (33) = happyShift action_22
action_90 (35) = happyShift action_23
action_90 (36) = happyShift action_24
action_90 (37) = happyShift action_4
action_90 (38) = happyShift action_25
action_90 (39) = happyShift action_5
action_90 (40) = happyShift action_26
action_90 (41) = happyShift action_27
action_90 (42) = happyShift action_28
action_90 (43) = happyShift action_29
action_90 (44) = happyShift action_30
action_90 (8) = happyGoto action_91
action_90 (9) = happyGoto action_16
action_90 (10) = happyGoto action_17
action_90 (11) = happyGoto action_18
action_90 _ = happyFail (happyExpListPerState 90)

action_91 _ = happyReduce_13

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 : happy_var_2
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 6 5 happyReduction_3
happyReduction_3 ((HappyAbsSyn8  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (Function happy_var_1 happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_4 = happySpecReduce_0  6 happyReduction_4
happyReduction_4  =  HappyAbsSyn6
		 (ArgEmpty
	)

happyReduce_5 = happySpecReduce_2  6 happyReduction_5
happyReduction_5 (HappyTerminal (TokenIdent happy_var_2))
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn6
		 (Argument happy_var_1 happy_var_2
	)
happyReduction_5 _ _  = notHappyAtAll 

happyReduce_6 = happyReduce 4 6 happyReduction_6
happyReduction_6 ((HappyAbsSyn6  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenIdent happy_var_2)) `HappyStk`
	(HappyAbsSyn10  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Arguments happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  7 happyReduction_8
happyReduction_8 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  8 happyReduction_9
happyReduction_9 (HappyAbsSyn11  happy_var_3)
	_
	(HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn8
		 (Assign happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_2  8 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (SimpleStmt happy_var_1
	)
happyReduction_10 _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_2  8 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn8
		 (ExpStmt happy_var_1
	)
happyReduction_11 _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  8 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn7  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Block happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 7 8 happyReduction_13
happyReduction_13 ((HappyAbsSyn8  happy_var_7) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (If happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 5 8 happyReduction_14
happyReduction_14 ((HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (If happy_var_3 happy_var_5 Skip
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 5 8 happyReduction_15
happyReduction_15 ((HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (While happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_3  8 happyReduction_16
happyReduction_16 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Return happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 5 8 happyReduction_17
happyReduction_17 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (PrintInt happy_var_3
	) `HappyStk` happyRest

happyReduce_18 = happyReduce 5 8 happyReduction_18
happyReduction_18 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (ScanInt happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_2  9 happyReduction_19
happyReduction_19 (HappyTerminal (TokenIdent happy_var_2))
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn9
		 (Declare happy_var_1 happy_var_2
	)
happyReduction_19 _ _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  10 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn10
		 (TypeInt
	)

happyReduce_21 = happySpecReduce_1  10 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn10
		 (TypeBool
	)

happyReduce_22 = happySpecReduce_1  11 happyReduction_22
happyReduction_22 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn11
		 (Num happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  11 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn11
		 (BTrue
	)

happyReduce_24 = happySpecReduce_1  11 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn11
		 (BFalse
	)

happyReduce_25 = happySpecReduce_3  11 happyReduction_25
happyReduction_25 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Op Add happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  11 happyReduction_26
happyReduction_26 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Op Sub happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  11 happyReduction_27
happyReduction_27 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Op Mult happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  11 happyReduction_28
happyReduction_28 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Op Div happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  11 happyReduction_29
happyReduction_29 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Op Mod happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  11 happyReduction_30
happyReduction_30 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Cond Equal happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  11 happyReduction_31
happyReduction_31 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Cond NEqual happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  11 happyReduction_32
happyReduction_32 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Cond Less happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  11 happyReduction_33
happyReduction_33 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Cond LessEq happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Cond Greater happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  11 happyReduction_35
happyReduction_35 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Cond GreaterEq happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  11 happyReduction_36
happyReduction_36 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Brack happy_var_2
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_2  11 happyReduction_37
happyReduction_37 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Not happy_var_2
	)
happyReduction_37 _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  11 happyReduction_38
happyReduction_38 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Cond And happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  11 happyReduction_39
happyReduction_39 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Cond Or happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_1  11 happyReduction_40
happyReduction_40 (HappyTerminal (TokenIdent happy_var_1))
	 =  HappyAbsSyn11
		 (Ident happy_var_1
	)
happyReduction_40 _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 45 45 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenSEMICOLON -> cont 12;
	TokenCOMMA -> cont 13;
	TokenADD -> cont 14;
	TokenSUB -> cont 15;
	TokenMULT -> cont 16;
	TokenDIV -> cont 17;
	TokenMOD -> cont 18;
	TokenEQUAL -> cont 19;
	TokenNEQUAL -> cont 20;
	TokenLESS -> cont 21;
	TokenLESSEQ -> cont 22;
	TokenGREATER -> cont 23;
	TokenGREATEREQ -> cont 24;
	TokenLPAREN -> cont 25;
	TokenRPAREN -> cont 26;
	TokenLBRACE -> cont 27;
	TokenRBRACE -> cont 28;
	TokenASSIGN -> cont 29;
	TokenNot -> cont 30;
	TokenAND -> cont 31;
	TokenOR -> cont 32;
	TokenIF -> cont 33;
	TokenELSE -> cont 34;
	TokenWHILE -> cont 35;
	TokenRETURN -> cont 36;
	TokenInt -> cont 37;
	TokenNum happy_dollar_dollar -> cont 38;
	TokenBool happy_dollar_dollar -> cont 39;
	TokenTrue -> cont 40;
	TokenFalse -> cont 41;
	TokenPrint -> cont 42;
	TokenScan -> cont 43;
	TokenIdent happy_dollar_dollar -> cont 44;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 45 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


type Ident = String

data Func = Function Types Ident Args Stmt
          deriving Show

data Args = ArgEmpty
          | Argument Types Ident
          | Arguments Types Ident Args
          deriving Show

data Stmt = Assign Ident Exp
          | SimpleStmt Simple
          | ExpStmt Exp
          | Block [Stmt]
          | If Exp Stmt Stmt
          | While Exp Stmt
          | Return Exp
          | Skip
          | PrintInt Exp
          | ScanInt Exp
          deriving Show

data Simple = Declare Types Ident
            deriving Show

data Types = TypeInt
		       | TypeBool
		       deriving Show

data BinOp = Add | Sub | Mult | Div | Mod
           deriving Show

data RelOp = Equal | NEqual | Less | LessEq | Greater | GreaterEq | And | Or
           deriving Show

data Exp = Num Int
         | BTrue
         | BFalse
         | Op BinOp Exp Exp
         | Cond RelOp Exp Exp
         | Brack Exp
         | Not Exp
         | Ident String
         deriving Show


parseError :: [Token] -> a
parseError toks = error("parse error at " ++ show toks)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 8 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8814_0/ghc_2.h" #-}




























































































































































{-# LINE 8 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
