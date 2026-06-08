.class public Landroidx/constraintlayout/motion/widget/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static dumpLayoutParams(Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "param",
            "str"
        }
    .end annotation

    #@0
    .line 315
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x1

    #@a
    aget-object v0, v0, v1

    #@c
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, ".("

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, ":"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@24
    move-result v0

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string v1, ") "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object p1

    #@33
    const-string v0, "  "

    #@35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object p1

    #@39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object p1

    #@3d
    .line 317
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3f
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    const-string v3, " >>>>>>>>>>>>>>>>>>. dump "

    #@43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@61
    .line 319
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@64
    move-result-object v0

    #@65
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@68
    move-result-object v0

    #@69
    const/4 v1, 0x0

    #@6a
    .line 320
    :goto_6a
    array-length v2, v0

    #@6b
    if-ge v1, v2, :cond_b6

    #@6d
    .line 321
    aget-object v2, v0, v1

    #@6f
    .line 324
    :try_start_6f
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    move-result-object v3

    #@73
    .line 325
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    const-string v4, "To"

    #@79
    .line 326
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@7c
    move-result v4

    #@7d
    if-nez v4, :cond_80

    #@7f
    goto :goto_b3

    #@80
    .line 329
    :cond_80
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@83
    move-result-object v4

    #@84
    const-string v5, "-1"

    #@86
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v4

    #@8a
    if-eqz v4, :cond_8d

    #@8c
    goto :goto_b3

    #@8d
    .line 336
    :cond_8d
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8f
    new-instance v5, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v5

    #@98
    const-string v6, "       "

    #@9a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v5

    #@9e
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    const-string v5, " "

    #@a4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v2

    #@ac
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v2

    #@b0
    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/IllegalAccessException; {:try_start_6f .. :try_end_b3} :catch_b3

    #@b3
    :catch_b3
    :goto_b3
    add-int/lit8 v1, v1, 0x1

    #@b5
    goto :goto_6a

    #@b6
    .line 342
    :cond_b6
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b8
    new-instance v0, Ljava/lang/StringBuilder;

    #@ba
    const-string v1, " <<<<<<<<<<<<<<<<< dump "

    #@bc
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@bf
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object p1

    #@c3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object p1

    #@c7
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ca
    return-void
.end method

.method public static dumpLayoutParams(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "str"
        }
    .end annotation

    #@0
    .line 282
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x1

    #@a
    aget-object v0, v0, v1

    #@c
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, ".("

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, ":"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@24
    move-result v0

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string v1, ") "

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    const-string v1, "  "

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    .line 284
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@40
    move-result v1

    #@41
    .line 285
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@43
    new-instance v3, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object p1

    #@4c
    const-string v3, " children "

    #@4e
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object p1

    #@52
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object p1

    #@56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object p1

    #@5a
    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    const/4 p1, 0x0

    #@5e
    move v2, p1

    #@5f
    :goto_5f
    if-ge v2, v1, :cond_e6

    #@61
    .line 287
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@64
    move-result-object v3

    #@65
    .line 288
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@67
    new-instance v5, Ljava/lang/StringBuilder;

    #@69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6c
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v5

    #@70
    const-string v6, "     "

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v5

    #@7e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@81
    move-result-object v5

    #@82
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@85
    .line 289
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@88
    move-result-object v3

    #@89
    .line 290
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8c
    move-result-object v4

    #@8d
    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@90
    move-result-object v4

    #@91
    move v5, p1

    #@92
    .line 291
    :goto_92
    array-length v6, v4

    #@93
    if-ge v5, v6, :cond_e2

    #@95
    .line 292
    aget-object v6, v4, v5

    #@97
    .line 295
    :try_start_97
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    move-result-object v7

    #@9b
    .line 296
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@9e
    move-result-object v8

    #@9f
    const-string v9, "To"

    #@a1
    .line 297
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@a4
    move-result v8

    #@a5
    if-nez v8, :cond_a8

    #@a7
    goto :goto_df

    #@a8
    .line 300
    :cond_a8
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@ab
    move-result-object v8

    #@ac
    const-string v9, "-1"

    #@ae
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b1
    move-result v8

    #@b2
    if-eqz v8, :cond_b5

    #@b4
    goto :goto_df

    #@b5
    .line 304
    :cond_b5
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@b7
    new-instance v9, Ljava/lang/StringBuilder;

    #@b9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@bc
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v9

    #@c0
    const-string v10, "       "

    #@c2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v9

    #@c6
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@c9
    move-result-object v6

    #@ca
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v6

    #@ce
    const-string v9, " "

    #@d0
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v6

    #@d4
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v6

    #@d8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v6

    #@dc
    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_df
    .catch Ljava/lang/IllegalAccessException; {:try_start_97 .. :try_end_df} :catch_df

    #@df
    :catch_df
    :goto_df
    add-int/lit8 v5, v5, 0x1

    #@e1
    goto :goto_92

    #@e2
    :cond_e2
    add-int/lit8 v2, v2, 0x1

    #@e4
    goto/16 :goto_5f

    #@e6
    :cond_e6
    return-void
