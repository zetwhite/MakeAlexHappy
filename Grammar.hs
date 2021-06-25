{-# OPTIONS_GHC -w #-}
module Grammar where
import Tokens
import AST
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 t15 t16 t17 t18 t19 t20 t21 t22
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
	| HappyAbsSyn22 t22

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,433) ([0,8640,12,0,49152,3105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15872,31841,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,25022,15484,0,8640,12,0,49152,3105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32,32768,0,0,0,8640,12,0,0,0,0,0,0,0,0,49152,3105,0,0,8640,12,0,49152,3105,0,0,8640,12,0,49152,3105,0,0,8640,12,0,49152,3105,0,0,8640,12,0,0,32,0,0,8640,12,0,32768,0,0,0,16384,0,0,0,64,0,0,16384,0,0,49152,3105,0,0,16384,0,0,0,64,0,0,16384,0,0,0,64,0,0,8640,12,0,49152,3105,0,0,8640,12,0,0,0,0,0,25024,12,0,0,0,0,0,0,0,0,0,64,0,0,16384,0,0,49152,3105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,32768,64,0,0,16384,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parseList","Prog","SExp","Ident","Atom","Lambda","Args","IdList","Bool","Number","String","Expr","OpStmt","OpKeyword","IOStmt","CondStmt","PredStmt","ProcStmt","SExpList","Defin","integer","id","string","plus","minus","multi","divid","lparen","rparen","define","if","else","true","false","cond","gt","lt","quote","quotesym","dot","'Null\\?'","'Pair\\?'","'Atom\\?'","'Number\\?'","'Eq\\?'","cons","car","cdr","read","write","display","lambda","'\\'\\(\\)'","%eof"]
        bit_start = st Prelude.* 56
        bit_end = (st Prelude.+ 1) Prelude.* 56
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..55]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (23) = happyShift action_15
action_0 (24) = happyShift action_16
action_0 (25) = happyShift action_17
action_0 (30) = happyShift action_23
action_0 (35) = happyShift action_19
action_0 (36) = happyShift action_20
action_0 (4) = happyGoto action_21
action_0 (5) = happyGoto action_2
action_0 (6) = happyGoto action_3
action_0 (7) = happyGoto action_4
action_0 (8) = happyGoto action_5
action_0 (11) = happyGoto action_6
action_0 (12) = happyGoto action_7
action_0 (13) = happyGoto action_8
action_0 (14) = happyGoto action_9
action_0 (15) = happyGoto action_10
action_0 (17) = happyGoto action_11
action_0 (18) = happyGoto action_12
action_0 (19) = happyGoto action_13
action_0 (20) = happyGoto action_14
action_0 (22) = happyGoto action_22
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (23) = happyShift action_15
action_1 (24) = happyShift action_16
action_1 (25) = happyShift action_17
action_1 (30) = happyShift action_18
action_1 (35) = happyShift action_19
action_1 (36) = happyShift action_20
action_1 (5) = happyGoto action_2
action_1 (6) = happyGoto action_3
action_1 (7) = happyGoto action_4
action_1 (8) = happyGoto action_5
action_1 (11) = happyGoto action_6
action_1 (12) = happyGoto action_7
action_1 (13) = happyGoto action_8
action_1 (14) = happyGoto action_9
action_1 (15) = happyGoto action_10
action_1 (17) = happyGoto action_11
action_1 (18) = happyGoto action_12
action_1 (19) = happyGoto action_13
action_1 (20) = happyGoto action_14
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 _ = happyReduce_4

action_4 _ = happyReduce_5

action_5 _ = happyReduce_10

action_6 _ = happyReduce_7

action_7 _ = happyReduce_8

action_8 _ = happyReduce_9

action_9 _ = happyReduce_3

action_10 _ = happyReduce_19

action_11 _ = happyReduce_20

action_12 _ = happyReduce_21

action_13 _ = happyReduce_22

action_14 _ = happyReduce_23

action_15 _ = happyReduce_17

action_16 _ = happyReduce_6

action_17 _ = happyReduce_18

action_18 (26) = happyShift action_26
action_18 (27) = happyShift action_27
action_18 (28) = happyShift action_28
action_18 (29) = happyShift action_29
action_18 (30) = happyShift action_30
action_18 (33) = happyShift action_32
action_18 (38) = happyShift action_33
action_18 (39) = happyShift action_34
action_18 (43) = happyShift action_35
action_18 (44) = happyShift action_36
action_18 (45) = happyShift action_37
action_18 (46) = happyShift action_38
action_18 (47) = happyShift action_39
action_18 (51) = happyShift action_40
action_18 (52) = happyShift action_41
action_18 (53) = happyShift action_42
action_18 (54) = happyShift action_43
action_18 (8) = happyGoto action_24
action_18 (16) = happyGoto action_25
action_18 _ = happyFail (happyExpListPerState 18)

action_19 _ = happyReduce_15

action_20 _ = happyReduce_16

action_21 (56) = happyAccept
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_2

action_23 (26) = happyShift action_26
action_23 (27) = happyShift action_27
action_23 (28) = happyShift action_28
action_23 (29) = happyShift action_29
action_23 (30) = happyShift action_30
action_23 (32) = happyShift action_31
action_23 (33) = happyShift action_32
action_23 (38) = happyShift action_33
action_23 (39) = happyShift action_34
action_23 (43) = happyShift action_35
action_23 (44) = happyShift action_36
action_23 (45) = happyShift action_37
action_23 (46) = happyShift action_38
action_23 (47) = happyShift action_39
action_23 (51) = happyShift action_40
action_23 (52) = happyShift action_41
action_23 (53) = happyShift action_42
action_23 (54) = happyShift action_43
action_23 (8) = happyGoto action_24
action_23 (16) = happyGoto action_25
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (23) = happyShift action_15
action_24 (24) = happyShift action_16
action_24 (25) = happyShift action_17
action_24 (30) = happyShift action_18
action_24 (35) = happyShift action_19
action_24 (36) = happyShift action_20
action_24 (5) = happyGoto action_57
action_24 (6) = happyGoto action_3
action_24 (7) = happyGoto action_4
action_24 (8) = happyGoto action_5
action_24 (11) = happyGoto action_6
action_24 (12) = happyGoto action_7
action_24 (13) = happyGoto action_8
action_24 (14) = happyGoto action_9
action_24 (15) = happyGoto action_10
action_24 (17) = happyGoto action_11
action_24 (18) = happyGoto action_12
action_24 (19) = happyGoto action_13
action_24 (20) = happyGoto action_14
action_24 (21) = happyGoto action_58
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (23) = happyShift action_15
action_25 (24) = happyShift action_16
action_25 (25) = happyShift action_17
action_25 (30) = happyShift action_18
action_25 (35) = happyShift action_19
action_25 (36) = happyShift action_20
action_25 (5) = happyGoto action_56
action_25 (6) = happyGoto action_3
action_25 (7) = happyGoto action_4
action_25 (8) = happyGoto action_5
action_25 (11) = happyGoto action_6
action_25 (12) = happyGoto action_7
action_25 (13) = happyGoto action_8
action_25 (14) = happyGoto action_9
action_25 (15) = happyGoto action_10
action_25 (17) = happyGoto action_11
action_25 (18) = happyGoto action_12
action_25 (19) = happyGoto action_13
action_25 (20) = happyGoto action_14
action_25 _ = happyFail (happyExpListPerState 25)

action_26 _ = happyReduce_25

action_27 _ = happyReduce_26

action_28 _ = happyReduce_27

action_29 _ = happyReduce_28

action_30 (54) = happyShift action_43
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (24) = happyShift action_16
action_31 (6) = happyGoto action_55
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (23) = happyShift action_15
action_32 (24) = happyShift action_16
action_32 (25) = happyShift action_17
action_32 (30) = happyShift action_18
action_32 (35) = happyShift action_19
action_32 (36) = happyShift action_20
action_32 (5) = happyGoto action_54
action_32 (6) = happyGoto action_3
action_32 (7) = happyGoto action_4
action_32 (8) = happyGoto action_5
action_32 (11) = happyGoto action_6
action_32 (12) = happyGoto action_7
action_32 (13) = happyGoto action_8
action_32 (14) = happyGoto action_9
action_32 (15) = happyGoto action_10
action_32 (17) = happyGoto action_11
action_32 (18) = happyGoto action_12
action_32 (19) = happyGoto action_13
action_32 (20) = happyGoto action_14
action_32 _ = happyFail (happyExpListPerState 32)

action_33 _ = happyReduce_29

action_34 _ = happyReduce_30

action_35 (23) = happyShift action_15
action_35 (24) = happyShift action_16
action_35 (25) = happyShift action_17
action_35 (30) = happyShift action_18
action_35 (35) = happyShift action_19
action_35 (36) = happyShift action_20
action_35 (5) = happyGoto action_53
action_35 (6) = happyGoto action_3
action_35 (7) = happyGoto action_4
action_35 (8) = happyGoto action_5
action_35 (11) = happyGoto action_6
action_35 (12) = happyGoto action_7
action_35 (13) = happyGoto action_8
action_35 (14) = happyGoto action_9
action_35 (15) = happyGoto action_10
action_35 (17) = happyGoto action_11
action_35 (18) = happyGoto action_12
action_35 (19) = happyGoto action_13
action_35 (20) = happyGoto action_14
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (23) = happyShift action_15
action_36 (24) = happyShift action_16
action_36 (25) = happyShift action_17
action_36 (30) = happyShift action_18
action_36 (35) = happyShift action_19
action_36 (36) = happyShift action_20
action_36 (5) = happyGoto action_52
action_36 (6) = happyGoto action_3
action_36 (7) = happyGoto action_4
action_36 (8) = happyGoto action_5
action_36 (11) = happyGoto action_6
action_36 (12) = happyGoto action_7
action_36 (13) = happyGoto action_8
action_36 (14) = happyGoto action_9
action_36 (15) = happyGoto action_10
action_36 (17) = happyGoto action_11
action_36 (18) = happyGoto action_12
action_36 (19) = happyGoto action_13
action_36 (20) = happyGoto action_14
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (23) = happyShift action_15
action_37 (24) = happyShift action_16
action_37 (25) = happyShift action_17
action_37 (30) = happyShift action_18
action_37 (35) = happyShift action_19
action_37 (36) = happyShift action_20
action_37 (5) = happyGoto action_51
action_37 (6) = happyGoto action_3
action_37 (7) = happyGoto action_4
action_37 (8) = happyGoto action_5
action_37 (11) = happyGoto action_6
action_37 (12) = happyGoto action_7
action_37 (13) = happyGoto action_8
action_37 (14) = happyGoto action_9
action_37 (15) = happyGoto action_10
action_37 (17) = happyGoto action_11
action_37 (18) = happyGoto action_12
action_37 (19) = happyGoto action_13
action_37 (20) = happyGoto action_14
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (23) = happyShift action_15
action_38 (24) = happyShift action_16
action_38 (25) = happyShift action_17
action_38 (30) = happyShift action_18
action_38 (35) = happyShift action_19
action_38 (36) = happyShift action_20
action_38 (5) = happyGoto action_50
action_38 (6) = happyGoto action_3
action_38 (7) = happyGoto action_4
action_38 (8) = happyGoto action_5
action_38 (11) = happyGoto action_6
action_38 (12) = happyGoto action_7
action_38 (13) = happyGoto action_8
action_38 (14) = happyGoto action_9
action_38 (15) = happyGoto action_10
action_38 (17) = happyGoto action_11
action_38 (18) = happyGoto action_12
action_38 (19) = happyGoto action_13
action_38 (20) = happyGoto action_14
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (23) = happyShift action_15
action_39 (24) = happyShift action_16
action_39 (25) = happyShift action_17
action_39 (30) = happyShift action_18
action_39 (35) = happyShift action_19
action_39 (36) = happyShift action_20
action_39 (5) = happyGoto action_49
action_39 (6) = happyGoto action_3
action_39 (7) = happyGoto action_4
action_39 (8) = happyGoto action_5
action_39 (11) = happyGoto action_6
action_39 (12) = happyGoto action_7
action_39 (13) = happyGoto action_8
action_39 (14) = happyGoto action_9
action_39 (15) = happyGoto action_10
action_39 (17) = happyGoto action_11
action_39 (18) = happyGoto action_12
action_39 (19) = happyGoto action_13
action_39 (20) = happyGoto action_14
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (23) = happyShift action_15
action_40 (24) = happyShift action_16
action_40 (25) = happyShift action_17
action_40 (30) = happyShift action_18
action_40 (35) = happyShift action_19
action_40 (36) = happyShift action_20
action_40 (5) = happyGoto action_48
action_40 (6) = happyGoto action_3
action_40 (7) = happyGoto action_4
action_40 (8) = happyGoto action_5
action_40 (11) = happyGoto action_6
action_40 (12) = happyGoto action_7
action_40 (13) = happyGoto action_8
action_40 (14) = happyGoto action_9
action_40 (15) = happyGoto action_10
action_40 (17) = happyGoto action_11
action_40 (18) = happyGoto action_12
action_40 (19) = happyGoto action_13
action_40 (20) = happyGoto action_14
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (23) = happyShift action_15
action_41 (24) = happyShift action_16
action_41 (25) = happyShift action_17
action_41 (30) = happyShift action_18
action_41 (35) = happyShift action_19
action_41 (36) = happyShift action_20
action_41 (5) = happyGoto action_47
action_41 (6) = happyGoto action_3
action_41 (7) = happyGoto action_4
action_41 (8) = happyGoto action_5
action_41 (11) = happyGoto action_6
action_41 (12) = happyGoto action_7
action_41 (13) = happyGoto action_8
action_41 (14) = happyGoto action_9
action_41 (15) = happyGoto action_10
action_41 (17) = happyGoto action_11
action_41 (18) = happyGoto action_12
action_41 (19) = happyGoto action_13
action_41 (20) = happyGoto action_14
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (23) = happyShift action_15
action_42 (24) = happyShift action_16
action_42 (25) = happyShift action_17
action_42 (30) = happyShift action_18
action_42 (35) = happyShift action_19
action_42 (36) = happyShift action_20
action_42 (5) = happyGoto action_46
action_42 (6) = happyGoto action_3
action_42 (7) = happyGoto action_4
action_42 (8) = happyGoto action_5
action_42 (11) = happyGoto action_6
action_42 (12) = happyGoto action_7
action_42 (13) = happyGoto action_8
action_42 (14) = happyGoto action_9
action_42 (15) = happyGoto action_10
action_42 (17) = happyGoto action_11
action_42 (18) = happyGoto action_12
action_42 (19) = happyGoto action_13
action_42 (20) = happyGoto action_14
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (30) = happyShift action_45
action_43 (9) = happyGoto action_44
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (23) = happyShift action_15
action_44 (24) = happyShift action_16
action_44 (25) = happyShift action_17
action_44 (30) = happyShift action_18
action_44 (35) = happyShift action_19
action_44 (36) = happyShift action_20
action_44 (5) = happyGoto action_74
action_44 (6) = happyGoto action_3
action_44 (7) = happyGoto action_4
action_44 (8) = happyGoto action_5
action_44 (11) = happyGoto action_6
action_44 (12) = happyGoto action_7
action_44 (13) = happyGoto action_8
action_44 (14) = happyGoto action_9
action_44 (15) = happyGoto action_10
action_44 (17) = happyGoto action_11
action_44 (18) = happyGoto action_12
action_44 (19) = happyGoto action_13
action_44 (20) = happyGoto action_14
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (24) = happyShift action_16
action_45 (6) = happyGoto action_72
action_45 (10) = happyGoto action_73
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (31) = happyShift action_71
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (31) = happyShift action_70
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (31) = happyShift action_69
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (23) = happyShift action_15
action_49 (24) = happyShift action_16
action_49 (25) = happyShift action_17
action_49 (30) = happyShift action_18
action_49 (35) = happyShift action_19
action_49 (36) = happyShift action_20
action_49 (5) = happyGoto action_68
action_49 (6) = happyGoto action_3
action_49 (7) = happyGoto action_4
action_49 (8) = happyGoto action_5
action_49 (11) = happyGoto action_6
action_49 (12) = happyGoto action_7
action_49 (13) = happyGoto action_8
action_49 (14) = happyGoto action_9
action_49 (15) = happyGoto action_10
action_49 (17) = happyGoto action_11
action_49 (18) = happyGoto action_12
action_49 (19) = happyGoto action_13
action_49 (20) = happyGoto action_14
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (31) = happyShift action_67
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (31) = happyShift action_66
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (31) = happyShift action_65
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (31) = happyShift action_64
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (23) = happyShift action_15
action_54 (24) = happyShift action_16
action_54 (25) = happyShift action_17
action_54 (30) = happyShift action_18
action_54 (35) = happyShift action_19
action_54 (36) = happyShift action_20
action_54 (5) = happyGoto action_63
action_54 (6) = happyGoto action_3
action_54 (7) = happyGoto action_4
action_54 (8) = happyGoto action_5
action_54 (11) = happyGoto action_6
action_54 (12) = happyGoto action_7
action_54 (13) = happyGoto action_8
action_54 (14) = happyGoto action_9
action_54 (15) = happyGoto action_10
action_54 (17) = happyGoto action_11
action_54 (18) = happyGoto action_12
action_54 (19) = happyGoto action_13
action_54 (20) = happyGoto action_14
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (23) = happyShift action_15
action_55 (24) = happyShift action_16
action_55 (25) = happyShift action_17
action_55 (30) = happyShift action_18
action_55 (35) = happyShift action_19
action_55 (36) = happyShift action_20
action_55 (5) = happyGoto action_62
action_55 (6) = happyGoto action_3
action_55 (7) = happyGoto action_4
action_55 (8) = happyGoto action_5
action_55 (11) = happyGoto action_6
action_55 (12) = happyGoto action_7
action_55 (13) = happyGoto action_8
action_55 (14) = happyGoto action_9
action_55 (15) = happyGoto action_10
action_55 (17) = happyGoto action_11
action_55 (18) = happyGoto action_12
action_55 (19) = happyGoto action_13
action_55 (20) = happyGoto action_14
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (23) = happyShift action_15
action_56 (24) = happyShift action_16
action_56 (25) = happyShift action_17
action_56 (30) = happyShift action_18
action_56 (35) = happyShift action_19
action_56 (36) = happyShift action_20
action_56 (5) = happyGoto action_61
action_56 (6) = happyGoto action_3
action_56 (7) = happyGoto action_4
action_56 (8) = happyGoto action_5
action_56 (11) = happyGoto action_6
action_56 (12) = happyGoto action_7
action_56 (13) = happyGoto action_8
action_56 (14) = happyGoto action_9
action_56 (15) = happyGoto action_10
action_56 (17) = happyGoto action_11
action_56 (18) = happyGoto action_12
action_56 (19) = happyGoto action_13
action_56 (20) = happyGoto action_14
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_42

action_58 (23) = happyShift action_15
action_58 (24) = happyShift action_16
action_58 (25) = happyShift action_17
action_58 (30) = happyShift action_18
action_58 (31) = happyShift action_60
action_58 (35) = happyShift action_19
action_58 (36) = happyShift action_20
action_58 (5) = happyGoto action_59
action_58 (6) = happyGoto action_3
action_58 (7) = happyGoto action_4
action_58 (8) = happyGoto action_5
action_58 (11) = happyGoto action_6
action_58 (12) = happyGoto action_7
action_58 (13) = happyGoto action_8
action_58 (14) = happyGoto action_9
action_58 (15) = happyGoto action_10
action_58 (17) = happyGoto action_11
action_58 (18) = happyGoto action_12
action_58 (19) = happyGoto action_13
action_58 (20) = happyGoto action_14
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_41

action_60 _ = happyReduce_40

action_61 (31) = happyShift action_81
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (31) = happyShift action_80
action_62 _ = happyFail (happyExpListPerState 62)

action_63 (23) = happyShift action_15
action_63 (24) = happyShift action_16
action_63 (25) = happyShift action_17
action_63 (30) = happyShift action_18
action_63 (35) = happyShift action_19
action_63 (36) = happyShift action_20
action_63 (5) = happyGoto action_79
action_63 (6) = happyGoto action_3
action_63 (7) = happyGoto action_4
action_63 (8) = happyGoto action_5
action_63 (11) = happyGoto action_6
action_63 (12) = happyGoto action_7
action_63 (13) = happyGoto action_8
action_63 (14) = happyGoto action_9
action_63 (15) = happyGoto action_10
action_63 (17) = happyGoto action_11
action_63 (18) = happyGoto action_12
action_63 (19) = happyGoto action_13
action_63 (20) = happyGoto action_14
action_63 _ = happyFail (happyExpListPerState 63)

action_64 _ = happyReduce_35

action_65 _ = happyReduce_36

action_66 _ = happyReduce_37

action_67 _ = happyReduce_38

action_68 (31) = happyShift action_78
action_68 _ = happyFail (happyExpListPerState 68)

action_69 _ = happyReduce_31

action_70 _ = happyReduce_32

action_71 _ = happyReduce_33

action_72 _ = happyReduce_14

action_73 (24) = happyShift action_16
action_73 (31) = happyShift action_77
action_73 (6) = happyGoto action_76
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (31) = happyShift action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_11

action_76 _ = happyReduce_13

action_77 _ = happyReduce_12

action_78 _ = happyReduce_39

action_79 (31) = happyShift action_82
action_79 _ = happyFail (happyExpListPerState 79)

action_80 _ = happyReduce_43

action_81 _ = happyReduce_24

action_82 _ = happyReduce_34

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (SExp' happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 (HappyAbsSyn22  happy_var_1)
	 =  HappyAbsSyn4
		 (Def' happy_var_1
	)
happyReduction_2 _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_1  5 happyReduction_3
happyReduction_3 (HappyAbsSyn14  happy_var_1)
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
happyReduction_7 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn7
		 (AtomBool' happy_var_1
	)
happyReduction_7 _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn7
		 (AtomInt' happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_1  7 happyReduction_9
happyReduction_9 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn7
		 (AtomStr' happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happyReduce 5 8 happyReduction_11
happyReduction_11 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Lambda' happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_12 = happySpecReduce_3  9 happyReduction_12
happyReduction_12 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (happy_var_2
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  10 happyReduction_13
happyReduction_13 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_2:happy_var_1
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_1  10 happyReduction_14
happyReduction_14 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_14 _  = notHappyAtAll 

happyReduce_15 = happySpecReduce_1  11 happyReduction_15
happyReduction_15 _
	 =  HappyAbsSyn11
		 (True
	)

happyReduce_16 = happySpecReduce_1  11 happyReduction_16
happyReduction_16 _
	 =  HappyAbsSyn11
		 (False
	)

happyReduce_17 = happySpecReduce_1  12 happyReduction_17
happyReduction_17 (HappyTerminal (T_Int happy_var_1))
	 =  HappyAbsSyn12
		 (happy_var_1
	)
happyReduction_17 _  = notHappyAtAll 

happyReduce_18 = happySpecReduce_1  13 happyReduction_18
happyReduction_18 (HappyTerminal (T_Str happy_var_1))
	 =  HappyAbsSyn13
		 (happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  14 happyReduction_19
happyReduction_19 (HappyAbsSyn15  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  14 happyReduction_20
happyReduction_20 (HappyAbsSyn17  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  14 happyReduction_21
happyReduction_21 (HappyAbsSyn18  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_1  14 happyReduction_22
happyReduction_22 (HappyAbsSyn19  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  14 happyReduction_23
happyReduction_23 (HappyAbsSyn20  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happyReduce 5 15 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	(HappyAbsSyn16  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn15
		 (Bi' happy_var_2 happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_25 = happySpecReduce_1  16 happyReduction_25
happyReduction_25 _
	 =  HappyAbsSyn16
		 (Plus'
	)

happyReduce_26 = happySpecReduce_1  16 happyReduction_26
happyReduction_26 _
	 =  HappyAbsSyn16
		 (Minus'
	)

happyReduce_27 = happySpecReduce_1  16 happyReduction_27
happyReduction_27 _
	 =  HappyAbsSyn16
		 (Multiply'
	)

happyReduce_28 = happySpecReduce_1  16 happyReduction_28
happyReduction_28 _
	 =  HappyAbsSyn16
		 (Devide'
	)

happyReduce_29 = happySpecReduce_1  16 happyReduction_29
happyReduction_29 _
	 =  HappyAbsSyn16
		 (Greater'
	)

happyReduce_30 = happySpecReduce_1  16 happyReduction_30
happyReduction_30 _
	 =  HappyAbsSyn16
		 (Lessthan'
	)

happyReduce_31 = happyReduce 4 17 happyReduction_31
happyReduction_31 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Uni' Read' happy_var_3
	) `HappyStk` happyRest

happyReduce_32 = happyReduce 4 17 happyReduction_32
happyReduction_32 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Uni' Write' happy_var_3
	) `HappyStk` happyRest

happyReduce_33 = happyReduce 4 17 happyReduction_33
happyReduction_33 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn17
		 (Uni' Display' happy_var_3
	) `HappyStk` happyRest

happyReduce_34 = happyReduce 6 18 happyReduction_34
happyReduction_34 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_5) `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn18
		 (If' happy_var_3 happy_var_4 happy_var_5
	) `HappyStk` happyRest

happyReduce_35 = happyReduce 4 19 happyReduction_35
happyReduction_35 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Uni' Null' happy_var_3
	) `HappyStk` happyRest

happyReduce_36 = happyReduce 4 19 happyReduction_36
happyReduction_36 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Uni' Pair' happy_var_3
	) `HappyStk` happyRest

happyReduce_37 = happyReduce 4 19 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Uni' AtomC' happy_var_3
	) `HappyStk` happyRest

happyReduce_38 = happyReduce 4 19 happyReduction_38
happyReduction_38 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Uni' Number' happy_var_3
	) `HappyStk` happyRest

happyReduce_39 = happyReduce 5 19 happyReduction_39
happyReduction_39 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn5  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn19
		 (Bi' Eq' happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyReduce_40 = happyReduce 4 20 happyReduction_40
happyReduction_40 (_ `HappyStk`
	(HappyAbsSyn21  happy_var_3) `HappyStk`
	(HappyAbsSyn8  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn20
		 (Proc' happy_var_2 happy_var_3
	) `HappyStk` happyRest

happyReduce_41 = happySpecReduce_2  21 happyReduction_41
happyReduction_41 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn21  happy_var_1)
	 =  HappyAbsSyn21
		 (happy_var_2:happy_var_1
	)
happyReduction_41 _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_1  21 happyReduction_42
happyReduction_42 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn21
		 ([happy_var_1]
	)
happyReduction_42 _  = notHappyAtAll 

happyReduce_43 = happyReduce 5 22 happyReduction_43
happyReduction_43 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	(HappyAbsSyn6  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn22
		 (Bind' happy_var_3 happy_var_4
	) `HappyStk` happyRest

happyNewToken action sts stk [] =
	action 56 56 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	T_Int happy_dollar_dollar -> cont 23;
	T_Id happy_dollar_dollar -> cont 24;
	T_Str happy_dollar_dollar -> cont 25;
	T_Plus -> cont 26;
	T_Minus -> cont 27;
	T_Multi -> cont 28;
	T_Divid -> cont 29;
	T_LParen -> cont 30;
	T_RParen -> cont 31;
	T_Define -> cont 32;
	T_If -> cont 33;
	T_Else -> cont 34;
	T_True -> cont 35;
	T_False -> cont 36;
	T_Cond -> cont 37;
	T_GT -> cont 38;
	T_LT -> cont 39;
	T_Quote -> cont 40;
	T_QuoteSym -> cont 41;
	T_Dot -> cont 42;
	T_Null -> cont 43;
	T_Pair -> cont 44;
	T_Atom -> cont 45;
	T_Number -> cont 46;
	T_Eq -> cont 47;
	T_Cons -> cont 48;
	T_Car -> cont 49;
	T_Cdr -> cont 50;
	T_Read -> cont 51;
	T_Write -> cont 52;
	T_Display -> cont 53;
	T_Lambda -> cont 54;
	T_EmptyL -> cont 55;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 56 tk tks = happyError' (tks, explist)
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
