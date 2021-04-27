{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13
	| HappyAbsSyn14 t14
	| HappyAbsSyn15 t15
	| HappyAbsSyn16 t16
	| HappyAbsSyn17 t17
	| HappyAbsSyn18 t18
	| HappyAbsSyn19 t19
	| HappyAbsSyn20 t20
	| HappyAbsSyn21 t21

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,430) ([0,2144,67,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6624,49159,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,26496,65340,7,0,0,0,0,0,0,0,33840,1,0,0,0,0,0,0,0,0,0,0,0,768,24,0,24576,17160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4224,0,0,6144,4290,0,0,64,0,0,0,0,0,0,0,0,32768,3105,0,0,32816,1,0,1536,48,0,49152,1536,0,0,49176,0,0,768,24,0,24576,776,2048,0,24844,0,0,8576,12,0,12288,384,0,0,12294,0,0,192,6,0,0,4,0,0,128,0,0,4096,0,0,0,2,0,0,0,128,0,2048,0,0,0,0,2,0,0,0,0,49688,0,2,0,0,0,0,0,224,0,0,0,0,384,12,0,0,8,0,0,256,0,0,8192,0,0,0,4,0,0,128,0,0,2048,0,0,0,0,0,32768,3105,1,0,33840,33,0,34304,1072,0,49152,34320,0,0,16,0,0,17152,536,0,24576,784,0,0,0,16,0,0,0,0,12288,384,0,0,0,0,0,8192,0,0,6144,192,0,0,128,0,0,4096,0,0,3072,2145,0,32768,3105,1,0,0,0,0,34304,1080,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,8,0,0,12422,32768,0,0,0,0,6144,194,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,33840,1,4,34304,48,128,0,0,0,0,0,0,0,17152,536,0,0,16,0,0,512,0,0,0,0,0,0,0,0,0,12550,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2048,0,0,0,1,0,0,32,0,0,1024,0,0,32768,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseList","SExp","List","MkList","ConsEle","Symbol","BabySymb","FuncDec","FuncHdr","Atoms","VarDec","Conditional","SerCases","OneCase","Atom","Bool","Id","OpKeyword","Predicate","integer","id","plus","minus","multi","divid","lparen","rparen","define","if","else","true","false","cond","gt","lt","quote","quotesym","dot","'Null\\?'","'Pair\\?'","'Atom\\?'","'Number\\?'","'Eq\\?'","cons","car","cdr","read","write","display","'\\'\\(\\)'","%eof"]
        bit_start = st Prelude.* 53
        bit_end = (st Prelude.+ 1) Prelude.* 53
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..52]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (22) = happyShift action_14
action_0 (23) = happyShift action_15
action_0 (28) = happyShift action_16
action_0 (33) = happyShift action_17
action_0 (34) = happyShift action_18
action_0 (39) = happyShift action_19
action_0 (4) = happyGoto action_7
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_8
action_0 (8) = happyGoto action_9
action_0 (10) = happyGoto action_3
action_0 (13) = happyGoto action_4
action_0 (14) = happyGoto action_5
action_0 (17) = happyGoto action_10
action_0 (18) = happyGoto action_11
action_0 (19) = happyGoto action_12
action_0 (21) = happyGoto action_13
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (28) = happyShift action_6
action_1 (5) = happyGoto action_2
action_1 (10) = happyGoto action_3
action_1 (13) = happyGoto action_4
action_1 (14) = happyGoto action_5
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_11

action_4 _ = happyReduce_10

action_5 _ = happyReduce_12

action_6 (24) = happyShift action_25
action_6 (25) = happyShift action_26
action_6 (26) = happyShift action_27
action_6 (27) = happyShift action_28
action_6 (30) = happyShift action_29
action_6 (31) = happyShift action_30
action_6 (35) = happyShift action_31
action_6 (36) = happyShift action_32
action_6 (37) = happyShift action_33
action_6 (49) = happyShift action_43
action_6 (50) = happyShift action_44
action_6 (51) = happyShift action_45
action_6 (20) = happyGoto action_24
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (53) = happyAccept
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_4

action_9 _ = happyReduce_5

action_10 _ = happyReduce_2

action_11 _ = happyReduce_38

action_12 _ = happyReduce_37

action_13 _ = happyReduce_3

action_14 _ = happyReduce_36

action_15 _ = happyReduce_41

action_16 (24) = happyShift action_25
action_16 (25) = happyShift action_26
action_16 (26) = happyShift action_27
action_16 (27) = happyShift action_28
action_16 (30) = happyShift action_29
action_16 (31) = happyShift action_30
action_16 (35) = happyShift action_31
action_16 (36) = happyShift action_32
action_16 (37) = happyShift action_33
action_16 (38) = happyShift action_34
action_16 (41) = happyShift action_35
action_16 (42) = happyShift action_36
action_16 (43) = happyShift action_37
action_16 (44) = happyShift action_38
action_16 (45) = happyShift action_39
action_16 (46) = happyShift action_40
action_16 (47) = happyShift action_41
action_16 (48) = happyShift action_42
action_16 (49) = happyShift action_43
action_16 (50) = happyShift action_44
action_16 (51) = happyShift action_45
action_16 (20) = happyGoto action_24
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_39

action_18 _ = happyReduce_40

action_19 (22) = happyShift action_14
action_19 (23) = happyShift action_15
action_19 (28) = happyShift action_23
action_19 (33) = happyShift action_17
action_19 (34) = happyShift action_18
action_19 (9) = happyGoto action_20
action_19 (12) = happyGoto action_21
action_19 (17) = happyGoto action_22
action_19 (18) = happyGoto action_11
action_19 (19) = happyGoto action_12
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_21

action_21 (22) = happyShift action_14
action_21 (23) = happyShift action_15
action_21 (33) = happyShift action_17
action_21 (34) = happyShift action_18
action_21 (17) = happyGoto action_74
action_21 (18) = happyGoto action_11
action_21 (19) = happyGoto action_12
action_21 _ = happyReduce_23

action_22 _ = happyReduce_29

action_23 (22) = happyShift action_14
action_23 (23) = happyShift action_15
action_23 (33) = happyShift action_17
action_23 (34) = happyShift action_18
action_23 (12) = happyGoto action_72
action_23 (17) = happyGoto action_73
action_23 (18) = happyGoto action_11
action_23 (19) = happyGoto action_12
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (22) = happyShift action_14
action_24 (23) = happyShift action_15
action_24 (28) = happyShift action_16
action_24 (33) = happyShift action_17
action_24 (34) = happyShift action_18
action_24 (39) = happyShift action_19
action_24 (4) = happyGoto action_71
action_24 (5) = happyGoto action_2
action_24 (6) = happyGoto action_8
action_24 (8) = happyGoto action_9
action_24 (10) = happyGoto action_3
action_24 (13) = happyGoto action_4
action_24 (14) = happyGoto action_5
action_24 (17) = happyGoto action_10
action_24 (18) = happyGoto action_11
action_24 (19) = happyGoto action_12
action_24 (21) = happyGoto action_13
action_24 _ = happyFail (happyExpListPerState 24)

action_25 _ = happyReduce_42

action_26 _ = happyReduce_43

action_27 _ = happyReduce_44

action_28 _ = happyReduce_45

action_29 (23) = happyShift action_15
action_29 (28) = happyShift action_70
action_29 (11) = happyGoto action_68
action_29 (19) = happyGoto action_69
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (22) = happyShift action_14
action_30 (23) = happyShift action_15
action_30 (28) = happyShift action_16
action_30 (33) = happyShift action_17
action_30 (34) = happyShift action_18
action_30 (39) = happyShift action_19
action_30 (4) = happyGoto action_67
action_30 (5) = happyGoto action_2
action_30 (6) = happyGoto action_8
action_30 (8) = happyGoto action_9
action_30 (10) = happyGoto action_3
action_30 (13) = happyGoto action_4
action_30 (14) = happyGoto action_5
action_30 (17) = happyGoto action_10
action_30 (18) = happyGoto action_11
action_30 (19) = happyGoto action_12
action_30 (21) = happyGoto action_13
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (28) = happyShift action_66
action_31 (15) = happyGoto action_64
action_31 (16) = happyGoto action_65
action_31 _ = happyFail (happyExpListPerState 31)

action_32 _ = happyReduce_46

action_33 _ = happyReduce_47

action_34 (22) = happyShift action_14
action_34 (23) = happyShift action_15
action_34 (28) = happyShift action_23
action_34 (33) = happyShift action_17
action_34 (34) = happyShift action_18
action_34 (9) = happyGoto action_63
action_34 (12) = happyGoto action_21
action_34 (17) = happyGoto action_22
action_34 (18) = happyGoto action_11
action_34 (19) = happyGoto action_12
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (22) = happyShift action_14
action_35 (23) = happyShift action_15
action_35 (33) = happyShift action_17
action_35 (34) = happyShift action_18
action_35 (17) = happyGoto action_62
action_35 (18) = happyGoto action_11
action_35 (19) = happyGoto action_12
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (22) = happyShift action_14
action_36 (23) = happyShift action_15
action_36 (33) = happyShift action_17
action_36 (34) = happyShift action_18
action_36 (17) = happyGoto action_61
action_36 (18) = happyGoto action_11
action_36 (19) = happyGoto action_12
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (22) = happyShift action_14
action_37 (23) = happyShift action_15
action_37 (33) = happyShift action_17
action_37 (34) = happyShift action_18
action_37 (17) = happyGoto action_60
action_37 (18) = happyGoto action_11
action_37 (19) = happyGoto action_12
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (22) = happyShift action_14
action_38 (23) = happyShift action_15
action_38 (33) = happyShift action_17
action_38 (34) = happyShift action_18
action_38 (17) = happyGoto action_59
action_38 (18) = happyGoto action_11
action_38 (19) = happyGoto action_12
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (22) = happyShift action_14
action_39 (23) = happyShift action_15
action_39 (33) = happyShift action_17
action_39 (34) = happyShift action_18
action_39 (17) = happyGoto action_58
action_39 (18) = happyGoto action_11
action_39 (19) = happyGoto action_12
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (22) = happyShift action_14
action_40 (23) = happyShift action_15
action_40 (28) = happyShift action_56
action_40 (33) = happyShift action_17
action_40 (34) = happyShift action_18
action_40 (52) = happyShift action_57
action_40 (6) = happyGoto action_53
action_40 (7) = happyGoto action_54
action_40 (17) = happyGoto action_55
action_40 (18) = happyGoto action_11
action_40 (19) = happyGoto action_12
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (22) = happyShift action_14
action_41 (23) = happyShift action_15
action_41 (28) = happyShift action_52
action_41 (33) = happyShift action_17
action_41 (34) = happyShift action_18
action_41 (17) = happyGoto action_51
action_41 (18) = happyGoto action_11
action_41 (19) = happyGoto action_12
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (22) = happyShift action_14
action_42 (23) = happyShift action_15
action_42 (28) = happyShift action_50
action_42 (33) = happyShift action_17
action_42 (34) = happyShift action_18
action_42 (17) = happyGoto action_49
action_42 (18) = happyGoto action_11
action_42 (19) = happyGoto action_12
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (22) = happyShift action_14
action_43 (23) = happyShift action_15
action_43 (33) = happyShift action_17
action_43 (34) = happyShift action_18
action_43 (17) = happyGoto action_48
action_43 (18) = happyGoto action_11
action_43 (19) = happyGoto action_12
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (22) = happyShift action_14
action_44 (23) = happyShift action_15
action_44 (33) = happyShift action_17
action_44 (34) = happyShift action_18
action_44 (17) = happyGoto action_47
action_44 (18) = happyGoto action_11
action_44 (19) = happyGoto action_12
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (22) = happyShift action_14
action_45 (23) = happyShift action_15
action_45 (33) = happyShift action_17
action_45 (34) = happyShift action_18
action_45 (17) = happyGoto action_46
action_45 (18) = happyGoto action_11
action_45 (19) = happyGoto action_12
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (29) = happyShift action_98
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (29) = happyShift action_97
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (29) = happyShift action_96
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (29) = happyShift action_95
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (46) = happyShift action_94
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (29) = happyShift action_93
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (46) = happyShift action_92
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_20

action_54 (22) = happyShift action_14
action_54 (23) = happyShift action_15
action_54 (28) = happyShift action_56
action_54 (33) = happyShift action_17
action_54 (34) = happyShift action_18
action_54 (52) = happyShift action_57
action_54 (6) = happyGoto action_53
action_54 (7) = happyGoto action_91
action_54 (17) = happyGoto action_55
action_54 (18) = happyGoto action_11
action_54 (19) = happyGoto action_12
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_18

action_56 (46) = happyShift action_40
action_56 (47) = happyShift action_41
action_56 (48) = happyShift action_42
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_19

action_58 (22) = happyShift action_14
action_58 (23) = happyShift action_15
action_58 (33) = happyShift action_17
action_58 (34) = happyShift action_18
action_58 (17) = happyGoto action_90
action_58 (18) = happyGoto action_11
action_58 (19) = happyGoto action_12
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (29) = happyShift action_89
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (29) = happyShift action_88
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (29) = happyShift action_87
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (29) = happyShift action_86
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (29) = happyShift action_85
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (28) = happyShift action_84
action_64 (16) = happyGoto action_83
action_64 _ = happyFail (happyExpListPerState 64)

action_65 _ = happyReduce_34

action_66 (22) = happyShift action_14
action_66 (23) = happyShift action_15
action_66 (28) = happyShift action_16
action_66 (33) = happyShift action_17
action_66 (34) = happyShift action_18
action_66 (39) = happyShift action_19
action_66 (4) = happyGoto action_82
action_66 (5) = happyGoto action_2
action_66 (6) = happyGoto action_8
action_66 (8) = happyGoto action_9
action_66 (10) = happyGoto action_3
action_66 (13) = happyGoto action_4
action_66 (14) = happyGoto action_5
action_66 (17) = happyGoto action_10
action_66 (18) = happyGoto action_11
action_66 (19) = happyGoto action_12
action_66 (21) = happyGoto action_13
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (22) = happyShift action_14
action_67 (23) = happyShift action_15
action_67 (28) = happyShift action_16
action_67 (33) = happyShift action_17
action_67 (34) = happyShift action_18
action_67 (39) = happyShift action_19
action_67 (4) = happyGoto action_81
action_67 (5) = happyGoto action_2
action_67 (6) = happyGoto action_8
action_67 (8) = happyGoto action_9
action_67 (10) = happyGoto action_3
action_67 (13) = happyGoto action_4
action_67 (14) = happyGoto action_5
action_67 (17) = happyGoto action_10
action_67 (18) = happyGoto action_11
action_67 (19) = happyGoto action_12
action_67 (21) = happyGoto action_13
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (22) = happyShift action_14
action_68 (23) = happyShift action_15
action_68 (28) = happyShift action_16
action_68 (33) = happyShift action_17
action_68 (34) = happyShift action_18
action_68 (39) = happyShift action_19
action_68 (4) = happyGoto action_80
action_68 (5) = happyGoto action_2
action_68 (6) = happyGoto action_8
action_68 (8) = happyGoto action_9
action_68 (10) = happyGoto action_3
action_68 (13) = happyGoto action_4
action_68 (14) = happyGoto action_5
action_68 (17) = happyGoto action_10
action_68 (18) = happyGoto action_11
action_68 (19) = happyGoto action_12
action_68 (21) = happyGoto action_13
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (22) = happyShift action_14
action_69 (23) = happyShift action_15
action_69 (28) = happyShift action_16
action_69 (33) = happyShift action_17
action_69 (34) = happyShift action_18
action_69 (39) = happyShift action_19
action_69 (4) = happyGoto action_79
action_69 (5) = happyGoto action_2
action_69 (6) = happyGoto action_8
action_69 (8) = happyGoto action_9
action_69 (10) = happyGoto action_3
action_69 (13) = happyGoto action_4
action_69 (14) = happyGoto action_5
action_69 (17) = happyGoto action_10
action_69 (18) = happyGoto action_11
action_69 (19) = happyGoto action_12
action_69 (21) = happyGoto action_13
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (23) = happyShift action_15
action_70 (19) = happyGoto action_78
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (22) = happyShift action_14
action_71 (23) = happyShift action_15
action_71 (28) = happyShift action_16
action_71 (33) = happyShift action_17
action_71 (34) = happyShift action_18
action_71 (39) = happyShift action_19
action_71 (4) = happyGoto action_77
action_71 (5) = happyGoto action_2
action_71 (6) = happyGoto action_8
action_71 (8) = happyGoto action_9
action_71 (10) = happyGoto action_3
action_71 (13) = happyGoto action_4
action_71 (14) = happyGoto action_5
action_71 (17) = happyGoto action_10
action_71 (18) = happyGoto action_11
action_71 (19) = happyGoto action_12
action_71 (21) = happyGoto action_13
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (22) = happyShift action_14
action_72 (23) = happyShift action_15
action_72 (29) = happyShift action_76
action_72 (33) = happyShift action_17
action_72 (34) = happyShift action_18
action_72 (17) = happyGoto action_74
action_72 (18) = happyGoto action_11
action_72 (19) = happyGoto action_12
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (40) = happyShift action_75
action_73 _ = happyReduce_29

action_74 _ = happyReduce_28

action_75 (22) = happyShift action_14
action_75 (23) = happyShift action_15
action_75 (33) = happyShift action_17
action_75 (34) = happyShift action_18
action_75 (17) = happyGoto action_110
action_75 (18) = happyGoto action_11
action_75 (19) = happyGoto action_12
action_75 _ = happyFail (happyExpListPerState 75)

action_76 _ = happyReduce_24

action_77 (29) = happyShift action_109
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (22) = happyShift action_14
action_78 (23) = happyShift action_15
action_78 (33) = happyShift action_17
action_78 (34) = happyShift action_18
action_78 (12) = happyGoto action_108
action_78 (17) = happyGoto action_22
action_78 (18) = happyGoto action_11
action_78 (19) = happyGoto action_12
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (29) = happyShift action_107
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (29) = happyShift action_106
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (22) = happyShift action_14
action_81 (23) = happyShift action_15
action_81 (28) = happyShift action_16
action_81 (33) = happyShift action_17
action_81 (34) = happyShift action_18
action_81 (39) = happyShift action_19
action_81 (4) = happyGoto action_105
action_81 (5) = happyGoto action_2
action_81 (6) = happyGoto action_8
action_81 (8) = happyGoto action_9
action_81 (10) = happyGoto action_3
action_81 (13) = happyGoto action_4
action_81 (14) = happyGoto action_5
action_81 (17) = happyGoto action_10
action_81 (18) = happyGoto action_11
action_81 (19) = happyGoto action_12
action_81 (21) = happyGoto action_13
action_81 _ = happyFail (happyExpListPerState 81)

action_82 (22) = happyShift action_14
action_82 (23) = happyShift action_15
action_82 (28) = happyShift action_16
action_82 (33) = happyShift action_17
action_82 (34) = happyShift action_18
action_82 (39) = happyShift action_19
action_82 (4) = happyGoto action_104
action_82 (5) = happyGoto action_2
action_82 (6) = happyGoto action_8
action_82 (8) = happyGoto action_9
action_82 (10) = happyGoto action_3
action_82 (13) = happyGoto action_4
action_82 (14) = happyGoto action_5
action_82 (17) = happyGoto action_10
action_82 (18) = happyGoto action_11
action_82 (19) = happyGoto action_12
action_82 (21) = happyGoto action_13
action_82 _ = happyFail (happyExpListPerState 82)

action_83 _ = happyReduce_33

action_84 (22) = happyShift action_14
action_84 (23) = happyShift action_15
action_84 (28) = happyShift action_16
action_84 (32) = happyShift action_103
action_84 (33) = happyShift action_17
action_84 (34) = happyShift action_18
action_84 (39) = happyShift action_19
action_84 (4) = happyGoto action_82
action_84 (5) = happyGoto action_2
action_84 (6) = happyGoto action_8
action_84 (8) = happyGoto action_9
action_84 (10) = happyGoto action_3
action_84 (13) = happyGoto action_4
action_84 (14) = happyGoto action_5
action_84 (17) = happyGoto action_10
action_84 (18) = happyGoto action_11
action_84 (19) = happyGoto action_12
action_84 (21) = happyGoto action_13
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_22

action_86 _ = happyReduce_48

action_87 _ = happyReduce_49

action_88 _ = happyReduce_50

action_89 _ = happyReduce_51

action_90 (29) = happyShift action_102
action_90 _ = happyFail (happyExpListPerState 90)

action_91 (29) = happyShift action_101
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (22) = happyShift action_14
action_92 (23) = happyShift action_15
action_92 (28) = happyShift action_56
action_92 (33) = happyShift action_17
action_92 (34) = happyShift action_18
action_92 (52) = happyShift action_57
action_92 (6) = happyGoto action_53
action_92 (7) = happyGoto action_100
action_92 (17) = happyGoto action_55
action_92 (18) = happyGoto action_11
action_92 (19) = happyGoto action_12
action_92 _ = happyFail (happyExpListPerState 92)

action_93 _ = happyReduce_15

action_94 (22) = happyShift action_14
action_94 (23) = happyShift action_15
action_94 (28) = happyShift action_56
action_94 (33) = happyShift action_17
action_94 (34) = happyShift action_18
action_94 (52) = happyShift action_57
action_94 (6) = happyGoto action_53
action_94 (7) = happyGoto action_99
action_94 (17) = happyGoto action_55
action_94 (18) = happyGoto action_11
action_94 (19) = happyGoto action_12
action_94 _ = happyFail (happyExpListPerState 94)

action_95 _ = happyReduce_17

action_96 _ = happyReduce_7

action_97 _ = happyReduce_8

action_98 _ = happyReduce_9

action_99 (22) = happyShift action_14
action_99 (23) = happyShift action_15
action_99 (28) = happyShift action_56
action_99 (33) = happyShift action_17
action_99 (34) = happyShift action_18
action_99 (52) = happyShift action_57
action_99 (6) = happyGoto action_53
action_99 (7) = happyGoto action_117
action_99 (17) = happyGoto action_55
action_99 (18) = happyGoto action_11
action_99 (19) = happyGoto action_12
action_99 _ = happyFail (happyExpListPerState 99)

action_100 (22) = happyShift action_14
action_100 (23) = happyShift action_15
action_100 (28) = happyShift action_56
action_100 (33) = happyShift action_17
action_100 (34) = happyShift action_18
action_100 (52) = happyShift action_57
action_100 (6) = happyGoto action_53
action_100 (7) = happyGoto action_116
action_100 (17) = happyGoto action_55
action_100 (18) = happyGoto action_11
action_100 (19) = happyGoto action_12
action_100 _ = happyFail (happyExpListPerState 100)

action_101 _ = happyReduce_13

action_102 _ = happyReduce_52

action_103 (22) = happyShift action_14
action_103 (23) = happyShift action_15
action_103 (28) = happyShift action_16
action_103 (33) = happyShift action_17
action_103 (34) = happyShift action_18
action_103 (39) = happyShift action_19
action_103 (4) = happyGoto action_115
action_103 (5) = happyGoto action_2
action_103 (6) = happyGoto action_8
action_103 (8) = happyGoto action_9
action_103 (10) = happyGoto action_3
action_103 (13) = happyGoto action_4
action_103 (14) = happyGoto action_5
action_103 (17) = happyGoto action_10
action_103 (18) = happyGoto action_11
action_103 (19) = happyGoto action_12
action_103 (21) = happyGoto action_13
action_103 _ = happyFail (happyExpListPerState 103)

action_104 (29) = happyShift action_114
action_104 _ = happyFail (happyExpListPerState 104)

action_105 (29) = happyShift action_113
action_105 _ = happyFail (happyExpListPerState 105)

action_106 _ = happyReduce_26

action_107 _ = happyReduce_30

action_108 (22) = happyShift action_14
action_108 (23) = happyShift action_15
action_108 (29) = happyShift action_112
action_108 (33) = happyShift action_17
action_108 (34) = happyShift action_18
action_108 (17) = happyGoto action_74
action_108 (18) = happyGoto action_11
action_108 (19) = happyGoto action_12
action_108 _ = happyFail (happyExpListPerState 108)

action_109 _ = happyReduce_6

action_110 (29) = happyShift action_111
action_110 _ = happyFail (happyExpListPerState 110)

action_111 _ = happyReduce_25

action_112 _ = happyReduce_27

action_113 _ = happyReduce_31

action_114 _ = happyReduce_35

action_115 (29) = happyShift action_120
action_115 _ = happyFail (happyExpListPerState 115)

action_116 (29) = happyShift action_119
action_116 _ = happyFail (happyExpListPerState 116)

action_117 (29) = happyShift action_118
action_117 _ = happyFail (happyExpListPerState 117)

action_118 (29) = happyShift action_123
action_118 _ = happyFail (happyExpListPerState 118)

action_119 (29) = happyShift action_122
action_119 _ = happyFail (happyExpListPerState 119)

action_120 (29) = happyShift action_121
action_120 _ = happyFail (happyExpListPerState 120)

action_121 _ = happyReduce_32

action_122 _ = happyReduce_14

action_123 _ = happyReduce_16

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 (HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  4 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  4 happyReduction_5
happyReduction_5 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happyReduce 5 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	(HappyAbsSyn20  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (HS_List happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 4 5 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (HS_Read happy_var_3
	) `HappyStk` happyRest

happyReduce_8 = happyReduce 4 5 happyReduction_8
happyReduction_8 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (HS_Write happy_var_3
	) `HappyStk` happyRest

happyReduce_9 = happyReduce 4 5 happyReduction_9
happyReduction_9 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (HS_Display happy_var_3
	) `HappyStk` happyRest

happyReduce_10 = happySpecReduce_1  5 happyReduction_10
happyReduction_10 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  5 happyReduction_11
happyReduction_11 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  5 happyReduction_12
happyReduction_12 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happyReduce 5 6 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (HS_List HS_Cons happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_14 = happyReduce 8 6 happyReduction_14
happyReduction_14 (_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (happy_var_5
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 4 6 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (happy_var_3
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 8 6 happyReduction_16
happyReduction_16 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (happy_var_6
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 4 6 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (happy_var_3
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  7 happyReduction_18
happyReduction_18 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  7 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn7
		 (HS_EmptyL
	)

happyReduce_20 = happySpecReduce_1  7 happyReduction_20
happyReduction_20 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_2  8 happyReduction_21
happyReduction_21 (HappyAbsSyn9  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (happy_var_2
	)
happyReduction_21 _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 4 8 happyReduction_22
happyReduction_22 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (happy_var_3
	) `HappyStk` happyRest

happyReduce_23 = happySpecReduce_1  9 happyReduction_23
happyReduction_23 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  9 happyReduction_24
happyReduction_24 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happyReduce 5 9 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn17  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn9
		 (HS_Dot happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 5 10 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn10
		 (HS_Func happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 4 11 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	(HappyAbsSyn19  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (HS_FuncHdr happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_28 = happySpecReduce_2  12 happyReduction_28
happyReduction_28 (HappyAbsSyn17  happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (HS_Atoms happy_var_1 happy_var_2
	)
happyReduction_28 _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  12 happyReduction_29
happyReduction_29 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happyReduce 5 13 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	(HappyAbsSyn19  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (HS_List HS_Define happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 6 14 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_5) `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (HS_If happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 8 14 happyReduction_32
happyReduction_32 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn15  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (HS_Cond happy_var_3 happy_var_6
	) `HappyStk` happyRest

happyReduce_33 = happySpecReduce_2  15 happyReduction_33
happyReduction_33 (HappyAbsSyn16  happy_var_2)
	(HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn15
		 (HS_SerCases happy_var_1 happy_var_2
	)
happyReduction_33 _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_1  15 happyReduction_34
happyReduction_34 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn15
		 (happy_var_1
	)
happyReduction_34 _  = notHappyAtAll 

happyReduce_35 = happyReduce 4 16 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (HS_OneCase happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_36 = happySpecReduce_1  17 happyReduction_36
happyReduction_36 (HappyTerminal (T_Int happy_var_1))
	 =  HappyAbsSyn17
		 (HS_Int happy_var_1
	)
happyReduction_36 _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_1  17 happyReduction_37
happyReduction_37 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_37 _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_1  17 happyReduction_38
happyReduction_38 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn17
		 (happy_var_1
	)
happyReduction_38 _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  18 happyReduction_39
happyReduction_39 _
	 =  HappyAbsSyn18
		 (HS_Bool True
	)

happyReduce_40 = happySpecReduce_1  18 happyReduction_40
happyReduction_40 _
	 =  HappyAbsSyn18
		 (HS_Bool False
	)

happyReduce_41 = happySpecReduce_1  19 happyReduction_41
happyReduction_41 (HappyTerminal (T_Id happy_var_1))
	 =  HappyAbsSyn19
		 (HS_Id happy_var_1
	)
happyReduction_41 _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  20 happyReduction_42
happyReduction_42 _
	 =  HappyAbsSyn20
		 (HS_Plus
	)

happyReduce_43 = happySpecReduce_1  20 happyReduction_43
happyReduction_43 _
	 =  HappyAbsSyn20
		 (HS_Minus
	)

happyReduce_44 = happySpecReduce_1  20 happyReduction_44
happyReduction_44 _
	 =  HappyAbsSyn20
		 (HS_Multi
	)

happyReduce_45 = happySpecReduce_1  20 happyReduction_45
happyReduction_45 _
	 =  HappyAbsSyn20
		 (HS_Divid
	)

happyReduce_46 = happySpecReduce_1  20 happyReduction_46
happyReduction_46 _
	 =  HappyAbsSyn20
		 (HS_GT
	)

happyReduce_47 = happySpecReduce_1  20 happyReduction_47
happyReduction_47 _
	 =  HappyAbsSyn20
		 (HS_LT
	)

happyReduce_48 = happyReduce 4 21 happyReduction_48
happyReduction_48 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (HS_Null happy_var_3
	) `HappyStk` happyRest

happyReduce_49 = happyReduce 4 21 happyReduction_49
happyReduction_49 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (HS_Pair happy_var_3
	) `HappyStk` happyRest

happyReduce_50 = happyReduce 4 21 happyReduction_50
happyReduction_50 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (HS_Atom happy_var_3
	) `HappyStk` happyRest

happyReduce_51 = happyReduce 4 21 happyReduction_51
happyReduction_51 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (HS_Number happy_var_3
	) `HappyStk` happyRest

happyReduce_52 = happyReduce 5 21 happyReduction_52
happyReduction_52 (_ `HappyStk`
	(HappyAbsSyn17  happy_var_4) `HappyStk`
	(HappyAbsSyn17  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn21
		 (HS_Eq happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 53 53 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	T_Int happy_dollar_dollar -> cont 22;
	T_Id happy_dollar_dollar -> cont 23;
	T_Plus -> cont 24;
	T_Minus -> cont 25;
	T_Multi -> cont 26;
	T_Divid -> cont 27;
	T_LParen -> cont 28;
	T_RParen -> cont 29;
	T_Define -> cont 30;
	T_If -> cont 31;
	T_Else -> cont 32;
	T_True -> cont 33;
	T_False -> cont 34;
	T_Cond -> cont 35;
	T_GT -> cont 36;
	T_LT -> cont 37;
	T_Quote -> cont 38;
	T_QuoteSym -> cont 39;
	T_Dot -> cont 40;
	T_Null -> cont 41;
	T_Pair -> cont 42;
	T_Atom -> cont 43;
	T_Number -> cont 44;
	T_Eq -> cont 45;
	T_Cons -> cont 46;
	T_Car -> cont 47;
	T_Cdr -> cont 48;
	T_Read -> cont 49;
	T_Write -> cont 50;
	T_Display -> cont 51;
	T_EmptyL -> cont 52;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 53 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parseList tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parseError :: [Token] -> a 
parseError _ = error "Parse error"

data Node = HS_List Node Node Node 
        | HS_If Node Node Node
        | HS_Cond Node Node
        | HS_SerCases Node Node
        | HS_OneCase Node Node
        | HS_Int Int
        | HS_Bool Bool
        | HS_Id String
        | HS_Divid
        | HS_Multi
        | HS_Plus
        | HS_Minus
        | HS_Define
        | HS_Atoms Node Node
        | HS_Func Node Node
        | HS_FuncHdr Node Node 
        | HS_GT
        | HS_LT 
        | HS_Null Node
        | HS_Pair Node
        | HS_Atom Node
        | HS_Number Node
        | HS_Eq Node Node
        | HS_Cons
        | HS_EmptyL
        | HS_Read Node
        | HS_Write Node
        | HS_Display Node
        | HS_Dot Node Node
        deriving (Show)

showInfo :: Node -> String 
showInfo (HS_Func a b) = "Function Dec {\n" ++ (showInfo a) ++ "Body = " ++ (showInfo b) ++"\n}"
showInfo (HS_FuncHdr a b) = "FunName = " ++ (showInfo a) ++ "\nArgs = {\n" ++ (showInfo b) ++ "\n}\n"
showInfo (HS_If a b c) = "If { \ncond = " ++ (showInfo a) ++ "\nTrueExp = " ++ (showInfo b) ++ "\nFalsExp = " ++ (showInfo c) ++ "\n}"
showInfo (HS_List b c d) = (showInfo b) ++ "\n" ++ (showInfo c) ++ "\n" ++ (showInfo d) ++ "\n"  
showInfo (HS_Cond a b) = "Cond{ \n" ++ (showInfo a) ++ "\nElse=" ++ (showInfo b) ++ "\n}" 
showInfo (HS_SerCases a b) = (showInfo a) ++ "\n" ++ (showInfo b)
showInfo (HS_Atoms a b) = (showInfo a) ++ "\n" ++ (showInfo b) 
showInfo (HS_OneCase a b) = "{ \ncond = " ++ (showInfo a) ++ "\nExp = " ++ (showInfo b) ++ "\n}"
showInfo (HS_Bool x) = "Bool (" ++ (show x) ++ ")"
showInfo (HS_Int x) = "Int (" ++ (show x) ++ ")"
showInfo (HS_Id x) = "Id (" ++ x ++ ")"
showInfo (HS_Null a) = "Null? " ++ (showInfo a)
showInfo (HS_Pair a) = "Pair? " ++ (showInfo a)
showInfo (HS_Atom a) = "Atom? " ++ (showInfo a)
showInfo (HS_Number a) = "Number? " ++ (showInfo a)
showInfo (HS_Eq a b) = "Eq? " ++ (showInfo a) ++ " " ++ (showInfo b)
showInfo (HS_EmptyL) = "()"
showInfo (HS_Read a) = "HS_Read" ++ "\n" ++ (showInfo a)
showInfo (HS_Write a) = "HS_Write" ++ "\n" ++ (showInfo a)
showInfo (HS_Display a) = "HS_Display" ++ "\n" ++ (showInfo a)
showInfo x = (show x)
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
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
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
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





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









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