.end method

.method public static dumpPoc(Ljava/lang/Object;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    #@0
    .line 95
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x1

    #@a
    aget-object v0, v0, v1

    #@c
    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, ".("

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, ":"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@24
    move-result v0

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string v1, ")"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    .line 97
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@36
    move-result-object v1

    #@37
    .line 98
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@39
    new-instance v3, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    const-string v4, "------------- "

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    const-string v5, " --------------------"

    #@52
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5d
    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@60
    move-result-object v2

    #@61
    const/4 v3, 0x0

    #@62
    .line 100
    :goto_62
    array-length v6, v2

    #@63
    if-ge v3, v6, :cond_eb

    #@65
    .line 101
    aget-object v6, v2, v3

    #@67
    .line 104
    :try_start_67
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6a
    move-result-object v7

    #@6b
    .line 105
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    const-string v9, "layout_constraint"

    #@71
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@74
    move-result v8

    #@75
    if-nez v8, :cond_79

    #@77
    goto/16 :goto_e7

    #@79
    .line 108
    :cond_79
    instance-of v8, v7, Ljava/lang/Integer;

    #@7b
    if-eqz v8, :cond_8a

    #@7d
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@80
    move-result-object v8

    #@81
    const-string v9, "-1"

    #@83
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@86
    move-result v8

    #@87
    if-eqz v8, :cond_8a

    #@89
    goto :goto_e7

    #@8a
    .line 111
    :cond_8a
    instance-of v8, v7, Ljava/lang/Integer;

    #@8c
    if-eqz v8, :cond_9b

    #@8e
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@91
    move-result-object v8

    #@92
    const-string v9, "0"

    #@94
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@97
    move-result v8

    #@98
    if-eqz v8, :cond_9b

    #@9a
    goto :goto_e7

    #@9b
    .line 114
    :cond_9b
    instance-of v8, v7, Ljava/lang/Float;

    #@9d
    if-eqz v8, :cond_ac

    #@9f
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@a2
    move-result-object v8

    #@a3
    const-string v9, "1.0"

    #@a5
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a8
    move-result v8

    #@a9
    if-eqz v8, :cond_ac

    #@ab
    goto :goto_e7

    #@ac
    .line 117
    :cond_ac
    instance-of v8, v7, Ljava/lang/Float;

    #@ae
    if-eqz v8, :cond_bd

    #@b0
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@b3
    move-result-object v8

    #@b4
    const-string v9, "0.5"

    #@b6
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v8

    #@ba
    if-eqz v8, :cond_bd

    #@bc
    goto :goto_e7

    #@bd
    .line 120
    :cond_bd
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@bf
    new-instance v9, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v9

    #@c8
    const-string v10, "    "

    #@ca
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v9

    #@ce
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@d1
    move-result-object v6

    #@d2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v6

    #@d6
    const-string v9, " "

    #@d8
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v6

    #@dc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v6

    #@e0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v6

    #@e4
    invoke-virtual {v8, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_e7
    .catch Ljava/lang/IllegalAccessException; {:try_start_67 .. :try_end_e7} :catch_e7

    #@e7
    :catch_e7
    :goto_e7
    add-int/lit8 v3, v3, 0x1

    #@e9
    goto/16 :goto_62

    #@eb
    .line 126
    :cond_eb
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ed
    new-instance v2, Ljava/lang/StringBuilder;

    #@ef
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v0

    #@fa
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@fd
    move-result-object v1

    #@fe
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v0

    #@102
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v0

    #@106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@109
    move-result-object v0

    #@10a
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@10d
    return-void
.end method

.method public static getActionType(Landroid/view/MotionEvent;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    #@0
    .line 226
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result p0

    #@4
    .line 227
    const-class v0, Landroid/view/MotionEvent;

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    #@9
    move-result-object v0

    #@a
    const/4 v1, 0x0

    #@b
    .line 228
    :goto_b
    array-length v2, v0

    #@c
    if-ge v1, v2, :cond_35

    #@e
    .line 229
    aget-object v2, v0, v1

    #@10
    .line 231
    :try_start_10
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    #@13
    move-result v3

    #@14
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_32

    #@1a
    .line 232
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@1d
    move-result-object v3

    #@1e
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_32

    #@26
    const/4 v3, 0x0

    #@27
    .line 233
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@2a
    move-result v3

    #@2b
    if-ne v3, p0, :cond_32

    #@2d
    .line 234
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@30
    move-result-object p0
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_31} :catch_32

    #@31
    return-object p0

    #@32
    :catch_32
    :cond_32
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_b

    #@35
    :cond_35
    const-string p0, "---"

    #@37
    return-object p0
.end method

.method public static getCallFrom(I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    #@0
    .line 277
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    add-int/lit8 p0, p0, 0x2

    #@b
    aget-object p0, v0, p0

    #@d
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    const-string v1, ".("

    #@11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    const-string v1, ":"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@25
    move-result p0

    #@26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object p0

    #@2a
    const-string v0, ")"

    #@2c
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object p0

    #@30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object p0

    #@34
    return-object p0
.end method

.method public static getLoc()Ljava/lang/String;
    .registers 3

    #@0
    .line 257
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x1

    #@a
    aget-object v0, v0, v1

    #@c
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, ".("

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, ":"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@24
    move-result v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    const-string v2, ") "

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string v1, "()"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0
.end method

.method public static getLocation()Ljava/lang/String;
    .registers 3

    #@0
    .line 248
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x1

    #@a
    aget-object v0, v0, v1

    #@c
    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, ".("

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, ":"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@24
    move-result v0

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string v1, ")"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method

.method public static getLocation2()Ljava/lang/String;
    .registers 3

    #@0
    .line 267
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    const/4 v1, 0x2

    #@a
    aget-object v0, v0, v1

    #@c
    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, ".("

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, ":"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@24
    move-result v0

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string v1, ")"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method

.method public static getName(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_c

    #@3
    .line 140
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object p0

    #@7
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    :cond_c
    const-string p0, "UNKNOWN"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f

    #@e
    return-object p0

    #@f
    .line 145
    :catch_f
    new-instance p0, Ljava/lang/StringBuilder;

    #@11
    const-string v0, "?"

    #@13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object p0

    #@1a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p0

    #@1e
    return-object p0
.end method

.method public static getName(Landroid/content/Context;[I)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    #@0
    .line 159
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    array-length v1, p1

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9
    move-result-object v0

    #@a
    const-string v1, "["

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    const/4 v1, 0x0

    #@15
    .line 160
    :goto_15
    array-length v2, p1

    #@16
    if-ge v1, v2, :cond_69

    #@18
    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_7d

    #@21
    const-string v2, " "

    #@23
    if-nez v1, :cond_28

    #@25
    :try_start_25
    const-string v3, ""

    #@27
    goto :goto_29

    #@28
    :cond_28
    move-object v3, v2

    #@29
    :goto_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_31} :catch_7d

    #@31
    .line 164
    :try_start_31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@34
    move-result-object v3

    #@35
    aget v4, p1, v1

    #@37
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@3a
    move-result-object v2
    :try_end_3b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_31 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3b} :catch_7d

    #@3b
    goto :goto_55

    #@3c
    .line 166
    :catch_3c
    :try_start_3c
    new-instance v3, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string v4, "? "

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    aget v4, p1, v1

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v2

    #@55
    .line 169
    :goto_55
    new-instance v3, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v0

    #@66
    add-int/lit8 v1, v1, 0x1

    #@68
    goto :goto_15

    #@69
    .line 172
    :cond_69
    new-instance p0, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object p0

    #@72
    const-string p1, "]"

    #@74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object p0

    #@78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object p0
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_7c} :catch_7d

    #@7c
    return-object p0

    #@7d
    :catch_7d
    move-exception p0

    #@7e
    const-string p1, "DEBUG"

    #@80
    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@83
    move-result-object p0

    #@84
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@87
    const-string p0, "UNKNOWN"

    #@89
    return-object p0
.end method

.method public static getName(Landroid/view/View;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    #@0
    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    #@b
    move-result p0

    #@c
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@f
    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    #@10
    return-object p0

    #@11
    :catch_11
    const-string p0, "UNKNOWN"

    #@13
    return-object p0
.end method

.method public static getState(Landroidx/constraintlayout/motion/widget/MotionLayout;I)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "stateId"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    .line 186
    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/Debug;->getState(Landroidx/constraintlayout/motion/widget/MotionLayout;II)Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static getState(Landroidx/constraintlayout/motion/widget/MotionLayout;II)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "stateId",
            "len"
        }
    .end annotation

    #@0
    const/4 v0, -0x1

    #@1
    if-ne p1, v0, :cond_6

    #@3
    const-string p0, "UNDEFINED"

    #@5
    return-object p0

    #@6
    .line 201
    :cond_6
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    #@9
    move-result-object p0

    #@a
    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d
    move-result-object p0

    #@e
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@11
    move-result-object p0

    #@12
    if-eq p2, v0, :cond_62

    #@14
    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@17
    move-result p1

    #@18
    if-le p1, p2, :cond_22

    #@1a
    const-string p1, "([^_])[aeiou]+"

    #@1c
    const-string v0, "$1"

    #@1e
    .line 205
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object p0

    #@22
    .line 207
    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@25
    move-result p1

    #@26
    if-le p1, p2, :cond_62

    #@28
    const-string p1, "[^_]"

    #@2a
    const-string v0, ""

    #@2c
    .line 208
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@33
    move-result p1

    #@34
    if-lez p1, :cond_62

    #@36
    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@39
    move-result v0

    #@3a
    sub-int/2addr v0, p2

    #@3b
    div-int/2addr v0, p1

    #@3c
    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    #@44
    move-result-object p2

    #@45
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    #@48
    move-result-object p2

    #@49
    const/4 v0, 0x0

    #@4a
    const/16 v1, 0x2e

    #@4c
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@4f
    move-result-object p2

    #@50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object p1

    #@54
    const-string p2, "_"

    #@56
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object p1

    #@5a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object p1

    #@5e
    .line 212
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@61
    move-result-object p0

    #@62
    :cond_62
    return-object p0
.end method

.method public static logStack(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "msg",
            "n"
        }
    .end annotation

    #@0
    .line 48
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    .line 50
    array-length v1, v0

    #@a
    const/4 v2, 0x1

    #@b
    sub-int/2addr v1, v2

    #@c
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    #@f
    move-result p2

    #@10
    const-string v1, " "

    #@12
    move-object v3, v1

    #@13
    :goto_13
    if-gt v2, p2, :cond_7c

    #@15
    .line 52
    aget-object v4, v0, v2

    #@17
    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    const-string v5, ".("

    #@1b
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    aget-object v5, v0, v2

    #@20
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string v5, ":"

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    aget-object v5, v0, v2

    #@30
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@33
    move-result v5

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    const-string v5, ") "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    aget-object v5, v0, v2

    #@40
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v4

    #@4c
    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v4

    #@72
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v4

    #@76
    invoke-static {p0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    add-int/lit8 v2, v2, 0x1

    #@7b
    goto :goto_13

    #@7c
    :cond_7c
    return-void
.end method

.method public static printStack(Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "n"
        }
    .end annotation

    #@0
    .line 67
    new-instance v0, Ljava/lang/Throwable;

    #@2
    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    #@5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@8
    move-result-object v0

    #@9
    .line 69
    array-length v1, v0

    #@a
    const/4 v2, 0x1

    #@b
    sub-int/2addr v1, v2

    #@c
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    #@f
    move-result p1

    #@10
    const-string v1, " "

    #@12
    move-object v3, v1

    #@13
    :goto_13
    if-gt v2, p1, :cond_74

    #@15
    .line 71
    aget-object v4, v0, v2

    #@17
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    #@19
    const-string v5, ".("

    #@1b
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@1e
    aget-object v5, v0, v2

    #@20
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v4

    #@28
    const-string v5, ":"

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    aget-object v5, v0, v2

    #@30
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    #@33
    move-result v5

    #@34
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    const-string v5, ") "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    .line 74
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@55
    new-instance v6, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v4

    #@6a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@71
    add-int/lit8 v2, v2, 0x1

    #@73
    goto :goto_13

    #@74
    :cond_74
    return-void
.end method
