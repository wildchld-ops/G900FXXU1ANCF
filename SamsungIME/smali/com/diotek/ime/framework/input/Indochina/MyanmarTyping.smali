.class public Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;
.super Ljava/lang/Object;
.source "MyanmarTyping.java"


# static fields
.field private static final BASIC_CONSONANTS:Ljava/lang/String; = "1000,1001,1002,1004,1005,1006,1007,100a,1010,1011,1012,1014,1015,1016,1017,1019,101a101b,101c,101d,101e,1086,101f,1021"

.field private static final COMBINING_MARKS:Ljava/lang/String; = "1036,1037,1038,1064"

.field private static final COMPOUND_VOWEL:Ljava/lang/String; = ""

.field private static final CONSONAL_CAN_COMBINE_WITH103B:Ljava/lang/String; = "1001,1002,1004,1005,1007,100e,1012,1013,1015,1016,1017,101d,1019"

.field private static final CONSONAL_CAN_COMBINE_WITH103B_TO107E:Ljava/lang/String; = "1000,1003,1006,100f,1010,1011,1018,101a,101c,101e,101f,1021"

.field private static final DOUBLE_HEIGHT_CONSONANTS:Ljava/lang/String; = "1069,106c,106d,106e,106f,1091,1097,100d"

.field private static final DOUBLE_HEIGHT_CONSONANTS_3_33:Ljava/lang/String; = "1008,100a,100b,100c,100d"

.field private static final DOUBLE_WIDTH_CONSONANTS:Ljava/lang/String; = "1060,1063,1066,1067,1070,1071,1072,1073,1074,107b,1093,1090,1085"

.field private static final INDEPENDENT_VOWEL:Ljava/lang/String; = "1023,1024,1025,1026,1027,1029,102a"

.field private static final MEDIAL_CONSONANTS:Ljava/lang/String; = "103a,103b,103c,103d"

.field private static final OTHER_CONSONANTS:Ljava/lang/String; = "1003,1008,1009,100b,100c,100d,100e,100f,1013,1018,1021"

.field private static final SINGLE_WITH_CONSONANTS:Ljava/lang/String; = "1061,1062,1065,1068,1075,1076,108f,1077,1078,1079,107a,107c,1090"

.field private static final STACKED_CONSONANTS:Ljava/lang/String; = "1060,1061,1062,1063,1065,1067,1066,1068,1069,106c,1097,106d,106e,106f,1091,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,107a,107b,1093,107c,1085"

.field private static final VOWEL_DOWN:Ljava/lang/String; = "103c,108a"

.field private static final VOWEL_SIGNS:Ljava/lang/String; = "102c,102b,102d,102e,102f,1030,1031,1032"

.field private static final VOWEL_SIGNS_DOWN:Ljava/lang/String; = "102f,1030,103a,103c,103d,108a,1088"

.field private static final VOWEL_SIGNS_UP:Ljava/lang/String; = "102d,102e,108b,108c,108d,108e,1032,1036,1039,1064"

