.class Landroidx/core/text/util/FindAddress;
.super Ljava/lang/Object;
.source "FindAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/util/FindAddress$ZipRange;
    }
.end annotation


# static fields
.field private static final HOUSE_COMPONENT:Ljava/lang/String; = "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)"

.field private static final HOUSE_END:Ljava/lang/String; = "(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final HOUSE_POST_DELIM:Ljava/lang/String; = ",\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final HOUSE_PRE_DELIM:Ljava/lang/String; = ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final MAX_ADDRESS_LINES:I = 0x5

.field private static final MAX_ADDRESS_WORDS:I = 0xe

.field private static final MAX_LOCATION_NAME_DISTANCE:I = 0x5

.field private static final MIN_ADDRESS_WORDS:I = 0x4

.field private static final NL:Ljava/lang/String; = "\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final SP:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000"

.field private static final WORD_DELIM:Ljava/lang/String; = ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final WORD_END:Ljava/lang/String; = "(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

.field private static final WS:Ljava/lang/String; = "\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

.field private static final kMaxAddressNameWordLength:I = 0x19

.field private static final sHouseNumberRe:Ljava/util/regex/Pattern;

.field private static final sLocationNameRe:Ljava/util/regex/Pattern;

.field private static final sStateRe:Ljava/util/regex/Pattern;

.field private static final sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

.field private static final sSuffixedNumberRe:Ljava/util/regex/Pattern;

.field private static final sWordRe:Ljava/util/regex/Pattern;

