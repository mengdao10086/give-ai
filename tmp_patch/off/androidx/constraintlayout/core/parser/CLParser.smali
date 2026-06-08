.class public Landroidx/constraintlayout/core/parser/CLParser;
.super Ljava/lang/Object;
.source "CLParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/parser/CLParser$TYPE;
    }
.end annotation


# static fields
.field static DEBUG:Z = false


# instance fields
.field private hasComment:Z

.field private lineNumber:I

.field private mContent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 23
    iput-boolean v0, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    #@6
    .line 33
    iput-object p1, p0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    #@8
    return-void
.end method

.method private createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 9

    #@0
    .line 231
    sget-boolean v0, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    #@2
    if-eqz v0, :cond_24

    #@4
    .line 232
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    const-string v2, "CREATE "

    #@a
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    const-string v2, " at "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    aget-char v2, p5, p2

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@24
    .line 234
    :cond_24
    sget-object v0, Landroidx/constraintlayout/core/parser/CLParser$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE:[I

    #@26
    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->ordinal()I

    #@29
    move-result p3

    #@2a
    aget p3, v0, p3

    #@2c
    const/4 v0, 0x0

    #@2d
    packed-switch p3, :pswitch_data_6a

    #@30
    move-object p3, v0

    #@31
    goto :goto_51

    #@32
    .line 258
    :pswitch_32
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLToken;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    #@35
    move-result-object p3

    #@36
    goto :goto_51

    #@37
    .line 254
    :pswitch_37
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLKey;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    #@3a
    move-result-object p3

    #@3b
    goto :goto_51

    #@3c
    .line 250
    :pswitch_3c
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLNumber;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    #@3f
    move-result-object p3

    #@40
    goto :goto_51

    #@41
    .line 246
    :pswitch_41
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLString;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    #@44
    move-result-object p3

    #@45
    goto :goto_51

    #@46
    .line 241
    :pswitch_46
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLArray;->allocate([C)Landroidx/constraintlayout/core/parser/CLElement;

    #@49
    move-result-object p3

    #@4a
    goto :goto_4f

    #@4b
    .line 236
    :pswitch_4b
    invoke-static {p5}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    #@4e
    move-result-object p3

    #@4f
    :goto_4f
    add-int/lit8 p2, p2, 0x1

    #@51
    :goto_51
    if-nez p3, :cond_54

    #@53
    return-object v0

    #@54
    .line 266
    :cond_54
    iget p5, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    #@56
    invoke-virtual {p3, p5}, Landroidx/constraintlayout/core/parser/CLElement;->setLine(I)V

    #@59
    if-eqz p4, :cond_5f

    #@5b
    int-to-long p4, p2

    #@5c
    .line 268
    invoke-virtual {p3, p4, p5}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    #@5f
    .line 270
    :cond_5f
    instance-of p2, p1, Landroidx/constraintlayout/core/parser/CLContainer;

    #@61
    if-eqz p2, :cond_68

    #@63
    .line 271
    check-cast p1, Landroidx/constraintlayout/core/parser/CLContainer;

    #@65
    .line 272
    invoke-virtual {p3, p1}, Landroidx/constraintlayout/core/parser/CLElement;->setContainer(Landroidx/constraintlayout/core/parser/CLContainer;)V

    #@68
    :cond_68
    return-object p3

    #@69
    nop

    #@6a
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_46
        :pswitch_41
        :pswitch_3c
        :pswitch_37
        :pswitch_32
    .end packed-switch
.end method

.method private getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    const/16 v0, 0x9

    #@2
    if-eq p2, v0, :cond_d5

    #@4
    const/16 v0, 0xa

    #@6
    if-eq p2, v0, :cond_d5

    #@8
    const/16 v0, 0xd

    #@a
    if-eq p2, v0, :cond_d5

    #@c
    const/16 v0, 0x20

    #@e
    if-eq p2, v0, :cond_d5

    #@10
    const/16 v0, 0x22

    #@12
    if-eq p2, v0, :cond_ba

    #@14
    const/16 v0, 0x27

    #@16
    if-eq p2, v0, :cond_ba

    #@18
    const/16 v0, 0x5b

    #@1a
    if-eq p2, v0, :cond_ae

    #@1c
    const/16 v0, 0x5d

    #@1e
    if-eq p2, v0, :cond_9f

    #@20
    const/16 v0, 0x7b

    #@22
    if-eq p2, v0, :cond_93

    #@24
    const/16 v0, 0x7d

    #@26
    if-eq p2, v0, :cond_9f

    #@28
    packed-switch p2, :pswitch_data_d6

    #@2b
    .line 214
    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLContainer;

    #@2d
    if-eqz v0, :cond_6b

    #@2f
    instance-of v0, p3, Landroidx/constraintlayout/core/parser/CLObject;

    #@31
    if-nez v0, :cond_6b

    #@33
    .line 215
    sget-object v4, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->TOKEN:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    #@35
    const/4 v5, 0x1

    #@36
    move-object v1, p0

    #@37
    move-object v2, p3

    #@38
    move v3, p1

    #@39
    move-object v6, p4

    #@3a
    invoke-direct/range {v1 .. v6}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    #@3d
    move-result-object p3

    #@3e
    .line 216
    move-object p4, p3

    #@3f
    check-cast p4, Landroidx/constraintlayout/core/parser/CLToken;

    #@41
    int-to-long v0, p1

    #@42
    .line 217
    invoke-virtual {p4, p2, v0, v1}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    #@45
    move-result p1

    #@46
    if-eqz p1, :cond_4a

    #@48
    goto/16 :goto_d5

    #@4a
    .line 218
    :cond_4a
    new-instance p1, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@4c
    new-instance p3, Ljava/lang/StringBuilder;

    #@4e
    const-string v0, "incorrect token <"

    #@50
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@53
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56
    move-result-object p2

    #@57
    const-string p3, "> at line "

    #@59
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object p2

    #@5d
    iget p3, p0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    #@5f
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object p2

    #@63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object p2

    #@67
    invoke-direct {p1, p2, p4}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@6a
    throw p1

    #@6b
    .line 221
    :cond_6b
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    #@6d
    const/4 v4, 0x1

    #@6e
    move-object v0, p0

    #@6f
    move-object v1, p3

    #@70
    move v2, p1

    #@71
    move-object v5, p4

    #@72
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    #@75
    move-result-object p3

    #@76
    goto/16 :goto_d5

    #@78
    :pswitch_78
    const/4 p2, 0x1

    #@79
    add-int/2addr p1, p2

    #@7a
    .line 192
    array-length v0, p4

    #@7b
    if-ge p1, v0, :cond_d5

    #@7d
    aget-char p1, p4, p1

    #@7f
    const/16 p4, 0x2f

    #@81
    if-ne p1, p4, :cond_d5

    #@83
    .line 193
    iput-boolean p2, p0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    #@85
    goto/16 :goto_d5

    #@87
    .line 210
    :pswitch_87
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->NUMBER:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    #@89
    const/4 v4, 0x1

    #@8a
    move-object v0, p0

    #@8b
    move-object v1, p3

    #@8c
    move v2, p1

    #@8d
    move-object v5, p4

    #@8e
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    #@91
    move-result-object p3

    #@92
    goto :goto_d5

    #@93
    .line 170
    :cond_93
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->OBJECT:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    #@95
    const/4 v4, 0x1

    #@96
    move-object v0, p0

    #@97
    move-object v1, p3

    #@98
    move v2, p1

    #@99
    move-object v5, p4

    #@9a
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    #@9d
    move-result-object p3

    #@9e
    goto :goto_d5

    #@9f
    :cond_9f
    add-int/lit8 p2, p1, -0x1

    #@a1
    int-to-long v0, p2

    #@a2
    .line 179
    invoke-virtual {p3, v0, v1}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    #@a5
    .line 180
    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    #@a8
    move-result-object p3

    #@a9
    int-to-long p1, p1

    #@aa
    .line 181
    invoke-virtual {p3, p1, p2}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    #@ad
    goto :goto_d5

    #@ae
    .line 174
    :cond_ae
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->ARRAY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    #@b0
    const/4 v4, 0x1

    #@b1
    move-object v0, p0

    #@b2
    move-object v1, p3

    #@b3
    move v2, p1

    #@b4
    move-object v5, p4

    #@b5
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    #@b8
    move-result-object p3

    #@b9
    goto :goto_d5

    #@ba
    .line 185
    :cond_ba
    instance-of p2, p3, Landroidx/constraintlayout/core/parser/CLObject;

    #@bc
    if-eqz p2, :cond_ca

    #@be
    .line 186
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->KEY:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    #@c0
    const/4 v4, 0x1

    #@c1
    move-object v0, p0

    #@c2
    move-object v1, p3

    #@c3
    move v2, p1

    #@c4
    move-object v5, p4

    #@c5
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    #@c8
    move-result-object p3

    #@c9
    goto :goto_d5

    #@ca
    .line 188
    :cond_ca
    sget-object v3, Landroidx/constraintlayout/core/parser/CLParser$TYPE;->STRING:Landroidx/constraintlayout/core/parser/CLParser$TYPE;

    #@cc
    const/4 v4, 0x1

    #@cd
    move-object v0, p0

    #@ce
    move-object v1, p3

    #@cf
    move v2, p1

    #@d0
    move-object v5, p4

    #@d1
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/parser/CLParser;->createElement(Landroidx/constraintlayout/core/parser/CLElement;ILandroidx/constraintlayout/core/parser/CLParser$TYPE;Z[C)Landroidx/constraintlayout/core/parser/CLElement;

    #@d4
    move-result-object p3

    #@d5
    :cond_d5
    :goto_d5
    :pswitch_d5
    return-object p3

    #@d6
    :pswitch_data_d6
    .packed-switch 0x2b
        :pswitch_87
        :pswitch_d5
        :pswitch_87
        :pswitch_87
        :pswitch_78
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_d5
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    .line 29
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParser;

    #@2
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/parser/CLParser;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLParser;->parse()Landroidx/constraintlayout/core/parser/CLObject;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method


# virtual methods
.method public parse()Landroidx/constraintlayout/core/parser/CLObject;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/constraintlayout/core/parser/CLParsingException;
        }
    .end annotation

    #@0
    move-object/from16 v0, p0

    #@2
    .line 39
    iget-object v1, v0, Landroidx/constraintlayout/core/parser/CLParser;->mContent:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    #@7
    move-result-object v1

    #@8
    .line 42
    array-length v2, v1

    #@9
    const/4 v3, 0x1

    #@a
    .line 45
    iput v3, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    #@c
    const/4 v4, 0x0

    #@d
    move v5, v4

    #@e
    :goto_e
    const/16 v6, 0xa

    #@10
    const/4 v7, -0x1

    #@11
    if-ge v5, v2, :cond_24

    #@13
    .line 49
    aget-char v8, v1, v5

    #@15
    const/16 v9, 0x7b

    #@17
    if-ne v8, v9, :cond_1a

    #@19
    goto :goto_25

    #@1a
    :cond_1a
    if-ne v8, v6, :cond_21

    #@1c
    .line 55
    iget v6, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    #@1e
    add-int/2addr v6, v3

    #@1f
    iput v6, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    #@21
    :cond_21
    add-int/lit8 v5, v5, 0x1

    #@23
    goto :goto_e

    #@24
    :cond_24
    move v5, v7

    #@25
    :goto_25
    if-eq v5, v7, :cond_18f

    #@27
    .line 63
    invoke-static {v1}, Landroidx/constraintlayout/core/parser/CLObject;->allocate([C)Landroidx/constraintlayout/core/parser/CLObject;

    #@2a
    move-result-object v7

    #@2b
    .line 64
    iget v8, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    #@2d
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/parser/CLObject;->setLine(I)V

    #@30
    int-to-long v8, v5

    #@31
    .line 65
    invoke-virtual {v7, v8, v9}, Landroidx/constraintlayout/core/parser/CLObject;->setStart(J)V

    #@34
    add-int/2addr v5, v3

    #@35
    move-object v8, v7

    #@36
    :goto_36
    if-ge v5, v2, :cond_150

    #@38
    .line 69
    aget-char v9, v1, v5

    #@3a
    if-ne v9, v6, :cond_41

    #@3c
    .line 71
    iget v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    #@3e
    add-int/2addr v10, v3

    #@3f
    iput v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    #@41
    .line 73
    :cond_41
    iget-boolean v10, v0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    #@43
    if-eqz v10, :cond_49

    #@45
    if-ne v9, v6, :cond_14a

    #@47
    .line 75
    iput-boolean v4, v0, Landroidx/constraintlayout/core/parser/CLParser;->hasComment:Z

    #@49
    :cond_49
    if-nez v8, :cond_4d

    #@4b
    goto/16 :goto_150

    #@4d
    .line 86
    :cond_4d
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    #@50
    move-result v10

    #@51
    if-eqz v10, :cond_59

    #@53
    .line 87
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    #@56
    move-result-object v8

    #@57
    goto/16 :goto_131

    #@59
    .line 88
    :cond_59
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLObject;

    #@5b
    const/16 v11, 0x7d

    #@5d
    if-eqz v10, :cond_6f

    #@5f
    if-ne v9, v11, :cond_69

    #@61
    add-int/lit8 v9, v5, -0x1

    #@63
    int-to-long v9, v9

    #@64
    .line 90
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    #@67
    goto/16 :goto_131

    #@69
    .line 92
    :cond_69
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    #@6c
    move-result-object v8

    #@6d
    goto/16 :goto_131

    #@6f
    .line 94
    :cond_6f
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLArray;

    #@71
    const/16 v12, 0x5d

    #@73
    if-eqz v10, :cond_85

    #@75
    if-ne v9, v12, :cond_7f

    #@77
    add-int/lit8 v9, v5, -0x1

    #@79
    int-to-long v9, v9

    #@7a
    .line 96
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    #@7d
    goto/16 :goto_131

    #@7f
    .line 98
    :cond_7f
    invoke-direct {v0, v5, v9, v8, v1}, Landroidx/constraintlayout/core/parser/CLParser;->getNextJsonElement(ICLandroidx/constraintlayout/core/parser/CLElement;[C)Landroidx/constraintlayout/core/parser/CLElement;

    #@82
    move-result-object v8

    #@83
    goto/16 :goto_131

    #@85
    .line 100
    :cond_85
    instance-of v10, v8, Landroidx/constraintlayout/core/parser/CLString;

    #@87
    const-wide/16 v13, 0x1

    #@89
    if-eqz v10, :cond_a0

    #@8b
    .line 101
    iget-wide v10, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@8d
    long-to-int v10, v10

    #@8e
    aget-char v10, v1, v10

    #@90
    if-ne v10, v9, :cond_131

    #@92
    .line 103
    iget-wide v9, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@94
    add-long/2addr v9, v13

    #@95
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    #@98
    add-int/lit8 v9, v5, -0x1

    #@9a
    int-to-long v9, v9

    #@9b
    .line 104
    invoke-virtual {v8, v9, v10}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    #@9e
    goto/16 :goto_131

    #@a0
    .line 107
    :cond_a0
    instance-of v15, v8, Landroidx/constraintlayout/core/parser/CLToken;

    #@a2
    if-eqz v15, :cond_d4

    #@a4
    .line 108
    move-object v15, v8

    #@a5
    check-cast v15, Landroidx/constraintlayout/core/parser/CLToken;

    #@a7
    int-to-long v3, v5

    #@a8
    .line 109
    invoke-virtual {v15, v9, v3, v4}, Landroidx/constraintlayout/core/parser/CLToken;->validate(CJ)Z

    #@ab
    move-result v3

    #@ac
    if-eqz v3, :cond_af

    #@ae
    goto :goto_d4

    #@af
    .line 110
    :cond_af
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@b1
    new-instance v2, Ljava/lang/StringBuilder;

    #@b3
    const-string v3, "parsing incorrect token "

    #@b5
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b8
    invoke-virtual {v15}, Landroidx/constraintlayout/core/parser/CLToken;->content()Ljava/lang/String;

    #@bb
    move-result-object v3

    #@bc
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v2

    #@c0
    const-string v3, " at line "

    #@c2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v2

    #@c6
    iget v3, v0, Landroidx/constraintlayout/core/parser/CLParser;->lineNumber:I

    #@c8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v2

    #@cc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cf
    move-result-object v2

    #@d0
    invoke-direct {v1, v2, v15}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@d3
    throw v1

    #@d4
    .line 114
    :cond_d4
    :goto_d4
    instance-of v3, v8, Landroidx/constraintlayout/core/parser/CLKey;

    #@d6
    if-nez v3, :cond_da

    #@d8
    if-eqz v10, :cond_f5

    #@da
    .line 115
    :cond_da
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@dc
    long-to-int v3, v3

    #@dd
    aget-char v3, v1, v3

    #@df
    const/16 v4, 0x27

    #@e1
    if-eq v3, v4, :cond_e7

    #@e3
    const/16 v4, 0x22

    #@e5
    if-ne v3, v4, :cond_f5

    #@e7
    :cond_e7
    if-ne v3, v9, :cond_f5

    #@e9
    .line 117
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@eb
    add-long/2addr v3, v13

    #@ec
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    #@ef
    add-int/lit8 v3, v5, -0x1

    #@f1
    int-to-long v3, v3

    #@f2
    .line 118
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    #@f5
    .line 121
    :cond_f5
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    #@f8
    move-result v3

    #@f9
    if-nez v3, :cond_131

    #@fb
    if-eq v9, v11, :cond_115

    #@fd
    if-eq v9, v12, :cond_115

    #@ff
    const/16 v3, 0x2c

    #@101
    if-eq v9, v3, :cond_115

    #@103
    const/16 v3, 0x20

    #@105
    if-eq v9, v3, :cond_115

    #@107
    const/16 v3, 0x9

    #@109
    if-eq v9, v3, :cond_115

    #@10b
    const/16 v3, 0xd

    #@10d
    if-eq v9, v3, :cond_115

    #@10f
    if-eq v9, v6, :cond_115

    #@111
    const/16 v3, 0x3a

    #@113
    if-ne v9, v3, :cond_131

    #@115
    :cond_115
    add-int/lit8 v3, v5, -0x1

    #@117
    int-to-long v3, v3

    #@118
    .line 123
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    #@11b
    if-eq v9, v11, :cond_11f

    #@11d
    if-ne v9, v12, :cond_131

    #@11f
    .line 125
    :cond_11f
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    #@122
    move-result-object v8

    #@123
    .line 126
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    #@126
    .line 127
    instance-of v9, v8, Landroidx/constraintlayout/core/parser/CLKey;

    #@128
    if-eqz v9, :cond_131

    #@12a
    .line 128
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    #@12d
    move-result-object v8

    #@12e
    .line 129
    invoke-virtual {v8, v3, v4}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    #@131
    .line 136
    :cond_131
    :goto_131
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    #@134
    move-result v3

    #@135
    if-eqz v3, :cond_14a

    #@137
    instance-of v3, v8, Landroidx/constraintlayout/core/parser/CLKey;

    #@139
    if-eqz v3, :cond_146

    #@13b
    move-object v3, v8

    #@13c
    check-cast v3, Landroidx/constraintlayout/core/parser/CLKey;

    #@13e
    iget-object v3, v3, Landroidx/constraintlayout/core/parser/CLKey;->mElements:Ljava/util/ArrayList;

    #@140
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@143
    move-result v3

    #@144
    if-lez v3, :cond_14a

    #@146
    .line 137
    :cond_146
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    #@149
    move-result-object v8

    #@14a
    :cond_14a
    add-int/lit8 v5, v5, 0x1

    #@14c
    const/4 v3, 0x1

    #@14d
    const/4 v4, 0x0

    #@14e
    goto/16 :goto_36

    #@150
    :cond_150
    :goto_150
    if-eqz v8, :cond_172

    #@152
    .line 142
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->isDone()Z

    #@155
    move-result v1

    #@156
    if-nez v1, :cond_172

    #@158
    .line 143
    instance-of v1, v8, Landroidx/constraintlayout/core/parser/CLString;

    #@15a
    if-eqz v1, :cond_166

    #@15c
    .line 144
    iget-wide v3, v8, Landroidx/constraintlayout/core/parser/CLElement;->start:J

    #@15e
    long-to-int v1, v3

    #@15f
    const/4 v3, 0x1

    #@160
    add-int/2addr v1, v3

    #@161
    int-to-long v4, v1

    #@162
    invoke-virtual {v8, v4, v5}, Landroidx/constraintlayout/core/parser/CLElement;->setStart(J)V

    #@165
    goto :goto_167

    #@166
    :cond_166
    const/4 v3, 0x1

    #@167
    :goto_167
    add-int/lit8 v1, v2, -0x1

    #@169
    int-to-long v4, v1

    #@16a
    .line 146
    invoke-virtual {v8, v4, v5}, Landroidx/constraintlayout/core/parser/CLElement;->setEnd(J)V

    #@16d
    .line 147
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->getContainer()Landroidx/constraintlayout/core/parser/CLElement;

    #@170
    move-result-object v8

    #@171
    goto :goto_150

    #@172
    .line 150
    :cond_172
    sget-boolean v1, Landroidx/constraintlayout/core/parser/CLParser;->DEBUG:Z

    #@174
    if-eqz v1, :cond_18e

    #@176
    .line 151
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@178
    new-instance v2, Ljava/lang/StringBuilder;

    #@17a
    const-string v3, "Root: "

    #@17c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17f
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLObject;->toJSON()Ljava/lang/String;

    #@182
    move-result-object v3

    #@183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@186
    move-result-object v2

    #@187
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18a
    move-result-object v2

    #@18b
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@18e
    :cond_18e
    return-object v7

    #@18f
    .line 59
    :cond_18f
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    #@191
    const-string v2, "invalid json content"

    #@193
    const/4 v3, 0x0

    #@194
    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    #@197
    throw v1
.end method
