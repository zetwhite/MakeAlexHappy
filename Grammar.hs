{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import AST
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,317) ([0,49692,0,0,8640,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7680,31841,28,0,0,0,0,0,0,0,0,0,0,0,0,0,57344,50713,455,49152,3105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,8640,12,0,0,0,0,0,0,0,0,49692,0,0,8640,12,0,7168,194,0,49152,3105,0,0,49692,0,0,8640,12,0,7168,194,0,49152,3105,0,0,1024,0,0,16384,0,0,0,4,0,49152,3105,0,0,1024,0,0,16384,0,0,0,4,0,0,64,0,0,49692,0,0,8640,12,0,7168,194,0,0,64,0,0,1024,0,0,8640,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseList","Prog","SExp","Atom","Id","Constant","Bool","Number","String","Expr","OpStmt","OpKeyword","IOStmt","CondStmt","PredStmt","Defin","integer","id","string","plus","minus","multi","divid","lparen","rparen","define","if","else","true","false","cond","gt","lt","quote","quotesym","dot","'Null\\?'","'Pair\\?'","'Atom\\?'","'Number\\?'","'Eq\\?'","cons","car","cdr","read","write","display","lambda","'\\'\\(\\)'","%eof"]
        bit_start = st Prelude.* 52
        bit_end = (st Prelude.+ 1) Prelude.* 52
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..51]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (19) = happyShift action_14
action_0 (20) = happyShift action_15
action_0 (21) = happyShift action_16
action_0 (26) = happyShift action_22
action_0 (31) = happyShift action_18
action_0 (32) = happyShift action_19
action_0 (4) = happyGoto action_20
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (9) = happyGoto action_6
action_0 (10) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (12) = happyGoto action_9
action_0 (13) = happyGoto action_10
action_0 (15) = happyGoto action_11
action_0 (16) = happyGoto action_12
action_0 (17) = happyGoto action_13
action_0 (18) = happyGoto action_21
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (19) = happyShift action_14
action_1 (20) = happyShift action_15
action_1 (21) = happyShift action_16
action_1 (26) = happyShift action_17
action_1 (31) = happyShift action_18
action_1 (32) = happyShift action_19
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 (9) = happyGoto action_6
action_1 (10) = happyGoto action_7
action_1 (11) = happyGoto action_8
action_1 (12) = happyGoto action_9
action_1 (13) = happyGoto action_10
action_1 (15) = happyGoto action_11
action_1 (16) = happyGoto action_12
action_1 (17) = happyGoto action_13
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_4

action_4 _ = happyReduce_5

action_5 _ = happyReduce_6

action_6 _ = happyReduce_8

action_7 _ = happyReduce_9

action_8 _ = happyReduce_10

action_9 _ = happyReduce_3

action_10 _ = happyReduce_15

action_11 _ = happyReduce_16

action_12 _ = happyReduce_17

action_13 _ = happyReduce_18

action_14 _ = happyReduce_13

action_15 _ = happyReduce_7

action_16 _ = happyReduce_14

action_17 (22) = happyShift action_24
action_17 (23) = happyShift action_25
action_17 (24) = happyShift action_26
action_17 (25) = happyShift action_27
action_17 (29) = happyShift action_29
action_17 (34) = happyShift action_30
action_17 (35) = happyShift action_31
action_17 (39) = happyShift action_32
action_17 (40) = happyShift action_33
action_17 (41) = happyShift action_34
action_17 (42) = happyShift action_35
action_17 (43) = happyShift action_36
action_17 (47) = happyShift action_37
action_17 (48) = happyShift action_38
action_17 (49) = happyShift action_39
action_17 (14) = happyGoto action_23
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_11

action_19 _ = happyReduce_12

action_20 (52) = happyAccept
action_20 _ = happyFail (happyExpListPerState 20)

action_21 _ = happyReduce_2

action_22 (22) = happyShift action_24
action_22 (23) = happyShift action_25
action_22 (24) = happyShift action_26
action_22 (25) = happyShift action_27
action_22 (28) = happyShift action_28
action_22 (29) = happyShift action_29
action_22 (34) = happyShift action_30
action_22 (35) = happyShift action_31
action_22 (39) = happyShift action_32
action_22 (40) = happyShift action_33
action_22 (41) = happyShift action_34
action_22 (42) = happyShift action_35
action_22 (43) = happyShift action_36
action_22 (47) = happyShift action_37
action_22 (48) = happyShift action_38
action_22 (49) = happyShift action_39
action_22 (14) = happyGoto action_23
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (19) = happyShift action_14
action_23 (20) = happyShift action_15
action_23 (21) = happyShift action_16
action_23 (26) = happyShift action_17
action_23 (31) = happyShift action_18
action_23 (32) = happyShift action_19
action_23 (5) = happyGoto action_50
action_23 (6) = happyGoto action_3
action_23 (7) = happyGoto action_4
action_23 (8) = happyGoto action_5
action_23 (9) = happyGoto action_6
action_23 (10) = happyGoto action_7
action_23 (11) = happyGoto action_8
action_23 (12) = happyGoto action_9
action_23 (13) = happyGoto action_10
action_23 (15) = happyGoto action_11
action_23 (16) = happyGoto action_12
action_23 (17) = happyGoto action_13
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_20

action_25 _ = happyReduce_21

action_26 _ = happyReduce_22

action_27 _ = happyReduce_23

action_28 (20) = happyShift action_15
action_28 (7) = happyGoto action_49
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (19) = happyShift action_14
action_29 (20) = happyShift action_15
action_29 (21) = happyShift action_16
action_29 (26) = happyShift action_17
action_29 (31) = happyShift action_18
action_29 (32) = happyShift action_19
action_29 (5) = happyGoto action_48
action_29 (6) = happyGoto action_3
action_29 (7) = happyGoto action_4
action_29 (8) = happyGoto action_5
action_29 (9) = happyGoto action_6
action_29 (10) = happyGoto action_7
action_29 (11) = happyGoto action_8
action_29 (12) = happyGoto action_9
action_29 (13) = happyGoto action_10
action_29 (15) = happyGoto action_11
action_29 (16) = happyGoto action_12
action_29 (17) = happyGoto action_13
action_29 _ = happyFail (happyExpListPerState 29)

action_30 _ = happyReduce_24

action_31 _ = happyReduce_25

action_32 (19) = happyShift action_14
action_32 (20) = happyShift action_15
action_32 (21) = happyShift action_16
action_32 (26) = happyShift action_17
action_32 (31) = happyShift action_18
action_32 (32) = happyShift action_19
action_32 (5) = happyGoto action_47
action_32 (6) = happyGoto action_3
action_32 (7) = happyGoto action_4
action_32 (8) = happyGoto action_5
action_32 (9) = happyGoto action_6
action_32 (10) = happyGoto action_7
action_32 (11) = happyGoto action_8
action_32 (12) = happyGoto action_9
action_32 (13) = happyGoto action_10
action_32 (15) = happyGoto action_11
action_32 (16) = happyGoto action_12
action_32 (17) = happyGoto action_13
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (19) = happyShift action_14
action_33 (20) = happyShift action_15
action_33 (21) = happyShift action_16
action_33 (26) = happyShift action_17
action_33 (31) = happyShift action_18
action_33 (32) = happyShift action_19
action_33 (5) = happyGoto action_46
action_33 (6) = happyGoto action_3
action_33 (7) = happyGoto action_4
action_33 (8) = happyGoto action_5
action_33 (9) = happyGoto action_6
action_33 (10) = happyGoto action_7
action_33 (11) = happyGoto action_8
action_33 (12) = happyGoto action_9
action_33 (13) = happyGoto action_10
action_33 (15) = happyGoto action_11
action_33 (16) = happyGoto action_12
action_33 (17) = happyGoto action_13
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (19) = happyShift action_14
action_34 (20) = happyShift action_15
action_34 (21) = happyShift action_16
action_34 (26) = happyShift action_17
action_34 (31) = happyShift action_18
action_34 (32) = happyShift action_19
action_34 (5) = happyGoto action_45
action_34 (6) = happyGoto action_3
action_34 (7) = happyGoto action_4
action_34 (8) = happyGoto action_5
action_34 (9) = happyGoto action_6
action_34 (10) = happyGoto action_7
action_34 (11) = happyGoto action_8
action_34 (12) = happyGoto action_9
action_34 (13) = happyGoto action_10
action_34 (15) = happyGoto action_11
action_34 (16) = happyGoto action_12
action_34 (17) = happyGoto action_13
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (19) = happyShift action_14
action_35 (20) = happyShift action_15
action_35 (21) = happyShift action_16
action_35 (26) = happyShift action_17
action_35 (31) = happyShift action_18
action_35 (32) = happyShift action_19
action_35 (5) = happyGoto action_44
action_35 (6) = happyGoto action_3
action_35 (7) = happyGoto action_4
action_35 (8) = happyGoto action_5
action_35 (9) = happyGoto action_6
action_35 (10) = happyGoto action_7
action_35 (11) = happyGoto action_8
action_35 (12) = happyGoto action_9
action_35 (13) = happyGoto action_10
action_35 (15) = happyGoto action_11
action_35 (16) = happyGoto action_12
action_35 (17) = happyGoto action_13
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (19) = happyShift action_14
action_36 (20) = happyShift action_15
action_36 (21) = happyShift action_16
action_36 (26) = happyShift action_17
action_36 (31) = happyShift action_18
action_36 (32) = happyShift action_19
action_36 (5) = happyGoto action_43
action_36 (6) = happyGoto action_3
action_36 (7) = happyGoto action_4
action_36 (8) = happyGoto action_5
action_36 (9) = happyGoto action_6
action_36 (10) = happyGoto action_7
action_36 (11) = happyGoto action_8
action_36 (12) = happyGoto action_9
action_36 (13) = happyGoto action_10
action_36 (15) = happyGoto action_11
action_36 (16) = happyGoto action_12
action_36 (17) = happyGoto action_13
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (19) = happyShift action_14
action_37 (20) = happyShift action_15
action_37 (21) = happyShift action_16
action_37 (26) = happyShift action_17
action_37 (31) = happyShift action_18
action_37 (32) = happyShift action_19
action_37 (5) = happyGoto action_42
action_37 (6) = happyGoto action_3
action_37 (7) = happyGoto action_4
action_37 (8) = happyGoto action_5
action_37 (9) = happyGoto action_6
action_37 (10) = happyGoto action_7
action_37 (11) = happyGoto action_8
action_37 (12) = happyGoto action_9
action_37 (13) = happyGoto action_10
action_37 (15) = happyGoto action_11
action_37 (16) = happyGoto action_12
action_37 (17) = happyGoto action_13
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (19) = happyShift action_14
action_38 (20) = happyShift action_15
action_38 (21) = happyShift action_16
action_38 (26) = happyShift action_17
action_38 (31) = happyShift action_18
action_38 (32) = happyShift action_19
action_38 (5) = happyGoto action_41
action_38 (6) = happyGoto action_3
action_38 (7) = happyGoto action_4
action_38 (8) = happyGoto action_5
action_38 (9) = happyGoto action_6
action_38 (10) = happyGoto action_7
action_38 (11) = happyGoto action_8
action_38 (12) = happyGoto action_9
action_38 (13) = happyGoto action_10
action_38 (15) = happyGoto action_11
action_38 (16) = happyGoto action_12
action_38 (17) = happyGoto action_13
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (19) = happyShift action_14
action_39 (20) = happyShift action_15
action_39 (21) = happyShift action_16
action_39 (26) = happyShift action_17
action_39 (31) = happyShift action_18
action_39 (32) = happyShift action_19
action_39 (5) = happyGoto action_40
action_39 (6) = happyGoto action_3
action_39 (7) = happyGoto action_4
action_39 (8) = happyGoto action_5
action_39 (9) = happyGoto action_6
action_39 (10) = happyGoto action_7
action_39 (11) = happyGoto action_8
action_39 (12) = happyGoto action_9
action_39 (13) = happyGoto action_10
action_39 (15) = happyGoto action_11
action_39 (16) = happyGoto action_12
action_39 (17) = happyGoto action_13
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (27) = happyShift action_61
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (27) = happyShift action_60
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (27) = happyShift action_59
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (19) = happyShift action_14
action_43 (20) = happyShift action_15
action_43 (21) = happyShift action_16
action_43 (26) = happyShift action_17
action_43 (31) = happyShift action_18
action_43 (32) = happyShift action_19
action_43 (5) = happyGoto action_58
action_43 (6) = happyGoto action_3
action_43 (7) = happyGoto action_4
action_43 (8) = happyGoto action_5
action_43 (9) = happyGoto action_6
action_43 (10) = happyGoto action_7
action_43 (11) = happyGoto action_8
action_43 (12) = happyGoto action_9
action_43 (13) = happyGoto action_10
action_43 (15) = happyGoto action_11
action_43 (16) = happyGoto action_12
action_43 (17) = happyGoto action_13
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (27) = happyShift action_57
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (27) = happyShift action_56
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (27) = happyShift action_55
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (27) = happyShift action_54
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (19) = happyShift action_14
action_48 (20) = happyShift action_15
action_48 (21) = happyShift action_16
action_48 (26) = happyShift action_17
action_48 (31) = happyShift action_18
action_48 (32) = happyShift action_19
action_48 (5) = happyGoto action_53
action_48 (6) = happyGoto action_3
action_48 (7) = happyGoto action_4
action_48 (8) = happyGoto action_5
action_48 (9) = happyGoto action_6
action_48 (10) = happyGoto action_7
action_48 (11) = happyGoto action_8
action_48 (12) = happyGoto action_9
action_48 (13) = happyGoto action_10
action_48 (15) = happyGoto action_11
action_48 (16) = happyGoto action_12
action_48 (17) = happyGoto action_13
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (19) = happyShift action_14
action_49 (20) = happyShift action_15
action_49 (21) = happyShift action_16
action_49 (26) = happyShift action_17
action_49 (31) = happyShift action_18
action_49 (32) = happyShift action_19
action_49 (5) = happyGoto action_52
action_49 (6) = happyGoto action_3
action_49 (7) = happyGoto action_4
action_49 (8) = happyGoto action_5
action_49 (9) = happyGoto action_6
action_49 (10) = happyGoto action_7
action_49 (11) = happyGoto action_8
action_49 (12) = happyGoto action_9
action_49 (13) = happyGoto action_10
action_49 (15) = happyGoto action_11
action_49 (16) = happyGoto action_12
action_49 (17) = happyGoto action_13
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (19) = happyShift action_14
action_50 (20) = happyShift action_15
action_50 (21) = happyShift action_16
action_50 (26) = happyShift action_17
action_50 (31) = happyShift action_18
action_50 (32) = happyShift action_19
action_50 (5) = happyGoto action_51
action_50 (6) = happyGoto action_3
action_50 (7) = happyGoto action_4
action_50 (8) = happyGoto action_5
action_50 (9) = happyGoto action_6
action_50 (10) = happyGoto action_7
action_50 (11) = happyGoto action_8
action_50 (12) = happyGoto action_9
action_50 (13) = happyGoto action_10
action_50 (15) = happyGoto action_11
action_50 (16) = happyGoto action_12
action_50 (17) = happyGoto action_13
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (27) = happyShift action_65
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (27) = happyShift action_64
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (19) = happyShift action_14
action_53 (20) = happyShift action_15
action_53 (21) = happyShift action_16
action_53 (26) = happyShift action_17
action_53 (31) = happyShift action_18
action_53 (32) = happyShift action_19
action_53 (5) = happyGoto action_63
action_53 (6) = happyGoto action_3
action_53 (7) = happyGoto action_4
action_53 (8) = happyGoto action_5
action_53 (9) = happyGoto action_6
action_53 (10) = happyGoto action_7
action_53 (11) = happyGoto action_8
action_53 (12) = happyGoto action_9
action_53 (13) = happyGoto action_10
action_53 (15) = happyGoto action_11
action_53 (16) = happyGoto action_12
action_53 (17) = happyGoto action_13
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_30

action_55 _ = happyReduce_31

action_56 _ = happyReduce_32

action_57 _ = happyReduce_33

action_58 (27) = happyShift action_62
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_26

action_60 _ = happyReduce_27

action_61 _ = happyReduce_28

action_62 _ = happyReduce_34

action_63 (27) = happyShift action_66
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_35

action_65 _ = happyReduce_19

action_66 _ = happyReduce_29

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Eval happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn4
		 (Appli happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn5
		 (Expr happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Atom happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  6 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn6
		 (AtomId happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn6
		 (happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyTerminal (T_Id happy_var_1))
	 =  HappyAbsSyn7
		 (Id happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  8 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (AtomBool happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  8 happyReduction_9
happyReduction_9 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn8
		 (AtomInt happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn8
		 (AtomStr happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  9 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn9
		 (True
	)

happyReduce_12 = happySpecReduce_1  9 happyReduction_12
happyReduction_12 _
	 =  HappyAbsSyn9
		 (False
	)

happyReduce_13 = happySpecReduce_1  10 happyReduction_13
happyReduction_13 (HappyTerminal (T_Int happy_var_1))
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  11 happyReduction_14
happyReduction_14 (HappyTerminal (T_Str happy_var_1))
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  12 happyReduction_15
happyReduction_15 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  12 happyReduction_16
happyReduction_16 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  12 happyReduction_17
happyReduction_17 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  12 happyReduction_18
happyReduction_18 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happyReduce 5 13 happyReduction_19
happyReduction_19 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn14  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (Bi happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_1  14 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn14
		 (Plus
	)

happyReduce_21 = happySpecReduce_1  14 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn14
		 (Minus
	)

happyReduce_22 = happySpecReduce_1  14 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn14
		 (Multiply
	)

happyReduce_23 = happySpecReduce_1  14 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn14
		 (Devide
	)

happyReduce_24 = happySpecReduce_1  14 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn14
		 (Greater
	)

happyReduce_25 = happySpecReduce_1  14 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn14
		 (Lessthan
	)

happyReduce_26 = happyReduce 4 15 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (Uni Read happy_var_3
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 4 15 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (Uni Write happy_var_3
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 4 15 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (Uni Display happy_var_3
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 6 16 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (If happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 4 17 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Uni Null happy_var_3
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 4 17 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Uni Pair happy_var_3
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 17 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Uni AtomC happy_var_3
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 4 17 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Uni Number happy_var_3
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 5 17 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Bi Eq happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 5 18 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn7  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (Def happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 52 52 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	T_Int happy_dollar_dollar -> cont 19;
	T_Id happy_dollar_dollar -> cont 20;
	T_Str happy_dollar_dollar -> cont 21;
	T_Plus -> cont 22;
	T_Minus -> cont 23;
	T_Multi -> cont 24;
	T_Divid -> cont 25;
	T_LParen -> cont 26;
	T_RParen -> cont 27;
	T_Define -> cont 28;
	T_If -> cont 29;
	T_Else -> cont 30;
	T_True -> cont 31;
	T_False -> cont 32;
	T_Cond -> cont 33;
	T_GT -> cont 34;
	T_LT -> cont 35;
	T_Quote -> cont 36;
	T_QuoteSym -> cont 37;
	T_Dot -> cont 38;
	T_Null -> cont 39;
	T_Pair -> cont 40;
	T_Atom -> cont 41;
	T_Number -> cont 42;
	T_Eq -> cont 43;
	T_Cons -> cont 44;
	T_Car -> cont 45;
	T_Cdr -> cont 46;
	T_Read -> cont 47;
	T_Write -> cont 48;
	T_Display -> cont 49;
	T_Lambda -> cont 50;
	T_EmptyL -> cont 51;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 52 tk tks = happyError' (tks, explist)
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