.field private static final sZipCodeRe:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    #@0
    const/16 v0, 0x3b

    #@2
    new-array v0, v0, [Landroidx/core/text/util/FindAddress$ZipRange;

    #@4
    .line 72
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@6
    const/16 v2, 0x63

    #@8
    const/4 v3, -0x1

    #@9
    invoke-direct {v1, v2, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@c
    const/4 v4, 0x0

    #@d
    aput-object v1, v0, v4

    #@f
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@11
    const/16 v5, 0x23

    #@13
    const/16 v6, 0x24

    #@15
    invoke-direct {v1, v5, v6, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@18
    const/4 v5, 0x1

    #@19
    aput-object v1, v0, v5

    #@1b
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@1d
    const/16 v6, 0x47

    #@1f
    const/16 v7, 0x48

    #@21
    invoke-direct {v1, v6, v7, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@24
    const/4 v6, 0x2

    #@25
    aput-object v1, v0, v6

    #@27
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@29
    const/16 v7, 0x60

    #@2b
    invoke-direct {v1, v7, v7, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@2e
    const/4 v8, 0x3

    #@2f
    aput-object v1, v0, v8

    #@31
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@33
    const/16 v9, 0x55

    #@35
    const/16 v10, 0x56

    #@37
    invoke-direct {v1, v9, v10, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@3a
    const/4 v9, 0x4

    #@3b
    aput-object v1, v0, v9

    #@3d
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@3f
    const/16 v10, 0x5a

    #@41
    invoke-direct {v1, v10, v7, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@44
    const/4 v10, 0x5

    #@45
    aput-object v1, v0, v10

    #@47
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@49
    const/16 v11, 0x50

    #@4b
    const/16 v12, 0x51

    #@4d
    invoke-direct {v1, v11, v12, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@50
    const/4 v11, 0x6

    #@51
    aput-object v1, v0, v11

    #@53
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@55
    invoke-direct {v1, v11, v11, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@58
    const/4 v12, 0x7

    #@59
    aput-object v1, v0, v12

    #@5b
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@5d
    const/16 v12, 0x14

    #@5f
    invoke-direct {v1, v12, v12, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@62
    const/16 v13, 0x8

    #@64
    aput-object v1, v0, v13

    #@66
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@68
    const/16 v13, 0x13

    #@6a
    invoke-direct {v1, v13, v13, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@6d
    const/16 v14, 0x9

    #@6f
    aput-object v1, v0, v14

    #@71
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@73
    const/16 v15, 0x20

    #@75
    const/16 v2, 0x22

    #@77
    invoke-direct {v1, v15, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@7a
    const/16 v2, 0xa

    #@7c
    aput-object v1, v0, v2

    #@7e
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@80
    invoke-direct {v1, v7, v7, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@83
    const/16 v2, 0xb

    #@85
    aput-object v1, v0, v2

    #@87
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@89
    const/16 v2, 0x1e

    #@8b
    const/16 v15, 0x1f

    #@8d
    invoke-direct {v1, v2, v15, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@90
    const/16 v2, 0xc

    #@92
    aput-object v1, v0, v2

    #@94
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@96
    invoke-direct {v1, v7, v7, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@99
    const/16 v2, 0xd

    #@9b
    aput-object v1, v0, v2

    #@9d
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@9f
    invoke-direct {v1, v7, v7, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@a2
    const/16 v2, 0xe

    #@a4
    aput-object v1, v0, v2

    #@a6
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@a8
    const/16 v2, 0x32

    #@aa
    const/16 v15, 0x34

    #@ac
    invoke-direct {v1, v2, v15, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@af
    const/16 v2, 0xf

    #@b1
    aput-object v1, v0, v2

    #@b3
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@b5
    const/16 v2, 0x53

    #@b7
    invoke-direct {v1, v2, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@ba
    const/16 v15, 0x10

    #@bc
    aput-object v1, v0, v15

    #@be
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@c0
    const/16 v15, 0x3c

    #@c2
    const/16 v2, 0x3e

    #@c4
    invoke-direct {v1, v15, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@c7
    const/16 v2, 0x11

    #@c9
    aput-object v1, v0, v2

    #@cb
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@cd
    const/16 v2, 0x2e

    #@cf
    const/16 v15, 0x2f

    #@d1
    invoke-direct {v1, v2, v15, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@d4
    const/16 v2, 0x12

    #@d6
    aput-object v1, v0, v2

    #@d8
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@da
    const/16 v2, 0x43

    #@dc
    const/16 v15, 0x49

    #@de
    const/16 v10, 0x42

    #@e0
    invoke-direct {v1, v10, v2, v15, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@e3
    aput-object v1, v0, v13

    #@e5
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@e7
    const/16 v2, 0x28

    #@e9
    const/16 v10, 0x2a

    #@eb
    invoke-direct {v1, v2, v10, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@ee
    aput-object v1, v0, v12

    #@f0
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@f2
    const/16 v2, 0x46

    #@f4
    const/16 v10, 0x47

    #@f6
    invoke-direct {v1, v2, v10, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@f9
    const/16 v2, 0x15

    #@fb
    aput-object v1, v0, v2

    #@fd
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@ff
    invoke-direct {v1, v5, v6, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@102
    const/16 v2, 0x16

    #@104
    aput-object v1, v0, v2

    #@106
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@108
    const/16 v2, 0x15

    #@10a
    invoke-direct {v1, v12, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@10d
    const/16 v2, 0x17

    #@10f
    aput-object v1, v0, v2

    #@111
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@113
    invoke-direct {v1, v8, v9, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@116
    const/16 v2, 0x18

    #@118
    aput-object v1, v0, v2

    #@11a
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@11c
    invoke-direct {v1, v7, v7, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@11f
    const/16 v5, 0x19

    #@121
    aput-object v1, v0, v5

    #@123
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@125
    const/16 v5, 0x30

    #@127
    const/16 v10, 0x31

    #@129
    invoke-direct {v1, v5, v10, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@12c
    const/16 v5, 0x1a

    #@12e
    aput-object v1, v0, v5

    #@130
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@132
    const/16 v5, 0x37

    #@134
    const/16 v10, 0x38

    #@136
    invoke-direct {v1, v5, v10, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@139
    const/16 v15, 0x1b

    #@13b
    aput-object v1, v0, v15

    #@13d
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@13f
    const/16 v15, 0x3f

    #@141
    const/16 v2, 0x41

    #@143
    invoke-direct {v1, v15, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@146
    const/16 v2, 0x1c

    #@148
    aput-object v1, v0, v2

    #@14a
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@14c
    invoke-direct {v1, v7, v7, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@14f
    const/16 v2, 0x1d

    #@151
    aput-object v1, v0, v2

    #@153
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@155
    const/16 v15, 0x27

    #@157
    const/16 v12, 0x26

    #@159
    invoke-direct {v1, v12, v15, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@15c
    const/16 v15, 0x1e

    #@15e
    aput-object v1, v0, v15

    #@160
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@162
    invoke-direct {v1, v5, v10, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@165
    const/16 v15, 0x1f

    #@167
    aput-object v1, v0, v15

    #@169
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@16b
    const/16 v15, 0x1b

    #@16d
    const/16 v10, 0x1c

    #@16f
    invoke-direct {v1, v15, v10, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@172
    const/16 v10, 0x20

    #@174
    aput-object v1, v0, v10

    #@176
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@178
    const/16 v10, 0x3a

    #@17a
    invoke-direct {v1, v10, v10, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@17d
    const/16 v15, 0x21

    #@17f
    aput-object v1, v0, v15

    #@181
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@183
    const/16 v15, 0x44

    #@185
    const/16 v10, 0x45

    #@187
    invoke-direct {v1, v15, v10, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@18a
    const/16 v10, 0x22

    #@18c
    aput-object v1, v0, v10

    #@18e
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@190
    invoke-direct {v1, v8, v9, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@193
    const/16 v8, 0x23

    #@195
    aput-object v1, v0, v8

    #@197
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@199
    const/4 v8, 0x7

    #@19a
    const/16 v9, 0x8

    #@19c
    invoke-direct {v1, v8, v9, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@19f
    const/16 v8, 0x24

    #@1a1
    aput-object v1, v0, v8

    #@1a3
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@1a5
    const/16 v8, 0x56

    #@1a7
    const/16 v9, 0x57

    #@1a9
    const/16 v10, 0x58

    #@1ab
    invoke-direct {v1, v9, v10, v8, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@1ae
    const/16 v8, 0x25

    #@1b0
    aput-object v1, v0, v8

    #@1b2
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@1b4
    const/16 v8, 0x59

    #@1b6
    invoke-direct {v1, v10, v8, v7, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@1b9
    aput-object v1, v0, v12

    #@1bb
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@1bd
    const/16 v8, 0xa

    #@1bf
    const/16 v9, 0xe

    #@1c1
    invoke-direct {v1, v8, v9, v4, v11}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@1c4
    const/16 v8, 0x27

    #@1c6
    aput-object v1, v0, v8

    #@1c8
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@1ca
    const/16 v8, 0x2b

    #@1cc
    const/16 v9, 0x2d

    #@1ce
    invoke-direct {v1, v8, v9, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@1d1
    const/16 v8, 0x28

    #@1d3
    aput-object v1, v0, v8

    #@1d5
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@1d7
    const/16 v8, 0x49

    #@1d9
    const/16 v9, 0x4a

    #@1db
    invoke-direct {v1, v8, v9, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@1de
    const/16 v8, 0x29

    #@1e0
    aput-object v1, v0, v8

    #@1e2
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@1e4
    const/16 v8, 0x61

    #@1e6
    const/16 v9, 0x61

    #@1e8
    invoke-direct {v1, v8, v9, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@1eb
    const/16 v8, 0x2a

    #@1ed
    aput-object v1, v0, v8

    #@1ef
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@1f1
    const/16 v8, 0xf

    #@1f3
    invoke-direct {v1, v8, v13, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@1f6
    const/16 v8, 0x2b

    #@1f8
    aput-object v1, v0, v8

    #@1fa
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@1fc
    invoke-direct {v1, v11, v11, v4, v14}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@1ff
    const/16 v4, 0x2c

    #@201
    aput-object v1, v0, v4

    #@203
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@205
    invoke-direct {v1, v7, v7, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@208
    const/16 v4, 0x2d

    #@20a
    aput-object v1, v0, v4

    #@20c
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@20e
    invoke-direct {v1, v6, v6, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@211
    const/16 v4, 0x2e

    #@213
    aput-object v1, v0, v4

    #@215
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@217
    invoke-direct {v1, v2, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@21a
    const/16 v2, 0x2f

    #@21c
    aput-object v1, v0, v2

    #@21e
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@220
    const/16 v2, 0x39

    #@222
    invoke-direct {v1, v2, v2, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@225
    const/16 v4, 0x30

    #@227
    aput-object v1, v0, v4

    #@229
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@22b
    const/16 v4, 0x25

    #@22d
    invoke-direct {v1, v4, v12, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@230
    const/16 v4, 0x31

    #@232
    aput-object v1, v0, v4

    #@234
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@236
    const/16 v4, 0x4f

    #@238
    const/16 v7, 0x57

    #@23a
    const/16 v8, 0x4b

    #@23c
    invoke-direct {v1, v8, v4, v7, v10}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@23f
    const/16 v4, 0x32

    #@241
    aput-object v1, v0, v4

    #@243
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@245
    const/16 v4, 0x54

    #@247
    const/16 v7, 0x54

    #@249
    invoke-direct {v1, v4, v7, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@24c
    const/16 v4, 0x33

    #@24e
    aput-object v1, v0, v4

    #@250
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@252
    const/16 v4, 0x16

    #@254
    const/16 v7, 0x14

    #@256
    const/16 v8, 0x18

    #@258
    invoke-direct {v1, v4, v8, v7, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@25b
    const/16 v4, 0x34

    #@25d
    aput-object v1, v0, v4

    #@25f
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@261
    invoke-direct {v1, v11, v14, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@264
    const/16 v4, 0x35

    #@266
    aput-object v1, v0, v4

    #@268
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@26a
    const/4 v4, 0x5

    #@26b
    invoke-direct {v1, v4, v4, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@26e
    const/16 v4, 0x36

    #@270
    aput-object v1, v0, v4

    #@272
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@274
    const/16 v4, 0x62

    #@276
    const/16 v7, 0x63

    #@278
    invoke-direct {v1, v4, v7, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@27b
    aput-object v1, v0, v5

    #@27d
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@27f
    const/16 v4, 0x35

    #@281
    const/16 v5, 0x36

    #@283
    invoke-direct {v1, v4, v5, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@286
    const/16 v4, 0x38

    #@288
    aput-object v1, v0, v4

    #@28a
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@28c
    const/16 v4, 0x1a

    #@28e
    const/16 v5, 0x18

    #@290
    invoke-direct {v1, v5, v4, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@293
    aput-object v1, v0, v2

    #@295
    new-instance v1, Landroidx/core/text/util/FindAddress$ZipRange;

    #@297
    const/16 v2, 0x52

    #@299
    const/16 v4, 0x53

    #@29b
    invoke-direct {v1, v2, v4, v3, v3}, Landroidx/core/text/util/FindAddress$ZipRange;-><init>(IIII)V

    #@29e
    const/16 v2, 0x3a

    #@2a0
    aput-object v1, v0, v2

    #@2a2
    sput-object v0, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    #@2a4
    const-string v0, "[^,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]+(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    #@2a6
    .line 153
    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@2a9
    move-result-object v0

    #@2aa
    sput-object v0, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    #@2ac
    const-string v0, "(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?)(?:-(?:one|[0-9]+([a-z](?=[^a-z]|$)|st|nd|rd|th)?))*(?=[,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    #@2ae
    .line 171
    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@2b1
    move-result-object v0

    #@2b2
    sput-object v0, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    #@2b4
    const-string v0, "(?:(ak|alaska)|(al|alabama)|(ar|arkansas)|(as|american[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+samoa)|(az|arizona)|(ca|california)|(co|colorado)|(ct|connecticut)|(dc|district[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+columbia)|(de|delaware)|(fl|florida)|(fm|federated[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+states[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+of[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+micronesia)|(ga|georgia)|(gu|guam)|(hi|hawaii)|(ia|iowa)|(id|idaho)|(il|illinois)|(in|indiana)|(ks|kansas)|(ky|kentucky)|(la|louisiana)|(ma|massachusetts)|(md|maryland)|(me|maine)|(mh|marshall[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(mi|michigan)|(mn|minnesota)|(mo|missouri)|(mp|northern[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mariana[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(ms|mississippi)|(mt|montana)|(nc|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(nd|north[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(ne|nebraska)|(nh|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+hampshire)|(nj|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+jersey)|(nm|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+mexico)|(nv|nevada)|(ny|new[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+york)|(oh|ohio)|(ok|oklahoma)|(or|oregon)|(pa|pennsylvania)|(pr|puerto[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+rico)|(pw|palau)|(ri|rhode[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+island)|(sc|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+carolina)|(sd|south[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+dakota)|(tn|tennessee)|(tx|texas)|(ut|utah)|(va|virginia)|(vi|virgin[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+islands)|(vt|vermont)|(wa|washington)|(wi|wisconsin)|(wv|west[\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000]+virginia)|(wy|wyoming))(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    #@2b6
    .line 175
    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@2b9
    move-result-object v0

    #@2ba
    sput-object v0, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    #@2bc
    const-string v0, "(?:alley|annex|arcade|ave[.]?|avenue|alameda|bayou|beach|bend|bluffs?|bottom|boulevard|branch|bridge|brooks?|burgs?|bypass|broadway|camino|camp|canyon|cape|causeway|centers?|circles?|cliffs?|club|common|corners?|course|courts?|coves?|creek|crescent|crest|crossing|crossroad|curve|circulo|dale|dam|divide|drives?|estates?|expressway|extensions?|falls?|ferry|fields?|flats?|fords?|forest|forges?|forks?|fort|freeway|gardens?|gateway|glens?|greens?|groves?|harbors?|haven|heights|highway|hills?|hollow|inlet|islands?|isle|junctions?|keys?|knolls?|lakes?|land|landing|lane|lights?|loaf|locks?|lodge|loop|mall|manors?|meadows?|mews|mills?|mission|motorway|mount|mountains?|neck|orchard|oval|overpass|parks?|parkways?|pass|passage|path|pike|pines?|plains?|plaza|points?|ports?|prairie|privada|radial|ramp|ranch|rapids?|rd[.]?|rest|ridges?|river|roads?|route|row|rue|run|shoals?|shores?|skyway|springs?|spurs?|squares?|station|stravenue|stream|st[.]?|streets?|summit|speedway|terrace|throughway|trace|track|trafficway|trail|tunnel|turnpike|underpass|unions?|valleys?|viaduct|views?|villages?|ville|vista|walks?|wall|ways?|wells?|xing|xrd)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    #@2be
    .line 238
    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@2c1
    move-result-object v0

    #@2c2
    sput-object v0, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    #@2c4
    const-string v0, "([0-9]+)(st|nd|rd|th)"

    #@2c6
    .line 265
    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@2c9
    move-result-object v0

    #@2ca
    sput-object v0, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    #@2cc
    const-string v0, "(?:[0-9]{5}(?:-[0-9]{4})?)(?=[,*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029]|$)"

    #@2ce
    .line 268
    invoke-static {v0, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@2d1
    move-result-object v0

    #@2d2
    sput-object v0, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    #@2d4
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I
    .registers 15

    #@0
    .line 403
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    #@3
    move-result p1

    #@4
    .line 410
    sget-object v0, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    #@6
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@9
    move-result-object v0

    #@a
    const/4 v1, -0x1

    #@b
    const/4 v2, 0x1

    #@c
    const/4 v3, 0x0

    #@d
    const-string v4, ""

    #@f
    move v9, v1

    #@10
    move v10, v9

    #@11
    move v5, v2

    #@12
    move v6, v5

    #@13
    move v7, v6

    #@14
    move v8, v3

    #@15
    .line 412
    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@18
    move-result v11

    #@19
    if-ge p1, v11, :cond_d5

    #@1b
    .line 413
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    #@1e
    move-result v11

    #@1f
    if-nez v11, :cond_27

    #@21
    .line 415
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@24
    move-result p0

    #@25
    :goto_25
    neg-int p0, p0

    #@26
    return p0

    #@27
    .line 417
    :cond_27
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@2a
    move-result v11

    #@2b
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    #@2e
    move-result v12

    #@2f
    sub-int/2addr v11, v12

    #@30
    const/16 v12, 0x19

    #@32
    if-le v11, v12, :cond_39

    #@34
    .line 419
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@37
    move-result p0

    #@38
    goto :goto_25

    #@39
    .line 423
    :cond_39
    :goto_39
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    #@3c
    move-result v11

    #@3d
    if-ge p1, v11, :cond_51

    #@3f
    add-int/lit8 v11, p1, 0x1

    #@41
    .line 424
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@44
    move-result p1

    #@45
    const-string v12, "\n\u000b\u000c\r\u0085\u2028\u2029"

    #@47
    invoke-virtual {v12, p1}, Ljava/lang/String;->indexOf(I)I

    #@4a
    move-result p1

    #@4b
    if-eq p1, v1, :cond_4f

    #@4d
    add-int/lit8 v5, v5, 0x1

    #@4f
    :cond_4f
    move p1, v11

    #@50
    goto :goto_39

    #@51
    :cond_51
    const/4 v11, 0x5

    #@52
    if-le v5, v11, :cond_56

    #@54
    goto/16 :goto_d5

    #@56
    :cond_56
    add-int/2addr v6, v2

    #@57
    const/16 v12, 0xe

    #@59
    if-le v6, v12, :cond_5d

    #@5b
    goto/16 :goto_d5

    #@5d
    .line 433
    :cond_5d
    invoke-static {p0, p1}, Landroidx/core/text/util/FindAddress;->matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    #@60
    move-result-object v12

    #@61
    if-eqz v12, :cond_6d

    #@63
    if-eqz v7, :cond_69

    #@65
    if-le v5, v2, :cond_69

    #@67
    neg-int p0, p1

    #@68
    return p0

    #@69
    :cond_69
    if-ne v9, v1, :cond_cb

    #@6b
    move v9, p1

    #@6c
    goto :goto_cb

    #@6d
    .line 446
    :cond_6d
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    invoke-static {v7}, Landroidx/core/text/util/FindAddress;->isValidLocationName(Ljava/lang/String;)Z

    #@74
    move-result v7

    #@75
    if-eqz v7, :cond_7a

    #@77
    move v8, v2

    #@78
    :cond_78
    :goto_78
    move v7, v3

    #@79
    goto :goto_cb

    #@7a
    :cond_7a
    if-ne v6, v11, :cond_83

    #@7c
    if-nez v8, :cond_83

    #@7e
    .line 453
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@81
    move-result p1

    #@82
    goto :goto_d5

    #@83
    :cond_83
    if-eqz v8, :cond_78

    #@85
    const/4 v7, 0x4

    #@86
    if-le v6, v7, :cond_78

    #@88
    .line 459
    invoke-static {p0, p1}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    #@8b
    move-result-object p1

    #@8c
    if-eqz p1, :cond_78

    #@8e
    const-string v7, "et"

    #@90
    .line 461
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@93
    move-result v4

    #@94
    if-eqz v4, :cond_a7

    #@96
    invoke-interface {p1, v3}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    #@99
    move-result-object v4

    #@9a
    const-string v7, "al"

    #@9c
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v4

    #@a0
    if-eqz v4, :cond_a7

    #@a2
    .line 463
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    #@a5
    move-result p1

    #@a6
    goto :goto_d5

    #@a7
    .line 468
    :cond_a7
    sget-object v4, Landroidx/core/text/util/FindAddress;->sWordRe:Ljava/util/regex/Pattern;

    #@a9
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@ac
    move-result-object v4

    #@ad
    .line 469
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    #@b0
    move-result v7

    #@b1
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->find(I)Z

    #@b4
    move-result v7

    #@b5
    if-eqz v7, :cond_c6

    #@b7
    .line 470
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@ba
    move-result-object v7

    #@bb
    invoke-static {v7, p1}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    #@be
    move-result p1

    #@bf
    if-eqz p1, :cond_78

    #@c1
    .line 471
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    #@c4
    move-result p0

    #@c5
    return p0

    #@c6
    .line 482
    :cond_c6
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->end()I

    #@c9
    move-result v10

    #@ca
    goto :goto_78

    #@cb
    .line 412
    :cond_cb
    :goto_cb
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@ce
    move-result-object v4

    #@cf
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@d2
    move-result p1

    #@d3
    goto/16 :goto_15

    #@d5
    :cond_d5
    :goto_d5
    if-lez v10, :cond_d8

    #@d7
    return v10

    #@d8
    :cond_d8
    if-lez v9, :cond_db

    #@da
    goto :goto_dc

    #@db
    :cond_db
    move v9, p1

    #@dc
    :goto_dc
    neg-int p0, v9

    #@dd
    return p0
.end method

.method private static checkHouseNumber(Ljava/lang/String;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    move v1, v0

    #@2
    move v2, v1

    #@3
    .line 273
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v3

    #@7
    if-ge v1, v3, :cond_18

    #@9
    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@c
    move-result v3

    #@d
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_15

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    :cond_15
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_3

    #@18
    :cond_18
    const/4 v1, 0x5

    #@19
    if-le v2, v1, :cond_1c

    #@1b
    return v0

    #@1c
    .line 279
    :cond_1c
    sget-object v1, Landroidx/core/text/util/FindAddress;->sSuffixedNumberRe:Ljava/util/regex/Pattern;

    #@1e
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@21
    move-result-object p0

    #@22
    .line 280
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    #@25
    move-result v1

    #@26
    const/4 v2, 0x1

    #@27
    if-eqz v1, :cond_7b

    #@29
    .line 281
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_34

    #@33
    return v0

    #@34
    :cond_34
    const/4 v0, 0x2

    #@35
    .line 285
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@38
    move-result-object p0

    #@39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@40
    move-result-object p0

    #@41
    .line 286
    rem-int/lit8 v3, v1, 0xa

    #@43
    const-string v4, "th"

    #@45
    if-eq v3, v2, :cond_6d

    #@47
    if-eq v3, v0, :cond_5f

    #@49
    const/4 v0, 0x3

    #@4a
    if-eq v3, v0, :cond_51

    #@4c
    .line 294
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result p0

    #@50
    return p0

    #@51
    .line 292
    :cond_51
    rem-int/lit8 v1, v1, 0x64

    #@53
    const/16 v0, 0xd

    #@55
    if-ne v1, v0, :cond_58

    #@57
    goto :goto_5a

    #@58
    :cond_58
    const-string v4, "rd"

    #@5a
    :goto_5a
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5d
    move-result p0

    #@5e
    return p0

    #@5f
    .line 290
    :cond_5f
    rem-int/lit8 v1, v1, 0x64

    #@61
    const/16 v0, 0xc

    #@63
    if-ne v1, v0, :cond_66

    #@65
    goto :goto_68

    #@66
    :cond_66
    const-string v4, "nd"

    #@68
    :goto_68
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result p0

    #@6c
    return p0

    #@6d
    .line 288
    :cond_6d
    rem-int/lit8 v1, v1, 0x64

    #@6f
    const/16 v0, 0xb

    #@71
    if-ne v1, v0, :cond_74

    #@73
    goto :goto_76

    #@74
    :cond_74
    const-string v4, "st"

    #@76
    :goto_76
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@79
    move-result p0

    #@7a
    return p0

    #@7b
    :cond_7b
    return v2
.end method

.method static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    #@0
    .line 500
    sget-object v0, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object v0

    #@6
    const/4 v1, 0x0

    #@7
    move v2, v1

    #@8
    .line 502
    :goto_8
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_2e

    #@e
    .line 503
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-static {v2}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_29

    #@18
    .line 504
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    #@1b
    move-result v2

    #@1c
    .line 505
    invoke-static {p0, v0}, Landroidx/core/text/util/FindAddress;->attemptMatch(Ljava/lang/String;Ljava/util/regex/MatchResult;)I

    #@1f
    move-result v3

    #@20
    if-lez v3, :cond_27

    #@22
    .line 507
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25
    move-result-object p0

    #@26
    return-object p0

    #@27
    :cond_27
    neg-int v2, v3

    #@28
    goto :goto_8

    #@29
    .line 511
    :cond_29
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    #@2c
    move-result v2

    #@2d
    goto :goto_8

    #@2e
    :cond_2e
    const/4 p0, 0x0

    #@2f
    return-object p0
.end method

.method public static isValidLocationName(Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 388
    sget-object v0, Landroidx/core/text/util/FindAddress;->sLocationNameRe:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object p0

    #@6
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result p0

    #@a
    return p0
.end method

.method public static isValidZipCode(Ljava/lang/String;)Z
    .registers 2

    #@0
    .line 377
    sget-object v0, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@5
    move-result-object p0

    #@6
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    #@9
    move-result p0

    #@a
    return p0
.end method

.method public static isValidZipCode(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 366
    invoke-static {p1, v0}, Landroidx/core/text/util/FindAddress;->matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    #@4
    move-result-object p1

    #@5
    invoke-static {p0, p1}, Landroidx/core/text/util/FindAddress;->isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z

    #@8
    move-result p0

    #@9
    return p0
.end method

.method private static isValidZipCode(Ljava/lang/String;Ljava/util/regex/MatchResult;)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 347
    :cond_4
    invoke-interface {p1}, Ljava/util/regex/MatchResult;->groupCount()I

    #@7
    move-result v1

    #@8
    :goto_8
    if-lez v1, :cond_16

    #@a
    add-int/lit8 v2, v1, -0x1

    #@c
    .line 349
    invoke-interface {p1, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    if-eqz v1, :cond_14

    #@12
    move v1, v2

    #@13
    goto :goto_16

    #@14
    :cond_14
    move v1, v2

    #@15
    goto :goto_8

    #@16
    .line 351
    :cond_16
    :goto_16
    sget-object p1, Landroidx/core/text/util/FindAddress;->sZipCodeRe:Ljava/util/regex/Pattern;

    #@18
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    #@1f
    move-result p1

    #@20
    if-eqz p1, :cond_2d

    #@22
    sget-object p1, Landroidx/core/text/util/FindAddress;->sStateZipCodeRanges:[Landroidx/core/text/util/FindAddress$ZipRange;

    #@24
    aget-object p1, p1, v1

    #@26
    .line 352
    invoke-virtual {p1, p0}, Landroidx/core/text/util/FindAddress$ZipRange;->matches(Ljava/lang/String;)Z

    #@29
    move-result p0

    #@2a
    if-eqz p0, :cond_2d

    #@2c
    const/4 v0, 0x1

    #@2d
    :cond_2d
    return v0
.end method

.method public static matchHouseNumber(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-lez p1, :cond_13

    #@3
    add-int/lit8 v1, p1, -0x1

    #@5
    .line 310
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v1

    #@9
    const-string v2, ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    #@b
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v1

    #@f
    const/4 v2, -0x1

    #@10
    if-ne v1, v2, :cond_13

    #@12
    return-object v0

    #@13
    .line 311
    :cond_13
    sget-object v1, Landroidx/core/text/util/FindAddress;->sHouseNumberRe:Ljava/util/regex/Pattern;

    #@15
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1c
    move-result p0

    #@1d
    invoke-virtual {v1, p1, p0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@20
    move-result-object p0

    #@21
    .line 312
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@24
    move-result p1

    #@25
    if-eqz p1, :cond_37

    #@27
    .line 313
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    #@2a
    move-result-object p0

    #@2b
    const/4 p1, 0x0

    #@2c
    .line 314
    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    #@2f
    move-result-object p1

    #@30
    invoke-static {p1}, Landroidx/core/text/util/FindAddress;->checkHouseNumber(Ljava/lang/String;)Z

    #@33
    move-result p1

    #@34
    if-eqz p1, :cond_37

    #@36
    return-object p0

    #@37
    :cond_37
    return-object v0
.end method

.method public static matchState(Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-lez p1, :cond_13

    #@3
    add-int/lit8 v1, p1, -0x1

    #@5
    .line 330
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    #@8
    move-result v1

    #@9
    const-string v2, ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    #@b
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v1

    #@f
    const/4 v2, -0x1

    #@10
    if-ne v1, v2, :cond_13

    #@12
    return-object v0

    #@13
    .line 331
    :cond_13
    sget-object v1, Landroidx/core/text/util/FindAddress;->sStateRe:Ljava/util/regex/Pattern;

    #@15
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@1c
    move-result p0

    #@1d
    invoke-virtual {v1, p1, p0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    #@20
    move-result-object p0

    #@21
    .line 332
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    #@24
    move-result p1

    #@25
    if-eqz p1, :cond_2b

    #@27
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    #@2a
    move-result-object v0

    #@2b
    :cond_2b
    return-object v0
.end method
