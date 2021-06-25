{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import AST
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17
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

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,301) ([0,24846,0,0,2160,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2288,58339,0,0,0,0,0,0,0,0,0,0,0,0,0,0,34424,29169,0,33848,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,4320,6,0,0,0,0,0,0,0,49152,3105,0,0,24846,0,0,2160,3,0,17280,24,0,7168,194,0,57344,1552,0,0,12423,0,0,33848,1,0,16384,0,0,0,2,0,0,16,0,32768,6211,0,0,1024,0,0,8192,0,0,0,1,0,0,8,0,49152,3105,0,0,24846,0,0,2160,3,0,32768,0,0,0,4,0,57344,1552,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseList","Prog","SExp","Ident","Atom","Bool","Number","String","Expr","OpStmt","OpKeyword","IOStmt","CondStmt","PredStmt","Defin","integer","id","string","plus","minus","multi","divid","lparen","rparen","define","if","else","true","false","cond","gt","lt","quote","quotesym","dot","'Null\\?'","'Pair\\?'","'Atom\\?'","'Number\\?'","'Eq\\?'","cons","car","cdr","read","write","display","lambda","'\\'\\(\\)'","%eof"]
        bit_start = st Prelude.* 51
        bit_end = (st Prelude.+ 1) Prelude.* 51
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..50]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (18) = happyShift action_13
action_0 (19) = happyShift action_14
action_0 (20) = happyShift action_15
action_0 (25) = happyShift action_21
action_0 (30) = happyShift action_17
action_0 (31) = happyShift action_18
action_0 (4) = happyGoto action_19
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (9) = happyGoto action_6
action_0 (10) = happyGoto action_7
action_0 (11) = happyGoto action_8
action_0 (12) = happyGoto action_9
action_0 (14) = happyGoto action_10
action_0 (15) = happyGoto action_11
action_0 (16) = happyGoto action_12
action_0 (17) = happyGoto action_20
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (18) = happyShift action_13
action_1 (19) = happyShift action_14
action_1 (20) = happyShift action_15
action_1 (25) = happyShift action_16
action_1 (30) = happyShift action_17
action_1 (31) = happyShift action_18
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 (9) = happyGoto action_6
action_1 (10) = happyGoto action_7
action_1 (11) = happyGoto action_8
action_1 (12) = happyGoto action_9
action_1 (14) = happyGoto action_10
action_1 (15) = happyGoto action_11
action_1 (16) = happyGoto action_12
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_4

action_4 _ = happyReduce_5

action_5 _ = happyReduce_7

action_6 _ = happyReduce_8

action_7 _ = happyReduce_9

action_8 _ = happyReduce_3

action_9 _ = happyReduce_14

action_10 _ = happyReduce_15

action_11 _ = happyReduce_16

action_12 _ = happyReduce_17

action_13 _ = happyReduce_12

action_14 _ = happyReduce_6

action_15 _ = happyReduce_13

action_16 (21) = happyShift action_23
action_16 (22) = happyShift action_24
action_16 (23) = happyShift action_25
action_16 (24) = happyShift action_26
action_16 (28) = happyShift action_28
action_16 (33) = happyShift action_29
action_16 (34) = happyShift action_30
action_16 (38) = happyShift action_31
action_16 (39) = happyShift action_32
action_16 (40) = happyShift action_33
action_16 (41) = happyShift action_34
action_16 (42) = happyShift action_35
action_16 (46) = happyShift action_36
action_16 (47) = happyShift action_37
action_16 (48) = happyShift action_38
action_16 (13) = happyGoto action_22
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_10

action_18 _ = happyReduce_11

action_19 (51) = happyAccept
action_19 _ = happyFail (happyExpListPerState 19)

action_20 _ = happyReduce_2

action_21 (21) = happyShift action_23
action_21 (22) = happyShift action_24
action_21 (23) = happyShift action_25
action_21 (24) = happyShift action_26
action_21 (27) = happyShift action_27
action_21 (28) = happyShift action_28
action_21 (33) = happyShift action_29
action_21 (34) = happyShift action_30
action_21 (38) = happyShift action_31
action_21 (39) = happyShift action_32
action_21 (40) = happyShift action_33
action_21 (41) = happyShift action_34
action_21 (42) = happyShift action_35
action_21 (46) = happyShift action_36
action_21 (47) = happyShift action_37
action_21 (48) = happyShift action_38
action_21 (13) = happyGoto action_22
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (18) = happyShift action_13
action_22 (19) = happyShift action_14
action_22 (20) = happyShift action_15
action_22 (25) = happyShift action_16
action_22 (30) = happyShift action_17
action_22 (31) = happyShift action_18
action_22 (5) = happyGoto action_49
action_22 (6) = happyGoto action_3
action_22 (7) = happyGoto action_4
action_22 (8) = happyGoto action_5
action_22 (9) = happyGoto action_6
action_22 (10) = happyGoto action_7
action_22 (11) = happyGoto action_8
action_22 (12) = happyGoto action_9
action_22 (14) = happyGoto action_10
action_22 (15) = happyGoto action_11
action_22 (16) = happyGoto action_12
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_19

action_24 _ = happyReduce_20

action_25 _ = happyReduce_21

action_26 _ = happyReduce_22

action_27 (19) = happyShift action_14
action_27 (6) = happyGoto action_48
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (18) = happyShift action_13
action_28 (19) = happyShift action_14
action_28 (20) = happyShift action_15
action_28 (25) = happyShift action_16
action_28 (30) = happyShift action_17
action_28 (31) = happyShift action_18
action_28 (5) = happyGoto action_47
action_28 (6) = happyGoto action_3
action_28 (7) = happyGoto action_4
action_28 (8) = happyGoto action_5
action_28 (9) = happyGoto action_6
action_28 (10) = happyGoto action_7
action_28 (11) = happyGoto action_8
action_28 (12) = happyGoto action_9
action_28 (14) = happyGoto action_10
action_28 (15) = happyGoto action_11
action_28 (16) = happyGoto action_12
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_23

action_30 _ = happyReduce_24

action_31 (18) = happyShift action_13
action_31 (19) = happyShift action_14
action_31 (20) = happyShift action_15
action_31 (25) = happyShift action_16
action_31 (30) = happyShift action_17
action_31 (31) = happyShift action_18
action_31 (5) = happyGoto action_46
action_31 (6) = happyGoto action_3
action_31 (7) = happyGoto action_4
action_31 (8) = happyGoto action_5
action_31 (9) = happyGoto action_6
action_31 (10) = happyGoto action_7
action_31 (11) = happyGoto action_8
action_31 (12) = happyGoto action_9
action_31 (14) = happyGoto action_10
action_31 (15) = happyGoto action_11
action_31 (16) = happyGoto action_12
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (18) = happyShift action_13
action_32 (19) = happyShift action_14
action_32 (20) = happyShift action_15
action_32 (25) = happyShift action_16
action_32 (30) = happyShift action_17
action_32 (31) = happyShift action_18
action_32 (5) = happyGoto action_45
action_32 (6) = happyGoto action_3
action_32 (7) = happyGoto action_4
action_32 (8) = happyGoto action_5
action_32 (9) = happyGoto action_6
action_32 (10) = happyGoto action_7
action_32 (11) = happyGoto action_8
action_32 (12) = happyGoto action_9
action_32 (14) = happyGoto action_10
action_32 (15) = happyGoto action_11
action_32 (16) = happyGoto action_12
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (18) = happyShift action_13
action_33 (19) = happyShift action_14
action_33 (20) = happyShift action_15
action_33 (25) = happyShift action_16
action_33 (30) = happyShift action_17
action_33 (31) = happyShift action_18
action_33 (5) = happyGoto action_44
action_33 (6) = happyGoto action_3
action_33 (7) = happyGoto action_4
action_33 (8) = happyGoto action_5
action_33 (9) = happyGoto action_6
action_33 (10) = happyGoto action_7
action_33 (11) = happyGoto action_8
action_33 (12) = happyGoto action_9
action_33 (14) = happyGoto action_10
action_33 (15) = happyGoto action_11
action_33 (16) = happyGoto action_12
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (18) = happyShift action_13
action_34 (19) = happyShift action_14
action_34 (20) = happyShift action_15
action_34 (25) = happyShift action_16
action_34 (30) = happyShift action_17
action_34 (31) = happyShift action_18
action_34 (5) = happyGoto action_43
action_34 (6) = happyGoto action_3
action_34 (7) = happyGoto action_4
action_34 (8) = happyGoto action_5
action_34 (9) = happyGoto action_6
action_34 (10) = happyGoto action_7
action_34 (11) = happyGoto action_8
action_34 (12) = happyGoto action_9
action_34 (14) = happyGoto action_10
action_34 (15) = happyGoto action_11
action_34 (16) = happyGoto action_12
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (18) = happyShift action_13
action_35 (19) = happyShift action_14
action_35 (20) = happyShift action_15
action_35 (25) = happyShift action_16
action_35 (30) = happyShift action_17
action_35 (31) = happyShift action_18
action_35 (5) = happyGoto action_42
action_35 (6) = happyGoto action_3
action_35 (7) = happyGoto action_4
action_35 (8) = happyGoto action_5
action_35 (9) = happyGoto action_6
action_35 (10) = happyGoto action_7
action_35 (11) = happyGoto action_8
action_35 (12) = happyGoto action_9
action_35 (14) = happyGoto action_10
action_35 (15) = happyGoto action_11
action_35 (16) = happyGoto action_12
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (18) = happyShift action_13
action_36 (19) = happyShift action_14
action_36 (20) = happyShift action_15
action_36 (25) = happyShift action_16
action_36 (30) = happyShift action_17
action_36 (31) = happyShift action_18
action_36 (5) = happyGoto action_41
action_36 (6) = happyGoto action_3
action_36 (7) = happyGoto action_4
action_36 (8) = happyGoto action_5
action_36 (9) = happyGoto action_6
action_36 (10) = happyGoto action_7
action_36 (11) = happyGoto action_8
action_36 (12) = happyGoto action_9
action_36 (14) = happyGoto action_10
action_36 (15) = happyGoto action_11
action_36 (16) = happyGoto action_12
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (18) = happyShift action_13
action_37 (19) = happyShift action_14
action_37 (20) = happyShift action_15
action_37 (25) = happyShift action_16
action_37 (30) = happyShift action_17
action_37 (31) = happyShift action_18
action_37 (5) = happyGoto action_40
action_37 (6) = happyGoto action_3
action_37 (7) = happyGoto action_4
action_37 (8) = happyGoto action_5
action_37 (9) = happyGoto action_6
action_37 (10) = happyGoto action_7
action_37 (11) = happyGoto action_8
action_37 (12) = happyGoto action_9
action_37 (14) = happyGoto action_10
action_37 (15) = happyGoto action_11
action_37 (16) = happyGoto action_12
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (18) = happyShift action_13
action_38 (19) = happyShift action_14
action_38 (20) = happyShift action_15
action_38 (25) = happyShift action_16
action_38 (30) = happyShift action_17
action_38 (31) = happyShift action_18
action_38 (5) = happyGoto action_39
action_38 (6) = happyGoto action_3
action_38 (7) = happyGoto action_4
action_38 (8) = happyGoto action_5
action_38 (9) = happyGoto action_6
action_38 (10) = happyGoto action_7
action_38 (11) = happyGoto action_8
action_38 (12) = happyGoto action_9
action_38 (14) = happyGoto action_10
action_38 (15) = happyGoto action_11
action_38 (16) = happyGoto action_12
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (26) = happyShift action_60
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (26) = happyShift action_59
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (26) = happyShift action_58
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (18) = happyShift action_13
action_42 (19) = happyShift action_14
action_42 (20) = happyShift action_15
action_42 (25) = happyShift action_16
action_42 (30) = happyShift action_17
action_42 (31) = happyShift action_18
action_42 (5) = happyGoto action_57
action_42 (6) = happyGoto action_3
action_42 (7) = happyGoto action_4
action_42 (8) = happyGoto action_5
action_42 (9) = happyGoto action_6
action_42 (10) = happyGoto action_7
action_42 (11) = happyGoto action_8
action_42 (12) = happyGoto action_9
action_42 (14) = happyGoto action_10
action_42 (15) = happyGoto action_11
action_42 (16) = happyGoto action_12
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (26) = happyShift action_56
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (26) = happyShift action_55
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (26) = happyShift action_54
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (26) = happyShift action_53
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (18) = happyShift action_13
action_47 (19) = happyShift action_14
action_47 (20) = happyShift action_15
action_47 (25) = happyShift action_16
action_47 (30) = happyShift action_17
action_47 (31) = happyShift action_18
action_47 (5) = happyGoto action_52
action_47 (6) = happyGoto action_3
action_47 (7) = happyGoto action_4
action_47 (8) = happyGoto action_5
action_47 (9) = happyGoto action_6
action_47 (10) = happyGoto action_7
action_47 (11) = happyGoto action_8
action_47 (12) = happyGoto action_9
action_47 (14) = happyGoto action_10
action_47 (15) = happyGoto action_11
action_47 (16) = happyGoto action_12
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (18) = happyShift action_13
action_48 (19) = happyShift action_14
action_48 (20) = happyShift action_15
action_48 (25) = happyShift action_16
action_48 (30) = happyShift action_17
action_48 (31) = happyShift action_18
action_48 (5) = happyGoto action_51
action_48 (6) = happyGoto action_3
action_48 (7) = happyGoto action_4
action_48 (8) = happyGoto action_5
action_48 (9) = happyGoto action_6
action_48 (10) = happyGoto action_7
action_48 (11) = happyGoto action_8
action_48 (12) = happyGoto action_9
action_48 (14) = happyGoto action_10
action_48 (15) = happyGoto action_11
action_48 (16) = happyGoto action_12
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (18) = happyShift action_13
action_49 (19) = happyShift action_14
action_49 (20) = happyShift action_15
action_49 (25) = happyShift action_16
action_49 (30) = happyShift action_17
action_49 (31) = happyShift action_18
action_49 (5) = happyGoto action_50
action_49 (6) = happyGoto action_3
action_49 (7) = happyGoto action_4
action_49 (8) = happyGoto action_5
action_49 (9) = happyGoto action_6
action_49 (10) = happyGoto action_7
action_49 (11) = happyGoto action_8
action_49 (12) = happyGoto action_9
action_49 (14) = happyGoto action_10
action_49 (15) = happyGoto action_11
action_49 (16) = happyGoto action_12
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (26) = happyShift action_64
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (26) = happyShift action_63
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (18) = happyShift action_13
action_52 (19) = happyShift action_14
action_52 (20) = happyShift action_15
action_52 (25) = happyShift action_16
action_52 (30) = happyShift action_17
action_52 (31) = happyShift action_18
action_52 (5) = happyGoto action_62
action_52 (6) = happyGoto action_3
action_52 (7) = happyGoto action_4
action_52 (8) = happyGoto action_5
action_52 (9) = happyGoto action_6
action_52 (10) = happyGoto action_7
action_52 (11) = happyGoto action_8
action_52 (12) = happyGoto action_9
action_52 (14) = happyGoto action_10
action_52 (15) = happyGoto action_11
action_52 (16) = happyGoto action_12
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_29

action_54 _ = happyReduce_30

action_55 _ = happyReduce_31

action_56 _ = happyReduce_32

action_57 (26) = happyShift action_61
action_57 _ = happyFail (happyExpListPerState 57)

action_58 _ = happyReduce_25

action_59 _ = happyReduce_26

action_60 _ = happyReduce_27

action_61 _ = happyReduce_33

action_62 (26) = happyShift action_65
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_34

action_64 _ = happyReduce_18

action_65 _ = happyReduce_28

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (SExp' happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn4
		 (Def' happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn5
		 (Expr' happy_var_1
	)
happyReduction_3 _  = notHappyAtAll 

happyReduce_4 = happySpecReduce_1  5 happyReduction_4
happyReduction_4 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn5
		 (Id' happy_var_1
	)
happyReduction_4 _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_1  5 happyReduction_5
happyReduction_5 (HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn5
		 (Atom' happy_var_1
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_1  6 happyReduction_6
happyReduction_6 (HappyTerminal (T_Id happy_var_1))
	 =  HappyAbsSyn6
		 (Ident' happy_var_1
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_1  7 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (AtomBool' happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn7
		 (AtomInt' happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn7
		 (AtomStr' happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  8 happyReduction_10
happyReduction_10 _
	 =  HappyAbsSyn8
		 (True
	)

happyReduce_11 = happySpecReduce_1  8 happyReduction_11
happyReduction_11 _
	 =  HappyAbsSyn8
		 (False
	)

happyReduce_12 = happySpecReduce_1  9 happyReduction_12
happyReduction_12 (HappyTerminal (T_Int happy_var_1))
	 =  HappyAbsSyn9
		 (happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_1  10 happyReduction_13
happyReduction_13 (HappyTerminal (T_Str happy_var_1))
	 =  HappyAbsSyn10
		 (happy_var_1
	)
happyReduction_13 _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  11 happyReduction_14
happyReduction_14 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  11 happyReduction_15
happyReduction_15 (HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_15 _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_1  11 happyReduction_16
happyReduction_16 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_1  11 happyReduction_17
happyReduction_17 (HappyAbsSyn16  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happyReduce 5 12 happyReduction_18
happyReduction_18 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn13  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (Bi' happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_19 = happySpecReduce_1  13 happyReduction_19
happyReduction_19 _
	 =  HappyAbsSyn13
		 (Plus'
	)

happyReduce_20 = happySpecReduce_1  13 happyReduction_20
happyReduction_20 _
	 =  HappyAbsSyn13
		 (Minus'
	)

happyReduce_21 = happySpecReduce_1  13 happyReduction_21
happyReduction_21 _
	 =  HappyAbsSyn13
		 (Multiply'
	)

happyReduce_22 = happySpecReduce_1  13 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn13
		 (Devide'
	)

happyReduce_23 = happySpecReduce_1  13 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn13
		 (Greater'
	)

happyReduce_24 = happySpecReduce_1  13 happyReduction_24
happyReduction_24 _
	 =  HappyAbsSyn13
		 (Lessthan'
	)

happyReduce_25 = happyReduce 4 14 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (Uni' Read' happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happyReduce 4 14 happyReduction_26
happyReduction_26 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (Uni' Write' happy_var_3
	) `HappyStk` happyRest

happyReduce_27 = happyReduce 4 14 happyReduction_27
happyReduction_27 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn14
		 (Uni' Display' happy_var_3
	) `HappyStk` happyRest

happyReduce_28 = happyReduce 6 15 happyReduction_28
happyReduction_28 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (If' happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_29 = happyReduce 4 16 happyReduction_29
happyReduction_29 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Uni' Null' happy_var_3
	) `HappyStk` happyRest

happyReduce_30 = happyReduce 4 16 happyReduction_30
happyReduction_30 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Uni' Pair' happy_var_3
	) `HappyStk` happyRest

happyReduce_31 = happyReduce 4 16 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Uni' AtomC' happy_var_3
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 16 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Uni' Number' happy_var_3
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 5 16 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn16
		 (Bi' Eq' happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 5 17 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Bind' happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 51 51 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	T_Int happy_dollar_dollar -> cont 18;
	T_Id happy_dollar_dollar -> cont 19;
	T_Str happy_dollar_dollar -> cont 20;
	T_Plus -> cont 21;
	T_Minus -> cont 22;
	T_Multi -> cont 23;
	T_Divid -> cont 24;
	T_LParen -> cont 25;
	T_RParen -> cont 26;
	T_Define -> cont 27;
	T_If -> cont 28;
	T_Else -> cont 29;
	T_True -> cont 30;
	T_False -> cont 31;
	T_Cond -> cont 32;
	T_GT -> cont 33;
	T_LT -> cont 34;
	T_Quote -> cont 35;
	T_QuoteSym -> cont 36;
	T_Dot -> cont 37;
	T_Null -> cont 38;
	T_Pair -> cont 39;
	T_Atom -> cont 40;
	T_Number -> cont 41;
	T_Eq -> cont 42;
	T_Cons -> cont 43;
	T_Car -> cont 44;
	T_Cdr -> cont 45;
	T_Read -> cont 46;
	T_Write -> cont 47;
	T_Display -> cont 48;
	T_Lambda -> cont 49;
	T_EmptyL -> cont 50;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 51 tk tks = happyError' (tks, explist)
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