.field private static final VOWEL_UP:Ljava/lang/String; = "102d,102e,1064,108b,108c,108d,108e"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineMyanmarWithPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/16 v9, 0x1004

    const/16 v8, 0x108f

    const/16 v7, 0x103b

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {p1, v1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->inputStack(II)I

    move-result v0

    const/16 v4, 0x1097

    if-eq v0, v4, :cond_0

    const/16 v4, 0x106e

    if-eq v0, v4, :cond_0

    const/16 v4, 0x106f

    if-eq v0, v4, :cond_0

    const/16 v4, 0x1091

    if-ne v0, v4, :cond_2

    :cond_0
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move p1, v0

    :cond_1
    :goto_0
    return p1

    :cond_2
    const/16 v4, 0x106a

    if-ne v0, v4, :cond_6

    const/16 v4, 0x1005

    if-lt p1, v4, :cond_6

    const/16 v4, 0x1008

    if-gt p1, v4, :cond_6

    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    int-to-char v4, v0

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 v4, 0x1005

    if-ne p1, v4, :cond_3

    const/16 p1, 0x1065

    goto :goto_0

    :cond_3
    const/16 v4, 0x1006

    if-ne p1, v4, :cond_4

    const/16 p1, 0x1067

    goto :goto_0

    :cond_4
    const/16 v4, 0x1007

    if-ne p1, v4, :cond_5

    const/16 p1, 0x1068

    goto :goto_0

    :cond_5
    const/16 v4, 0x1008

    if-ne p1, v4, :cond_1

    const/16 p1, 0x1069

    goto :goto_0

    :cond_6
    if-eq v0, v8, :cond_7

    const/16 v4, 0x1090

    if-ne v0, v4, :cond_8

    :cond_7
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    int-to-char v4, v0

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto :goto_0

    :cond_8
    if-ne p1, v7, :cond_9

    const/16 v4, 0x1019

    if-ne v1, v4, :cond_9

    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v4, 0x107f

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    move p1, v1

    goto :goto_0

    :cond_9
    if-ne p1, v7, :cond_b

    const/16 v4, 0x1001

    if-eq v1, v4, :cond_a

    const/16 v4, 0x1002

    if-eq v1, v4, :cond_a

    const/16 v4, 0x1015

    if-eq v1, v4, :cond_a

    const/16 v4, 0x1016

    if-eq v1, v4, :cond_a

    const/16 v4, 0x1017

    if-eq v1, v4, :cond_a

    const/16 v4, 0x1019

    if-eq v1, v4, :cond_a

    if-ne v1, v9, :cond_b

    :cond_a
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    int-to-char v4, p1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    move p1, v1

    goto :goto_0

    :cond_b
    if-ne p1, v7, :cond_d

    const/16 v4, 0x1000

    if-eq v1, v4, :cond_c

    const/16 v4, 0x1010

    if-ne v1, v4, :cond_d

    :cond_c
    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v4, 0x107e

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    move p1, v1

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x1039

    if-ne p1, v4, :cond_e

    const/16 v4, 0x102b

    if-ne v1, v4, :cond_e

    const/16 v4, 0x105a

    if-ne v0, v4, :cond_e

    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move p1, v0

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0x102d

    if-ne p1, v4, :cond_f

    const/16 v4, 0x1015

    if-ne v1, v4, :cond_f

    const v4, 0x2073a

    if-ne v2, v4, :cond_f

    const/4 v4, 0x2

    invoke-interface {p0, v4, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v4, 0x107f

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    int-to-char v4, v1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_0

    :cond_f
    if-ne p1, v1, :cond_10

    const/16 v4, 0x101e

    if-ne p1, v4, :cond_10

    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x1086

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0x100c

    if-ne p1, v4, :cond_11

    const/16 v4, 0x100b

    if-ne v1, v4, :cond_11

    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x1092

    goto/16 :goto_0

    :cond_11
    const/16 v4, 0x103d

    if-ne p1, v4, :cond_12

    if-ne v1, v9, :cond_12

    const v4, 0x20729

    if-ne v2, v4, :cond_12

    const/16 p1, 0x1087

    goto/16 :goto_0

    :cond_12
    const/16 v4, 0x1010

    if-lt p1, v4, :cond_13

    const/16 v4, 0x1013

    if-gt p1, v4, :cond_13

    const/16 v4, 0x1014

    if-ne v1, v4, :cond_13

    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    move p1, v0

    goto/16 :goto_0

    :cond_13
    if-ne p1, v1, :cond_14

    const/16 v4, 0x1014

    if-ne p1, v4, :cond_14

    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v8}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    move p1, v0

    goto/16 :goto_0

    :cond_14
    move p1, v0

    goto/16 :goto_0
.end method

.method private static combineMyanmarWithoutPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/16 v6, 0x103d

    const/4 v10, 0x1

    const/16 v9, 0x102f

    const/4 v8, 0x0

    const/16 v7, 0x1030

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {p1, v5}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->inputStack(II)I

    move-result v0

    const/16 v5, 0x1014

    if-eq v2, v5, :cond_0

    const/16 v5, 0x1014

    if-ne v3, v5, :cond_3

    :cond_0
    invoke-static {p1}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignDown(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x1014

    if-ne v2, v5, :cond_2

    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x108f

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_1
    :goto_0
    return p1

    :cond_2
    const/16 v5, 0x1014

    if-ne v3, v5, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x108f

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/16 v5, 0x103b

    if-ne v2, v5, :cond_4

    const/16 v5, 0x101e

    if-ne p1, v5, :cond_4

    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x1029

    goto :goto_0

    :cond_4
    const/16 v5, 0x1001

    if-eq v2, v5, :cond_5

    const/16 v5, 0x1002

    if-eq v2, v5, :cond_5

    const/16 v5, 0x1004

    if-eq v2, v5, :cond_5

    const/16 v5, 0x1012

    if-eq v2, v5, :cond_5

    const/16 v5, 0x1015

    if-eq v2, v5, :cond_5

    const/16 v5, 0x101d

    if-ne v2, v5, :cond_6

    :cond_5
    const/16 v5, 0x102c

    if-ne p1, v5, :cond_6

    const/16 v5, 0x103b

    if-eq v3, v5, :cond_6

    const/16 p1, 0x102b

    goto :goto_0

    :cond_6
    const/16 v5, 0x102d

    if-ne p1, v5, :cond_7

    const/16 v5, 0x1064

    if-ne v2, v5, :cond_7

    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x108b

    goto :goto_0

    :cond_7
    const/16 v5, 0x102e

    if-ne p1, v5, :cond_8

    const/16 v5, 0x1064

    if-ne v2, v5, :cond_8

    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x108c

    goto :goto_0

    :cond_8
    if-eq p1, v7, :cond_9

    if-ne p1, v9, :cond_e

    :cond_9
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_a
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v5

    if-eqz v5, :cond_c

    if-ne p1, v7, :cond_b

    const/16 p1, 0x1034

    goto :goto_0

    :cond_b
    const/16 p1, 0x1033

    goto/16 :goto_0

    :cond_c
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isDoubleHeightConsonant_3_33(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne p1, v7, :cond_d

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_d
    const/16 p1, 0x1033

    goto/16 :goto_0

    :cond_e
    if-eq p1, v9, :cond_f

    if-ne p1, v7, :cond_14

    :cond_f
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_10
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-eqz v5, :cond_12

    if-ne p1, v9, :cond_11

    const/16 p1, 0x1033

    goto/16 :goto_0

    :cond_11
    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_12
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne p1, v9, :cond_13

    const/16 p1, 0x1033

    goto/16 :goto_0

    :cond_13
    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_14
    if-eq p1, v7, :cond_15

    if-ne p1, v9, :cond_1a

    :cond_15
    const/16 v5, 0x103a

    if-eq v2, v5, :cond_16

    const/16 v5, 0x103a

    if-ne v3, v5, :cond_1a

    :cond_16
    const/16 v5, 0x103a

    if-ne v2, v5, :cond_18

    if-ne p1, v7, :cond_17

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_17
    const/16 p1, 0x1033

    goto/16 :goto_0

    :cond_18
    const/16 v5, 0x103a

    if-ne v3, v5, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne p1, v7, :cond_19

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_19
    const/16 p1, 0x1033

    goto/16 :goto_0

    :cond_1a
    if-eq p1, v7, :cond_1b

    if-ne p1, v9, :cond_20

    :cond_1b
    const/16 v5, 0x103b

    if-eq v3, v5, :cond_1c

    const/16 v5, 0x107f

    if-ne v4, v5, :cond_20

    :cond_1c
    const/16 v5, 0x103b

    if-ne v3, v5, :cond_1e

    if-ne p1, v7, :cond_1d

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_1d
    const/16 p1, 0x1033

    goto/16 :goto_0

    :cond_1e
    const/16 v5, 0x107f

    if-ne v4, v5, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne p1, v7, :cond_1f

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_1f
    const/16 p1, 0x1033

    goto/16 :goto_0

    :cond_20
    if-ne p1, v7, :cond_22

    if-ne v2, v6, :cond_22

    const/16 v5, 0x1014

    if-eq v3, v5, :cond_21

    const/16 v5, 0x1019

    if-eq v3, v5, :cond_21

    const/16 v5, 0x101b

    if-eq v3, v5, :cond_21

    const/16 v5, 0x101c

    if-ne v3, v5, :cond_22

    :cond_21
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x1089

    goto/16 :goto_0

    :cond_22
    const/16 v5, 0x1036

    if-ne p1, v5, :cond_23

    const/16 v5, 0x1064

    if-ne v2, v5, :cond_23

    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x108d

    goto/16 :goto_0

    :cond_23
    const/16 v5, 0x1036

    if-ne p1, v5, :cond_24

    const/16 v5, 0x102d

    if-ne v2, v5, :cond_24

    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x108e

    goto/16 :goto_0

    :cond_24
    const/16 v5, 0x1037

    if-ne p1, v5, :cond_28

    if-eq v2, v9, :cond_27

    if-eq v2, v7, :cond_27

    const/16 v5, 0x1014

    if-eq v2, v5, :cond_27

    if-eq v3, v9, :cond_25

    if-eq v3, v7, :cond_25

    const/16 v5, 0x1014

    if-eq v3, v5, :cond_25

    if-ne v3, v6, :cond_26

    :cond_25
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-nez v5, :cond_27

    :cond_26
    if-ne v2, v6, :cond_28

    :cond_27
    const/16 p1, 0x1094

    goto/16 :goto_0

    :cond_28
    const/16 v5, 0x1037

    if-ne p1, v5, :cond_2b

    const/16 v5, 0x101b

    if-eq v2, v5, :cond_2a

    const/16 v5, 0x1033

    if-eq v2, v5, :cond_2a

    const/16 v5, 0x103c

    if-eq v2, v5, :cond_2a

    const/16 v5, 0x101b

    if-eq v3, v5, :cond_29

    const/16 v5, 0x1033

    if-eq v3, v5, :cond_29

    const/16 v5, 0x103c

    if-ne v3, v5, :cond_2b

    :cond_29
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    :cond_2a
    const/16 p1, 0x1095

    goto/16 :goto_0

    :cond_2b
    const/16 v5, 0x1039

    if-ne p1, v5, :cond_2d

    const/16 v5, 0x102b

    if-ne v2, v5, :cond_2d

    const/16 v5, 0x1001

    if-eq v3, v5, :cond_2c

    const/16 v5, 0x1002

    if-eq v3, v5, :cond_2c

    const/16 v5, 0x1004

    if-eq v3, v5, :cond_2c

    const/16 v5, 0x1012

    if-eq v3, v5, :cond_2c

    const/16 v5, 0x1015

    if-eq v3, v5, :cond_2c

    const/16 v5, 0x101d

    if-ne v3, v5, :cond_2d

    :cond_2c
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x105a

    goto/16 :goto_0

    :cond_2d
    invoke-static {p1}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_2e

    const/16 v5, 0x103b

    if-ne v2, v5, :cond_2e

    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x107e

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_0

    :cond_2e
    const/16 v5, 0x102d

    if-eq p1, v5, :cond_2f

    const/16 v5, 0x108b

    if-eq p1, v5, :cond_2f

    const/16 v5, 0x102e

    if-eq p1, v5, :cond_2f

    const/16 v5, 0x108c

    if-eq p1, v5, :cond_2f

    const/16 v5, 0x1064

    if-eq p1, v5, :cond_2f

    const/16 v5, 0x108d

    if-ne p1, v5, :cond_30

    :cond_2f
    const/16 v5, 0x103b

    if-ne v3, v5, :cond_30

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_30

    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x107f

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_30
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_32

    const/16 v5, 0x107e

    if-ne v3, v5, :cond_32

    const/16 v5, 0x102d

    if-eq p1, v5, :cond_31

    const/16 v5, 0x108b

    if-eq p1, v5, :cond_31

    const/16 v5, 0x102e

    if-eq p1, v5, :cond_31

    const/16 v5, 0x108c

    if-eq p1, v5, :cond_31

    const/16 v5, 0x1064

    if-eq p1, v5, :cond_31

    const/16 v5, 0x108d

    if-ne p1, v5, :cond_32

    :cond_31
    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x1080

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_32
    const/16 v5, 0x103c

    if-eq p1, v5, :cond_33

    const/16 v5, 0x108a

    if-ne p1, v5, :cond_34

    :cond_33
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_34

    const/16 v5, 0x103b

    if-ne v3, v5, :cond_34

    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x1081

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_34
    const/16 v5, 0x103c

    if-eq p1, v5, :cond_35

    const/16 v5, 0x108a

    if-ne p1, v5, :cond_36

    :cond_35
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_36

    const/16 v5, 0x107f

    if-ne v4, v5, :cond_36

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-eqz v5, :cond_36

    const/4 v5, 0x3

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x1083

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_36
    const/16 v5, 0x102d

    if-eq p1, v5, :cond_37

    const/16 v5, 0x108b

    if-eq p1, v5, :cond_37

    const/16 v5, 0x102e

    if-eq p1, v5, :cond_37

    const/16 v5, 0x108c

    if-eq p1, v5, :cond_37

    const/16 v5, 0x1064

    if-eq p1, v5, :cond_37

    const/16 v5, 0x108d

    if-ne p1, v5, :cond_38

    :cond_37
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_38

    const/16 v5, 0x1082

    if-ne v4, v5, :cond_38

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_38

    const/4 v5, 0x3

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x1084

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_38
    const/16 v5, 0x102d

    if-eq p1, v5, :cond_39

    const/16 v5, 0x108b

    if-eq p1, v5, :cond_39

    const/16 v5, 0x102e

    if-eq p1, v5, :cond_39

    const/16 v5, 0x108c

    if-eq p1, v5, :cond_39

    const/16 v5, 0x1064

    if-eq p1, v5, :cond_39

    const/16 v5, 0x108d

    if-ne p1, v5, :cond_3a

    :cond_39
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    const/16 v5, 0x1081

    if-ne v4, v5, :cond_3a

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_3a

    const/4 v5, 0x3

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x1083

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3a
    const/16 v5, 0x103c

    if-eq p1, v5, :cond_3b

    const/16 v5, 0x108a

    if-ne p1, v5, :cond_3f

    :cond_3b
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_3c

    const/16 v5, 0x107e

    if-eq v3, v5, :cond_3d

    :cond_3c
    const/16 v5, 0x1029

    if-ne v2, v5, :cond_3f

    :cond_3d
    const/16 v5, 0x1029

    if-eq v2, v5, :cond_3e

    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x1082

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3e
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x1082

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 v5, 0x101e

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_0

    :cond_3f
    const/16 v5, 0x103c

    if-ne p1, v5, :cond_40

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_40

    const/16 v5, 0x1080

    if-ne v4, v5, :cond_40

    const/4 v5, 0x3

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v5, 0x1084

    invoke-static {v5}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {p3}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_40
    if-ne p1, v6, :cond_42

    const/16 v5, 0x100a

    if-eq v2, v5, :cond_41

    const/16 v5, 0x100a

    if-ne v3, v5, :cond_42

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_42

    :cond_41
    const/16 p1, 0x1087

    goto/16 :goto_0

    :cond_42
    if-ne p1, v6, :cond_47

    const/16 v5, 0x1004

    if-eq v2, v5, :cond_43

    const/16 v5, 0x1019

    if-ne v2, v5, :cond_44

    :cond_43
    const/16 v5, 0x103b

    if-eq v3, v5, :cond_46

    :cond_44
    const/16 v5, 0x1004

    if-eq v3, v5, :cond_45

    const/16 v5, 0x1019

    if-ne v3, v5, :cond_47

    :cond_45
    const/16 v5, 0x103b

    if-ne v4, v5, :cond_47

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_47

    :cond_46
    const/16 p1, 0x1087

    goto/16 :goto_0

    :cond_47
    if-ne p1, v6, :cond_4c

    const/16 v5, 0x103c

    if-ne v2, v5, :cond_48

    const/16 v5, 0x108f

    if-eq v3, v5, :cond_4a

    const/16 v5, 0x1019

    if-eq v3, v5, :cond_4a

    const/16 v5, 0x101b

    if-eq v3, v5, :cond_4a

    const/16 v5, 0x101c

    if-eq v3, v5, :cond_4a

    :cond_48
    const/16 v5, 0x103c

    if-ne v3, v5, :cond_4c

    const/16 v5, 0x108f

    if-eq v4, v5, :cond_49

    const/16 v5, 0x1019

    if-eq v4, v5, :cond_49

    const/16 v5, 0x101b

    if-eq v4, v5, :cond_49

    const/16 v5, 0x101c

    if-ne v4, v5, :cond_4c

    :cond_49
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_4c

    :cond_4a
    const/16 v5, 0x103c

    if-ne v2, v5, :cond_4b

    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x108a

    goto/16 :goto_0

    :cond_4b
    const/16 v5, 0x103c

    if-ne v3, v5, :cond_1

    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    const/16 p1, 0x108a

    goto/16 :goto_0

    :cond_4c
    if-ne p1, v7, :cond_51

    if-ne v2, v6, :cond_4d

    const/16 v5, 0x108f

    if-eq v3, v5, :cond_4f

    const/16 v5, 0x1019

    if-eq v3, v5, :cond_4f

    const/16 v5, 0x101b

    if-eq v3, v5, :cond_4f

    const/16 v5, 0x101c

    if-eq v3, v5, :cond_4f

    :cond_4d
    if-ne v3, v6, :cond_51

    const/16 v5, 0x108f

    if-eq v4, v5, :cond_4e

    const/16 v5, 0x1019

    if-eq v4, v5, :cond_4e

    const/16 v5, 0x101b

    if-eq v4, v5, :cond_4e

    const/16 v5, 0x101c

    if-ne v4, v5, :cond_51

    :cond_4e
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_51

    :cond_4f
    if-ne v2, v6, :cond_50

    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x1089

    goto/16 :goto_0

    :cond_50
    if-ne v3, v6, :cond_1

    const/4 v5, 0x2

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {p2}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    const/16 p1, 0x1089

    goto/16 :goto_0

    :cond_51
    if-eq p1, v9, :cond_52

    if-ne p1, v7, :cond_57

    :cond_52
    invoke-static {v4}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-nez v5, :cond_54

    :cond_53
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-eqz v5, :cond_57

    :cond_54
    const/4 v5, 0x4

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_56

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x1083

    if-ne v5, v6, :cond_1

    if-ne p1, v9, :cond_55

    const/16 p1, 0x1033

    :cond_55
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_56
    const-string v1, ""

    goto :goto_1

    :cond_57
    if-eq p1, v9, :cond_58

    if-ne p1, v7, :cond_5d

    :cond_58
    invoke-static {v4}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-nez v5, :cond_5a

    :cond_59
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-eqz v5, :cond_5d

    :cond_5a
    const/4 v5, 0x4

    invoke-interface {p0, v5, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5c

    invoke-virtual {v1, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x1084

    if-ne v5, v6, :cond_1

    if-ne p1, v9, :cond_5b

    const/16 p1, 0x1033

    :cond_5b
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_5c
    const-string v1, ""

    goto :goto_2

    :cond_5d
    if-eq p1, v9, :cond_5e

    if-ne p1, v7, :cond_60

    :cond_5e
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_60

    const/16 v5, 0x1081

    if-ne v4, v5, :cond_60

    if-ne p1, v9, :cond_5f

    const/16 p1, 0x1033

    :cond_5f
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_60
    if-eq p1, v9, :cond_61

    if-ne p1, v7, :cond_63

    :cond_61
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_63

    const/16 v5, 0x1082

    if-ne v4, v5, :cond_63

    if-ne p1, v9, :cond_62

    const/16 p1, 0x1033

    :cond_62
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_63
    if-eq p1, v9, :cond_64

    if-ne p1, v7, :cond_66

    :cond_64
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_66

    const/16 v5, 0x107e

    if-ne v3, v5, :cond_66

    if-ne p1, v9, :cond_65

    const/16 p1, 0x1033

    :cond_65
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_66
    if-eq p1, v9, :cond_67

    if-ne p1, v7, :cond_69

    :cond_67
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelUp(I)Z

    move-result v5

    if-eqz v5, :cond_69

    const/16 v5, 0x1080

    if-ne v4, v5, :cond_69

    if-ne p1, v9, :cond_68

    const/16 p1, 0x1033

    :cond_68
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_69
    if-eq p1, v9, :cond_6a

    if-ne p1, v7, :cond_6c

    :cond_6a
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelDown(I)Z

    move-result v5

    if-eqz v5, :cond_6c

    const/16 v5, 0x1082

    if-ne v4, v5, :cond_6c

    if-ne p1, v9, :cond_6b

    const/16 p1, 0x1033

    :cond_6b
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_6c
    if-eq p1, v9, :cond_6d

    if-ne p1, v7, :cond_6f

    :cond_6d
    const/16 v5, 0x1029

    if-ne v2, v5, :cond_6f

    if-ne p1, v9, :cond_6e

    const/16 p1, 0x1033

    :cond_6e
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_6f
    if-ne p1, v9, :cond_71

    if-ne v2, v6, :cond_71

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v5

    if-nez v5, :cond_70

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isOtherConsonal(I)Z

    move-result v5

    if-nez v5, :cond_70

    const/16 v5, 0x108f

    if-ne v3, v5, :cond_71

    :cond_70
    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x1088

    goto/16 :goto_0

    :cond_71
    if-eq p1, v9, :cond_72

    if-ne p1, v7, :cond_76

    :cond_72
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103B(I)Z

    move-result v5

    if-eqz v5, :cond_73

    const/16 v5, 0x103b

    if-eq v4, v5, :cond_74

    :cond_73
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isConsonalCanCombile103BTo107E(I)Z

    move-result v5

    if-eqz v5, :cond_76

    const/16 v5, 0x107e

    if-ne v4, v5, :cond_76

    :cond_74
    if-ne p1, v9, :cond_75

    const/16 p1, 0x1033

    :cond_75
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_76
    if-eq p1, v9, :cond_77

    if-ne p1, v7, :cond_79

    :cond_77
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isVowelSignsUp(I)Z

    move-result v5

    if-eqz v5, :cond_79

    const/16 v5, 0x1029

    if-ne v3, v5, :cond_79

    if-ne p1, v9, :cond_78

    const/16 p1, 0x1033

    :cond_78
    if-ne p1, v7, :cond_1

    const/16 p1, 0x1034

    goto/16 :goto_0

    :cond_79
    const/16 v5, 0x102c

    if-ne p1, v5, :cond_7b

    const/16 v5, 0x1001

    if-eq v3, v5, :cond_7a

    const/16 v5, 0x1002

    if-eq v3, v5, :cond_7a

    const/16 v5, 0x1004

    if-eq v3, v5, :cond_7a

    const/16 v5, 0x1012

    if-eq v3, v5, :cond_7a

    const/16 v5, 0x1015

    if-eq v3, v5, :cond_7a

    const/16 v5, 0x101d

    if-ne v3, v5, :cond_7b

    :cond_7a
    invoke-static {v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-eqz v5, :cond_7b

    const/16 v5, 0x103b

    if-eq v4, v5, :cond_7b

    const/16 p1, 0x102b

    goto/16 :goto_0

    :cond_7b
    const/16 v5, 0x1039

    if-ne p1, v5, :cond_7d

    const/16 v5, 0x102b

    if-ne v2, v5, :cond_7d

    const/16 v5, 0x1001

    if-eq v4, v5, :cond_7c

    const/16 v5, 0x1002

    if-eq v4, v5, :cond_7c

    const/16 v5, 0x1004

    if-eq v4, v5, :cond_7c

    const/16 v5, 0x1012

    if-eq v4, v5, :cond_7c

    const/16 v5, 0x1015

    if-eq v4, v5, :cond_7c

    const/16 v5, 0x101d

    if-ne v4, v5, :cond_7d

    :cond_7c
    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isStackedConsonants(I)Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x105a

    goto/16 :goto_0

    :cond_7d
    if-ne p1, v6, :cond_7e

    const/16 v5, 0x103c

    if-ne v2, v5, :cond_7e

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {p0, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 p1, 0x108a

    goto/16 :goto_0

    :cond_7e
    const/16 v5, 0x1037

    if-ne p1, v5, :cond_7f

    const/16 v5, 0x108a

    if-ne v2, v5, :cond_7f

    invoke-static {v3}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v5

    if-eqz v5, :cond_7f

    const/16 p1, 0x1095

    goto/16 :goto_0

    :cond_7f
    const/16 v5, 0x1037

    if-ne p1, v5, :cond_1

    const/16 v5, 0x1036

    if-ne v2, v5, :cond_1

    const/16 v5, 0x103a

    if-ne v3, v5, :cond_1

    invoke-static {v4}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->isBasicConsonal(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 p1, 0x1095

    goto/16 :goto_0
.end method

.method public static getMyanmarCode(Landroid/view/inputmethod/InputConnection;I)I
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-interface {p0, v7, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_2

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {p0, v8, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_3

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {p1, v4}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->adjustZawgyiPosition(II)I

    move-result v3

    const/16 v4, 0x107d

    if-ne v3, v4, :cond_4

    invoke-interface {p0, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    int-to-char v4, v3

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManager;->append(C)V

    :goto_2
    sget-boolean v4, Lcom/diotek/ime/framework/input/AbstractInputModule;->IS_PLUS_MYANMAR:Z

    if-eqz v4, :cond_5

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiChar(I)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p0, p1, v0, v1, v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->combineMyanmarWithPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    :cond_1
    :goto_3
    return p1

    :cond_2
    const-string v1, ""

    goto :goto_0

    :cond_3
    const-string v2, ""

    goto :goto_1

    :cond_4
    move p1, v3

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isZawgyiChar(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0, p1, v0, v1, v2}, Lcom/diotek/ime/framework/input/Indochina/MyanmarTyping;->combineMyanmarWithoutPlusKey(Landroid/view/inputmethod/InputConnection;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_3
.end method

.method private static isBasicConsonal(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1000,1001,1002,1004,1005,1006,1007,100a,1010,1011,1012,1014,1015,1016,1017,1019,101a101b,101c,101d,101e,1086,101f,1021"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isConsonalCanCombile103B(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1001,1002,1004,1005,1007,100e,1012,1013,1015,1016,1017,101d,1019"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isConsonalCanCombile103BTo107E(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1000,1003,1006,100f,1010,1011,1018,101a,101c,101e,101f,1021"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDoubleHeightConsonant(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1069,106c,106d,106e,106f,1091,1097,100d"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDoubleHeightConsonant_3_33(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1008,100a,100b,100c,100d"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isDoubleWidthConsonant(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1060,1063,1066,1067,1070,1071,1072,1073,1074,107b,1093,1090,1085"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isOtherConsonal(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1003,1008,1009,100b,100c,100d,100e,100f,1013,1018,1021"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSingleWithConsonant(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1061,1062,1065,1068,1075,1076,108f,1077,1078,1079,107a,107c,1090"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isStackedConsonants(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1060,1061,1062,1063,1065,1067,1066,1068,1069,106c,1097,106d,106e,106f,1091,1070,1071,1072,1073,1074,1075,1076,1077,1078,1079,107a,107b,1093,107c,1085"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelDown(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "103c,108a"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelSignDown(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "102f,1030,103a,103c,103d,108a,1088"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelSignsUp(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "102d,102e,108b,108c,108d,108e,1032,1036,1039,1064"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isVowelUp(I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "102d,102e,1064,108b,108c,108d,108e"

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
