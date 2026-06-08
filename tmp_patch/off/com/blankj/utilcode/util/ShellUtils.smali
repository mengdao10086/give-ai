.class public final Lcom/blankj/utilcode/util/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field private static final LINE_SEP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "line.separator"

    #@2
    .line 21
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    #@8
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static execCmd(Ljava/lang/String;Ljava/util/List;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [Ljava/lang/String;

    #@3
    const/4 v2, 0x0

    #@4
    aput-object p0, v1, v2

    #@6
    if-nez p1, :cond_a

    #@8
    const/4 p0, 0x0

    #@9
    goto :goto_12

    #@a
    :cond_a
    new-array p0, v2, [Ljava/lang/String;

    #@c
    .line 146
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    move-result-object p0

    #@10
    check-cast p0, [Ljava/lang/String;

    #@12
    .line 145
    :goto_12
    invoke-static {v1, p0, p2, v0}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@15
    move-result-object p0

    #@16
    return-object p0
.end method

.method public static execCmd(Ljava/lang/String;Ljava/util/List;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    if-nez p1, :cond_a

    #@8
    const/4 p0, 0x0

    #@9
    goto :goto_12

    #@a
    :cond_a
    new-array p0, v1, [Ljava/lang/String;

    #@c
    .line 217
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@f
    move-result-object p0

    #@10
    check-cast p0, [Ljava/lang/String;

    #@12
    :goto_12
    invoke-static {v0, p0, p2, p3}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@15
    move-result-object p0

    #@16
    return-object p0
.end method

.method public static execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [Ljava/lang/String;

    #@3
    const/4 v2, 0x0

    #@4
    aput-object p0, v1, v2

    #@6
    .line 133
    invoke-static {v1, p1, v0}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static execCmd(Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    .line 201
    invoke-static {v0, p1, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static execCmd(Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    .line 235
    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static execCmd(Ljava/util/List;Ljava/util/List;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    if-nez p0, :cond_6

    #@4
    move-object p0, v0

    #@5
    goto :goto_e

    #@6
    :cond_6
    new-array v2, v1, [Ljava/lang/String;

    #@8
    .line 173
    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@b
    move-result-object p0

    #@c
    check-cast p0, [Ljava/lang/String;

    #@e
    :goto_e
    if-nez p1, :cond_11

    #@10
    goto :goto_1a

    #@11
    :cond_11
    new-array v0, v1, [Ljava/lang/String;

    #@13
    .line 174
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    move-object v0, p1

    #@18
    check-cast v0, [Ljava/lang/String;

    #@1a
    :goto_1a
    const/4 p1, 0x1

    #@1b
    .line 173
    invoke-static {p0, v0, p2, p1}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@1e
    move-result-object p0

    #@1f
    return-object p0
.end method

.method public static execCmd(Ljava/util/List;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_d

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    new-array v0, v0, [Ljava/lang/String;

    #@7
    .line 159
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a
    move-result-object p0

    #@b
    check-cast p0, [Ljava/lang/String;

    #@d
    :goto_d
    const/4 v0, 0x1

    #@e
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@11
    move-result-object p0

    #@12
    return-object p0
.end method

.method public static execCmd(Ljava/util/List;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_d

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    new-array v0, v0, [Ljava/lang/String;

    #@7
    .line 249
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a
    move-result-object p0

    #@b
    check-cast p0, [Ljava/lang/String;

    #@d
    :goto_d
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@10
    move-result-object p0

    #@11
    return-object p0
.end method

.method public static execCmd([Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 187
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static execCmd([Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 265
    invoke-static {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static execCmd([Ljava/lang/String;[Ljava/lang/String;ZZ)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    .registers 12

    #@0
    const-string v0, "UTF-8"

    #@2
    const-string v1, ""

    #@4
    const/4 v2, -0x1

    #@5
    if-eqz p0, :cond_17b

    #@7
    .line 286
    array-length v3, p0

    #@8
    if-nez v3, :cond_c

    #@a
    goto/16 :goto_17b

    #@c
    :cond_c
    const/4 v3, 0x0

    #@d
    .line 296
    :try_start_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@10
    move-result-object v4

    #@11
    if-eqz p2, :cond_16

    #@13
    const-string p2, "su"

    #@15
    goto :goto_18

    #@16
    :cond_16
    const-string p2, "sh"

    #@18
    :goto_18
    invoke-virtual {v4, p2, p1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;

    #@1b
    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_114
    .catchall {:try_start_d .. :try_end_1c} :catchall_10f

    #@1c
    .line 297
    :try_start_1c
    new-instance p2, Ljava/io/DataOutputStream;

    #@1e
    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    #@21
    move-result-object v4

    #@22
    invoke-direct {p2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_10c
    .catchall {:try_start_1c .. :try_end_25} :catchall_109

    #@25
    .line 298
    :try_start_25
    array-length v4, p0

    #@26
    const/4 v5, 0x0

    #@27
    :goto_27
    if-ge v5, v4, :cond_40

    #@29
    aget-object v6, p0, v5

    #@2b
    if-nez v6, :cond_2e

    #@2d
    goto :goto_3d

    #@2e
    .line 300
    :cond_2e
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    #@31
    move-result-object v6

    #@32
    invoke-virtual {p2, v6}, Ljava/io/DataOutputStream;->write([B)V

    #@35
    .line 301
    sget-object v6, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    #@37
    invoke-virtual {p2, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@3a
    .line 302
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    #@3d
    :goto_3d
    add-int/lit8 v5, v5, 0x1

    #@3f
    goto :goto_27

    #@40
    .line 304
    :cond_40
    new-instance p0, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string v4, "exit"

    #@47
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object p0

    #@4b
    sget-object v4, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    #@4d
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object p0

    #@51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object p0

    #@55
    invoke-virtual {p2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    #@58
    .line 305
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->flush()V

    #@5b
    .line 306
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    #@5e
    move-result v2

    #@5f
    if-eqz p3, :cond_d6

    #@61
    .line 308
    new-instance p0, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_66} :catch_102
    .catchall {:try_start_25 .. :try_end_66} :catchall_fc

    #@66
    .line 309
    :try_start_66
    new-instance p3, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_cd
    .catchall {:try_start_66 .. :try_end_6b} :catchall_fc

    #@6b
    .line 310
    :try_start_6b
    new-instance v4, Ljava/io/BufferedReader;

    #@6d
    new-instance v5, Ljava/io/InputStreamReader;

    #@6f
    .line 311
    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    #@72
    move-result-object v6

    #@73
    invoke-direct {v5, v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@76
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_79} :catch_c5
    .catchall {:try_start_6b .. :try_end_79} :catchall_fc

    #@79
    .line 313
    :try_start_79
    new-instance v5, Ljava/io/BufferedReader;

    #@7b
    new-instance v6, Ljava/io/InputStreamReader;

    #@7d
    .line 314
    invoke-virtual {p1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    #@80
    move-result-object v7

    #@81
    invoke-direct {v6, v7, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    #@84
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_87} :catch_c2
    .catchall {:try_start_79 .. :try_end_87} :catchall_bf

    #@87
    .line 317
    :try_start_87
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@8a
    move-result-object v0

    #@8b
    if-eqz v0, :cond_a0

    #@8d
    .line 318
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    .line 319
    :goto_90
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@93
    move-result-object v0

    #@94
    if-eqz v0, :cond_a0

    #@96
    .line 320
    sget-object v3, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    #@98
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v3

    #@9c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    goto :goto_90

    #@a0
    .line 323
    :cond_a0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    if-eqz v0, :cond_b9

    #@a6
    .line 324
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    .line 325
    :goto_a9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@ac
    move-result-object v0

    #@ad
    if-eqz v0, :cond_b9

    #@af
    .line 326
    sget-object v3, Lcom/blankj/utilcode/util/ShellUtils;->LINE_SEP:Ljava/lang/String;

    #@b1
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b8} :catch_bd
    .catchall {:try_start_87 .. :try_end_b8} :catchall_bb

    #@b8
    goto :goto_a9

    #@b9
    :cond_b9
    move-object v3, v4

    #@ba
    goto :goto_d9

    #@bb
    :catchall_bb
    move-exception p0

    #@bc
    goto :goto_ff

    #@bd
    :catch_bd
    move-exception v0

    #@be
    goto :goto_c8

    #@bf
    :catchall_bf
    move-exception p0

    #@c0
    move-object v5, v3

    #@c1
    goto :goto_ff

    #@c2
    :catch_c2
    move-exception v0

    #@c3
    move-object v5, v3

    #@c4
    goto :goto_c8

    #@c5
    :catch_c5
    move-exception v0

    #@c6
    move-object v4, v3

    #@c7
    move-object v5, v4

    #@c8
    :goto_c8
    move-object v3, p2

    #@c9
    move-object p2, p0

    #@ca
    move-object p0, v0

    #@cb
    goto/16 :goto_11a

    #@cd
    :catch_cd
    move-exception p3

    #@ce
    move-object v4, v3

    #@cf
    move-object v5, v4

    #@d0
    move-object v3, p2

    #@d1
    move-object p2, p0

    #@d2
    move-object p0, p3

    #@d3
    move-object p3, v5

    #@d4
    goto/16 :goto_11a

    #@d6
    :cond_d6
    move-object p0, v3

    #@d7
    move-object p3, p0

    #@d8
    move-object v5, p3

    #@d9
    .line 335
    :goto_d9
    :try_start_d9
    invoke-virtual {p2}, Ljava/io/DataOutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd

    #@dc
    goto :goto_e1

    #@dd
    :catch_dd
    move-exception p2

    #@de
    .line 338
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    #@e1
    :goto_e1
    if-eqz v3, :cond_eb

    #@e3
    .line 342
    :try_start_e3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_e7

    #@e6
    goto :goto_eb

    #@e7
    :catch_e7
    move-exception p2

    #@e8
    .line 345
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    #@eb
    :cond_eb
    :goto_eb
    if-eqz v5, :cond_f5

    #@ed
    .line 349
    :try_start_ed
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_f0
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f1

    #@f0
    goto :goto_f5

    #@f1
    :catch_f1
    move-exception p2

    #@f2
    .line 352
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    #@f5
    :cond_f5
    :goto_f5
    if-eqz p1, :cond_141

    #@f7
    .line 355
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    #@fa
    goto/16 :goto_141

    #@fc
    :catchall_fc
    move-exception p0

    #@fd
    move-object v4, v3

    #@fe
    move-object v5, v4

    #@ff
    :goto_ff
    move-object v3, p2

    #@100
    goto/16 :goto_157

    #@102
    :catch_102
    move-exception p0

    #@103
    move-object p3, v3

    #@104
    move-object v4, p3

    #@105
    move-object v5, v4

    #@106
    move-object v3, p2

    #@107
    move-object p2, v5

    #@108
    goto :goto_11a

    #@109
    :catchall_109
    move-exception p0

    #@10a
    move-object v4, v3

    #@10b
    goto :goto_112

    #@10c
    :catch_10c
    move-exception p0

    #@10d
    move-object p2, v3

    #@10e
    goto :goto_117

    #@10f
    :catchall_10f
    move-exception p0

    #@110
    move-object p1, v3

    #@111
    move-object v4, p1

    #@112
    :goto_112
    move-object v5, v4

    #@113
    goto :goto_157

    #@114
    :catch_114
    move-exception p0

    #@115
    move-object p1, v3

    #@116
    move-object p2, p1

    #@117
    :goto_117
    move-object p3, p2

    #@118
    move-object v4, p3

    #@119
    move-object v5, v4

    #@11a
    .line 331
    :goto_11a
    :try_start_11a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_156

    #@11d
    if-eqz v3, :cond_127

    #@11f
    .line 335
    :try_start_11f
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_123

    #@122
    goto :goto_127

    #@123
    :catch_123
    move-exception p0

    #@124
    .line 338
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@127
    :cond_127
    :goto_127
    if-eqz v4, :cond_131

    #@129
    .line 342
    :try_start_129
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12d

    #@12c
    goto :goto_131

    #@12d
    :catch_12d
    move-exception p0

    #@12e
    .line 345
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@131
    :cond_131
    :goto_131
    if-eqz v5, :cond_13b

    #@133
    .line 349
    :try_start_133
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_133 .. :try_end_136} :catch_137

    #@136
    goto :goto_13b

    #@137
    :catch_137
    move-exception p0

    #@138
    .line 352
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    #@13b
    :cond_13b
    :goto_13b
    if-eqz p1, :cond_140

    #@13d
    .line 355
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    #@140
    :cond_140
    move-object p0, p2

    #@141
    .line 358
    :cond_141
    :goto_141
    new-instance p1, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@143
    if-nez p0, :cond_147

    #@145
    move-object p0, v1

    #@146
    goto :goto_14b

    #@147
    .line 360
    :cond_147
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object p0

    #@14b
    :goto_14b
    if-nez p3, :cond_14e

    #@14d
    goto :goto_152

    #@14e
    .line 361
    :cond_14e
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@151
    move-result-object v1

    #@152
    :goto_152
    invoke-direct {p1, v2, p0, v1}, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@155
    return-object p1

    #@156
    :catchall_156
    move-exception p0

    #@157
    :goto_157
    if-eqz v3, :cond_161

    #@159
    .line 335
    :try_start_159
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_15c} :catch_15d

    #@15c
    goto :goto_161

    #@15d
    :catch_15d
    move-exception p2

    #@15e
    .line 338
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    #@161
    :cond_161
    :goto_161
    if-eqz v4, :cond_16b

    #@163
    .line 342
    :try_start_163
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_166} :catch_167

    #@166
    goto :goto_16b

    #@167
    :catch_167
    move-exception p2

    #@168
    .line 345
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    #@16b
    :cond_16b
    :goto_16b
    if-eqz v5, :cond_175

    #@16d
    .line 349
    :try_start_16d
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_170} :catch_171

    #@170
    goto :goto_175

    #@171
    :catch_171
    move-exception p2

    #@172
    .line 352
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    #@175
    :cond_175
    :goto_175
    if-eqz p1, :cond_17a

    #@177
    .line 355
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    #@17a
    .line 357
    :cond_17a
    throw p0

    #@17b
    .line 287
    :cond_17b
    :goto_17b
    new-instance p0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    #@17d
    invoke-direct {p0, v2, v1, v1}, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@180
    return-object p0
.end method

.method public static execCmdAsync(Ljava/lang/String;ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    new-array v1, v0, [Ljava/lang/String;

    #@3
    const/4 v2, 0x0

    #@4
    aput-object p0, v1, v2

    #@6
    .line 38
    invoke-static {v1, p1, v0, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static execCmdAsync(Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    .line 82
    invoke-static {v0, p1, p2, p3}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static execCmdAsync(Ljava/util/List;ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_d

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    new-array v0, v0, [Ljava/lang/String;

    #@7
    .line 52
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a
    move-result-object p0

    #@b
    check-cast p0, [Ljava/lang/String;

    #@d
    :goto_d
    const/4 v0, 0x1

    #@e
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    #@11
    move-result-object p0

    #@12
    return-object p0
.end method

.method public static execCmdAsync(Ljava/util/List;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    goto :goto_d

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    new-array v0, v0, [Ljava/lang/String;

    #@7
    .line 98
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a
    move-result-object p0

    #@b
    check-cast p0, [Ljava/lang/String;

    #@d
    :goto_d
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    #@10
    move-result-object p0

    #@11
    return-object p0
.end method

.method public static execCmdAsync([Ljava/lang/String;ZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    #@0
    const/4 v0, 0x1

    #@1
    .line 66
    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/ShellUtils;->execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static execCmdAsync([Ljava/lang/String;ZZLcom/blankj/utilcode/util/Utils$Consumer;)Lcom/blankj/utilcode/util/Utils$Task;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/blankj/utilcode/util/Utils$Consumer<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;)",
            "Lcom/blankj/utilcode/util/Utils$Task<",
            "Lcom/blankj/utilcode/util/ShellUtils$CommandResult;",
            ">;"
        }
    .end annotation

    #@0
    .line 117
    new-instance v0, Lcom/blankj/utilcode/util/ShellUtils$1;

    #@2
    invoke-direct {v0, p3, p0, p1, p2}, Lcom/blankj/utilcode/util/ShellUtils$1;-><init>(Lcom/blankj/utilcode/util/Utils$Consumer;[Ljava/lang/String;ZZ)V

    #@5
    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->doAsync(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Task;

    #@8
    move-result-object p0

    #@9
    return-object p0
.end method
