.class public Landroidx/constraintlayout/core/motion/parse/KeyParser;
.super Ljava/lang/Object;
.source "KeyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;,
        Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 1

    #@0
    const-string p0, "{frame:22,\ntarget:\'widget1\',\neasing:\'easeIn\',\ncurveFit:\'spline\',\nprogress:0.3,\nalpha:0.2,\nelevation:0.7,\nrotationZ:23,\nrotationX:25.0,\nrotationY:27.0,\npivotX:15,\npivotY:17,\npivotTarget:\'32\',\npathRotate:23,\nscaleX:0.5,\nscaleY:0.7,\ntranslationX:5,\ntranslationY:7,\ntranslationZ:11,\n}"

    #@2
    .line 102
    invoke-static {p0}, Landroidx/constraintlayout/core/motion/parse/KeyParser;->parseAttributes(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    #@5
    return-void
.end method

.method private static parse(Ljava/lang/String;Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    .registers 12

    #@0
    .line 37
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    #@5
    .line 40
    :try_start_5
    invoke-static {p0}, Landroidx/constraintlayout/core/parser/CLParser;->parse(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLObject;

    #@8
    move-result-object p0

    #@9
    .line 41
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLObject;->size()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x0

    #@e
    :goto_e
    if-ge v2, v1, :cond_e7

    #@10
    .line 43
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/parser/CLObject;->get(I)Landroidx/constraintlayout/core/parser/CLElement;

    #@13
    move-result-object v3

    #@14
    check-cast v3, Landroidx/constraintlayout/core/parser/CLKey;

    #@16
    .line 44
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLKey;->content()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    .line 45
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLKey;->getValue()Landroidx/constraintlayout/core/parser/CLElement;

    #@1d
    move-result-object v3

    #@1e
    .line 46
    invoke-interface {p1, v4}, Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;->get(Ljava/lang/String;)I

    #@21
    move-result v5

    #@22
    const/4 v6, -0x1

    #@23
    if-ne v5, v6, :cond_3f

    #@25
    .line 48
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@27
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string v6, "unknown type "

    #@2e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    goto/16 :goto_df

    #@3f
    .line 51
    :cond_3f
    invoke-interface {p2, v5}, Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;->get(I)I

    #@42
    move-result v6
    :try_end_43
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_5 .. :try_end_43} :catch_e3

    #@43
    const/4 v7, 0x1

    #@44
    if-eq v6, v7, :cond_d8

    #@46
    const/4 v7, 0x2

    #@47
    const-string v8, "parse "

    #@49
    if-eq v6, v7, :cond_ac

    #@4b
    const/4 v7, 0x4

    #@4c
    if-eq v6, v7, :cond_80

    #@4e
    const/16 v7, 0x8

    #@50
    if-eq v6, v7, :cond_54

    #@52
    goto/16 :goto_df

    #@54
    .line 57
    :cond_54
    :try_start_54
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    #@57
    move-result-object v6

    #@58
    invoke-virtual {v0, v5, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(ILjava/lang/String;)V

    #@5b
    .line 58
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5d
    new-instance v6, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    const-string v6, " STRING_MASK > "

    #@6c
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v4

    #@70
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->content()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7f
    goto :goto_df

    #@80
    .line 53
    :cond_80
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@83
    move-result v6

    #@84
    invoke-virtual {v0, v5, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IF)V

    #@87
    .line 54
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@89
    new-instance v6, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v6

    #@92
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    const-string v6, " FLOAT_MASK > "

    #@98
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getFloat()F

    #@9f
    move-result v3

    #@a0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v3

    #@a4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v3

    #@a8
    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ab
    goto :goto_df

    #@ac
    .line 62
    :cond_ac
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    #@af
    move-result v6

    #@b0
    invoke-virtual {v0, v5, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(II)V

    #@b3
    .line 63
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b5
    new-instance v6, Ljava/lang/StringBuilder;

    #@b7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@ba
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v6

    #@be
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v4

    #@c2
    const-string v6, " INT_MASK > "

    #@c4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v4

    #@c8
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->getInt()I

    #@cb
    move-result v3

    #@cc
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v3

    #@d0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v3

    #@d4
    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d7
    goto :goto_df

    #@d8
    .line 66
    :cond_d8
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/core/parser/CLObject;->getBoolean(I)Z

    #@db
    move-result v3

    #@dc
    invoke-virtual {v0, v5, v3}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->add(IZ)V
    :try_end_df
    .catch Landroidx/constraintlayout/core/parser/CLParsingException; {:try_start_54 .. :try_end_df} :catch_e3

    #@df
    :goto_df
    add-int/lit8 v2, v2, 0x1

    #@e1
    goto/16 :goto_e

    #@e3
    :catch_e3
    move-exception p0

    #@e4
    .line 71
    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLParsingException;->printStackTrace()V

    #@e7
    :cond_e7
    return-object v0
.end method

.method public static parseAttributes(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;
    .registers 3

    #@0
    .line 77
    new-instance v0, Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda0;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda0;-><init>()V

    #@5
    new-instance v1, Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda1;

    #@7
    invoke-direct {v1}, Landroidx/constraintlayout/core/motion/parse/KeyParser$$ExternalSyntheticLambda1;-><init>()V

    #@a
    invoke-static {p0, v0, v1}, Landroidx/constraintlayout/core/motion/parse/KeyParser;->parse(Ljava/lang/String;Landroidx/constraintlayout/core/motion/parse/KeyParser$Ids;Landroidx/constraintlayout/core/motion/parse/KeyParser$DataType;)Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    #@d
    move-result-object p0

    #@e
    return-object p0
.end method
