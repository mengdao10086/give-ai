.class public Lcom/blankj/utilcode/util/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ArrayUtils$Closure;
    }
.end annotation


# static fields
.field public static final INDEX_NOT_FOUND:I = -0x1


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static add([BB)[B
    .registers 3

    #@0
    .line 531
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@3
    move-result-object p1

    #@4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [B

    #@c
    return-object p0
.end method

.method public static add([BIB)[B
    .registers 4

    #@0
    .line 841
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@3
    move-result-object p2

    #@4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [B

    #@c
    return-object p0
.end method

.method public static add([BI[B)[B
    .registers 4

    #@0
    .line 716
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@2
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    if-nez p0, :cond_a

    #@8
    const/4 p0, 0x0

    #@9
    return-object p0

    #@a
    .line 718
    :cond_a
    check-cast p0, [B

    #@c
    return-object p0
.end method

.method public static add([B[B)[B
    .registers 2

    #@0
    .line 616
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [B

    #@6
    return-object p0
.end method

.method public static add([CC)[C
    .registers 3

    #@0
    .line 536
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3
    move-result-object p1

    #@4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [C

    #@c
    return-object p0
.end method

.method public static add([CIC)[C
    .registers 4

    #@0
    .line 836
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3
    move-result-object p2

    #@4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [C

    #@c
    return-object p0
.end method

.method public static add([CI[C)[C
    .registers 4

    #@0
    .line 709
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@2
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    if-nez p0, :cond_a

    #@8
    const/4 p0, 0x0

    #@9
    return-object p0

    #@a
    .line 711
    :cond_a
    check-cast p0, [C

    #@c
    return-object p0
.end method

.method public static add([C[C)[C
    .registers 2

    #@0
    .line 611
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [C

    #@6
    return-object p0
.end method

.method public static add([DD)[D
    .registers 3

    #@0
    .line 541
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object p1

    #@4
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [D

    #@c
    return-object p0
.end method

.method public static add([DID)[D
    .registers 4

    #@0
    .line 866
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object p2

    #@4
    sget-object p3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [D

    #@c
    return-object p0
.end method

.method public static add([DI[D)[D
    .registers 4

    #@0
    .line 751
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@2
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    if-nez p0, :cond_a

    #@8
    const/4 p0, 0x0

    #@9
    return-object p0

    #@a
    .line 753
    :cond_a
    check-cast p0, [D

    #@c
    return-object p0
.end method

.method public static add([D[D)[D
    .registers 2

    #@0
    .line 641
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [D

    #@6
    return-object p0
.end method

.method public static add([FF)[F
    .registers 3

    #@0
    .line 546
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3
    move-result-object p1

    #@4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [F

    #@c
    return-object p0
.end method

.method public static add([FIF)[F
    .registers 4

    #@0
    .line 861
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3
    move-result-object p2

    #@4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [F

    #@c
    return-object p0
.end method

.method public static add([FI[F)[F
    .registers 4

    #@0
    .line 744
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@2
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    if-nez p0, :cond_a

    #@8
    const/4 p0, 0x0

    #@9
    return-object p0

    #@a
    .line 746
    :cond_a
    check-cast p0, [F

    #@c
    return-object p0
.end method

.method public static add([F[F)[F
    .registers 2

    #@0
    .line 636
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [F

    #@6
    return-object p0
.end method

.method public static add([II)[I
    .registers 3

    #@0
    .line 551
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object p1

    #@4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [I

    #@c
    return-object p0
.end method

.method public static add([III)[I
    .registers 4

    #@0
    .line 851
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object p2

    #@4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [I

    #@c
    return-object p0
.end method

.method public static add([II[I)[I
    .registers 4

    #@0
    .line 730
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@2
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    if-nez p0, :cond_a

    #@8
    const/4 p0, 0x0

    #@9
    return-object p0

    #@a
    .line 732
    :cond_a
    check-cast p0, [I

    #@c
    return-object p0
.end method

.method public static add([I[I)[I
    .registers 2

    #@0
    .line 626
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [I

    #@6
    return-object p0
.end method

.method public static add([JIJ)[J
    .registers 4

    #@0
    .line 856
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object p2

    #@4
    sget-object p3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [J

    #@c
    return-object p0
.end method

.method public static add([JI[J)[J
    .registers 4

    #@0
    .line 737
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@2
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    if-nez p0, :cond_a

    #@8
    const/4 p0, 0x0

    #@9
    return-object p0

    #@a
    .line 739
    :cond_a
    check-cast p0, [J

    #@c
    return-object p0
.end method

.method public static add([JJ)[J
    .registers 3

    #@0
    .line 556
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object p1

    #@4
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [J

    #@c
    return-object p0
.end method

.method public static add([J[J)[J
    .registers 2

    #@0
    .line 631
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [J

    #@6
    return-object p0
.end method

.method public static add([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 820
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    goto :goto_11

    #@b
    :cond_b
    if-eqz p2, :cond_18

    #@d
    .line 822
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v0

    #@11
    .line 826
    :goto_11
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@14
    move-result-object p0

    #@15
    check-cast p0, [Ljava/lang/Object;

    #@17
    return-object p0

    #@18
    :cond_18
    const/4 p0, 0x1

    #@19
    new-array p0, p0, [Ljava/lang/Object;

    #@1b
    const/4 p1, 0x0

    #@1c
    const/4 p2, 0x0

    #@1d
    aput-object p2, p0, p1

    #@1f
    return-object p0
.end method

.method public static add([Ljava/lang/Object;I[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I[TT;)[TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 692
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    goto :goto_15

    #@b
    :cond_b
    if-eqz p2, :cond_1c

    #@d
    .line 694
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@14
    move-result-object v0

    #@15
    .line 698
    :goto_15
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@18
    move-result-object p0

    #@19
    check-cast p0, [Ljava/lang/Object;

    #@1b
    return-object p0

    #@1c
    :cond_1c
    const/4 p0, 0x0

    #@1d
    return-object p0
.end method

.method public static add([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_7

    #@2
    .line 520
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    goto :goto_10

    #@7
    :cond_7
    if-eqz p1, :cond_e

    #@9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    move-result-object v0

    #@d
    goto :goto_10

    #@e
    :cond_e
    const-class v0, Ljava/lang/Object;

    #@10
    .line 521
    :goto_10
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@13
    move-result-object p0

    #@14
    check-cast p0, [Ljava/lang/Object;

    #@16
    return-object p0
.end method

.method public static add([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    #@0
    .line 601
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [Ljava/lang/Object;

    #@6
    return-object p0
.end method

.method public static add([SIS)[S
    .registers 4

    #@0
    .line 846
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@3
    move-result-object p2

    #@4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [S

    #@c
    return-object p0
.end method

.method public static add([SI[S)[S
    .registers 4

    #@0
    .line 723
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@2
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    if-nez p0, :cond_a

    #@8
    const/4 p0, 0x0

    #@9
    return-object p0

    #@a
    .line 725
    :cond_a
    check-cast p0, [S

    #@c
    return-object p0
.end method

.method public static add([SS)[S
    .registers 3

    #@0
    .line 561
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@3
    move-result-object p1

    #@4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [S

    #@c
    return-object p0
.end method

.method public static add([S[S)[S
    .registers 2

    #@0
    .line 621
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [S

    #@6
    return-object p0
.end method

.method public static add([ZIZ)[Z
    .registers 4

    #@0
    .line 831
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object p2

    #@4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [Z

    #@c
    return-object p0
.end method

.method public static add([ZI[Z)[Z
    .registers 4

    #@0
    .line 703
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@2
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@5
    move-result-object p0

    #@6
    if-nez p0, :cond_a

    #@8
    const/4 p0, 0x0

    #@9
    return-object p0

    #@a
    .line 705
    :cond_a
    check-cast p0, [Z

    #@c
    return-object p0
.end method

.method public static add([ZZ)[Z
    .registers 3

    #@0
    .line 526
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object p1

    #@4
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@6
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    check-cast p0, [Z

    #@c
    return-object p0
.end method

.method public static add([Z[Z)[Z
    .registers 2

    #@0
    .line 606
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [Z

    #@6
    return-object p0
.end method

.method public static varargs asArrayList([Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 1986
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    if-eqz p0, :cond_12

    #@7
    .line 1987
    array-length v1, p0

    #@8
    if-nez v1, :cond_b

    #@a
    goto :goto_12

    #@b
    .line 1988
    :cond_b
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@e
    move-result-object p0

    #@f
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@12
    :cond_12
    :goto_12
    return-object v0
.end method

.method public static varargs asLinkedList([Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 1994
    new-instance v0, Ljava/util/LinkedList;

    #@2
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@5
    if-eqz p0, :cond_12

    #@7
    .line 1995
    array-length v1, p0

    #@8
    if-nez v1, :cond_b

    #@a
    goto :goto_12

    #@b
    .line 1996
    :cond_b
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@e
    move-result-object p0

    #@f
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@12
    :cond_12
    :goto_12
    return-object v0
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_b

    #@2
    .line 1973
    array-length v0, p0

    #@3
    if-nez v0, :cond_6

    #@5
    goto :goto_b

    #@6
    .line 1976
    :cond_6
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 1974
    :cond_b
    :goto_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@e
    move-result-object p0

    #@f
    return-object p0
.end method

.method public static varargs asUnmodifiableList([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 1981
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@3
    move-result-object p0

    #@4
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@7
    move-result-object p0

    #@8
    return-object p0
.end method

.method public static contains([BB)Z
    .registers 2

    #@0
    .line 1400
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([BB)I

    #@3
    move-result p0

    #@4
    const/4 p1, -0x1

    #@5
    if-eq p0, p1, :cond_9

    #@7
    const/4 p0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    :goto_a
    return p0
.end method

.method public static contains([CC)Z
    .registers 2

    #@0
    .line 1352
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([CC)I

    #@3
    move-result p0

    #@4
    const/4 p1, -0x1

    #@5
    if-eq p0, p1, :cond_9

    #@7
    const/4 p0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    :goto_a
    return p0
.end method

.method public static contains([DD)Z
    .registers 3

    #@0
    .line 1492
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([DD)I

    #@3
    move-result p0

    #@4
    const/4 p1, -0x1

    #@5
    if-eq p0, p1, :cond_9

    #@7
    const/4 p0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    :goto_a
    return p0
.end method

.method public static contains([DDD)Z
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-wide v1, p1

    #@3
    move-wide v4, p3

    #@4
    .line 1496
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([DDID)I

    #@7
    move-result p0

    #@8
    const/4 p1, -0x1

    #@9
    if-eq p0, p1, :cond_d

    #@b
    const/4 p0, 0x1

    #@c
    goto :goto_e

    #@d
    :cond_d
    const/4 p0, 0x0

    #@e
    :goto_e
    return p0
.end method

.method public static contains([FF)Z
    .registers 2

    #@0
    .line 1544
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([FF)I

    #@3
    move-result p0

    #@4
    const/4 p1, -0x1

    #@5
    if-eq p0, p1, :cond_9

    #@7
    const/4 p0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    :goto_a
    return p0
.end method

.method public static contains([II)Z
    .registers 2

    #@0
    .line 1256
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([II)I

    #@3
    move-result p0

    #@4
    const/4 p1, -0x1

    #@5
    if-eq p0, p1, :cond_9

    #@7
    const/4 p0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    :goto_a
    return p0
.end method

.method public static contains([JJ)Z
    .registers 3

    #@0
    .line 1208
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([JJ)I

    #@3
    move-result p0

    #@4
    const/4 p1, -0x1

    #@5
    if-eq p0, p1, :cond_9

    #@7
    const/4 p0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    :goto_a
    return p0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 1160
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    #@3
    move-result p0

    #@4
    const/4 p1, -0x1

    #@5
    if-eq p0, p1, :cond_9

    #@7
    const/4 p0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    :goto_a
    return p0
.end method

.method public static contains([SS)Z
    .registers 2

    #@0
    .line 1304
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([SS)I

    #@3
    move-result p0

    #@4
    const/4 p1, -0x1

    #@5
    if-eq p0, p1, :cond_9

    #@7
    const/4 p0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    :goto_a
    return p0
.end method

.method public static contains([ZZ)Z
    .registers 2

    #@0
    .line 1592
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([ZZ)I

    #@3
    move-result p0

    #@4
    const/4 p1, -0x1

    #@5
    if-eq p0, p1, :cond_9

    #@7
    const/4 p0, 0x1

    #@8
    goto :goto_a

    #@9
    :cond_9
    const/4 p0, 0x0

    #@a
    :goto_a
    return p0
.end method

.method public static copy([B)[B
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 393
    array-length v1, p0

    #@6
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([BII)[B

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static copy([C)[C
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 387
    array-length v1, p0

    #@6
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([CII)[C

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static copy([D)[D
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 399
    array-length v1, p0

    #@6
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([DII)[D

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static copy([F)[F
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 405
    array-length v1, p0

    #@6
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([FII)[F

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static copy([I)[I
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 375
    array-length v1, p0

    #@6
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([III)[I

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static copy([J)[J
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 369
    array-length v1, p0

    #@6
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([JII)[J

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static copy([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 363
    array-length v1, p0

    #@6
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([Ljava/lang/Object;II)[Ljava/lang/Object;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static copy([S)[S
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 381
    array-length v1, p0

    #@6
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([SII)[S

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static copy([Z)[Z
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 411
    array-length v1, p0

    #@6
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->subArray([ZII)[Z

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static equals([B[B)Z
    .registers 2

    #@0
    .line 164
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static equals([C[C)Z
    .registers 2

    #@0
    .line 168
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static equals([D[D)Z
    .registers 2

    #@0
    .line 172
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static equals([F[F)Z
    .registers 2

    #@0
    .line 176
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static equals([I[I)Z
    .registers 2

    #@0
    .line 180
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 156
    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static equals([S[S)Z
    .registers 2

    #@0
    .line 184
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([S[S)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static equals([Z[Z)Z
    .registers 2

    #@0
    .line 160
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static forAllDo(Ljava/lang/Object;Lcom/blankj/utilcode/util/ArrayUtils$Closure;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/blankj/utilcode/util/ArrayUtils$Closure<",
            "TE;>;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_dd

    #@2
    if-nez p1, :cond_6

    #@4
    goto/16 :goto_dd

    #@6
    .line 2050
    :cond_6
    instance-of v0, p0, [Ljava/lang/Object;

    #@8
    const/4 v1, 0x0

    #@9
    if-eqz v0, :cond_18

    #@b
    .line 2051
    check-cast p0, [Ljava/lang/Object;

    #@d
    .line 2052
    array-length v0, p0

    #@e
    :goto_e
    if-ge v1, v0, :cond_c3

    #@10
    .line 2053
    aget-object v2, p0, v1

    #@12
    .line 2054
    invoke-interface {p1, v1, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    #@15
    add-int/lit8 v1, v1, 0x1

    #@17
    goto :goto_e

    #@18
    .line 2056
    :cond_18
    instance-of v0, p0, [Z

    #@1a
    if-eqz v0, :cond_30

    #@1c
    .line 2057
    check-cast p0, [Z

    #@1e
    .line 2058
    array-length v0, p0

    #@1f
    :goto_1f
    if-ge v1, v0, :cond_c3

    #@21
    .line 2059
    aget-boolean v2, p0, v1

    #@23
    if-eqz v2, :cond_28

    #@25
    .line 2060
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@27
    goto :goto_2a

    #@28
    :cond_28
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@2a
    :goto_2a
    invoke-interface {p1, v1, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    #@2d
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_1f

    #@30
    .line 2062
    :cond_30
    instance-of v0, p0, [B

    #@32
    if-eqz v0, :cond_45

    #@34
    .line 2063
    check-cast p0, [B

    #@36
    .line 2064
    array-length v0, p0

    #@37
    :goto_37
    if-ge v1, v0, :cond_c3

    #@39
    .line 2065
    aget-byte v2, p0, v1

    #@3b
    .line 2066
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@3e
    move-result-object v2

    #@3f
    invoke-interface {p1, v1, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    #@42
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_37

    #@45
    .line 2068
    :cond_45
    instance-of v0, p0, [C

    #@47
    if-eqz v0, :cond_5a

    #@49
    .line 2069
    check-cast p0, [C

    #@4b
    .line 2070
    array-length v0, p0

    #@4c
    :goto_4c
    if-ge v1, v0, :cond_c3

    #@4e
    .line 2071
    aget-char v2, p0, v1

    #@50
    .line 2072
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@53
    move-result-object v2

    #@54
    invoke-interface {p1, v1, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    #@57
    add-int/lit8 v1, v1, 0x1

    #@59
    goto :goto_4c

    #@5a
    .line 2074
    :cond_5a
    instance-of v0, p0, [S

    #@5c
    if-eqz v0, :cond_6f

    #@5e
    .line 2075
    check-cast p0, [S

    #@60
    .line 2076
    array-length v0, p0

    #@61
    :goto_61
    if-ge v1, v0, :cond_c3

    #@63
    .line 2077
    aget-short v2, p0, v1

    #@65
    .line 2078
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@68
    move-result-object v2

    #@69
    invoke-interface {p1, v1, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    #@6c
    add-int/lit8 v1, v1, 0x1

    #@6e
    goto :goto_61

    #@6f
    .line 2080
    :cond_6f
    instance-of v0, p0, [I

    #@71
    if-eqz v0, :cond_84

    #@73
    .line 2081
    check-cast p0, [I

    #@75
    .line 2082
    array-length v0, p0

    #@76
    :goto_76
    if-ge v1, v0, :cond_c3

    #@78
    .line 2083
    aget v2, p0, v1

    #@7a
    .line 2084
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7d
    move-result-object v2

    #@7e
    invoke-interface {p1, v1, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    #@81
    add-int/lit8 v1, v1, 0x1

    #@83
    goto :goto_76

    #@84
    .line 2086
    :cond_84
    instance-of v0, p0, [J

    #@86
    if-eqz v0, :cond_99

    #@88
    .line 2087
    check-cast p0, [J

    #@8a
    .line 2088
    array-length v0, p0

    #@8b
    :goto_8b
    if-ge v1, v0, :cond_c3

    #@8d
    .line 2089
    aget-wide v2, p0, v1

    #@8f
    .line 2090
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@92
    move-result-object v2

    #@93
    invoke-interface {p1, v1, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    #@96
    add-int/lit8 v1, v1, 0x1

    #@98
    goto :goto_8b

    #@99
    .line 2092
    :cond_99
    instance-of v0, p0, [F

    #@9b
    if-eqz v0, :cond_ae

    #@9d
    .line 2093
    check-cast p0, [F

    #@9f
    .line 2094
    array-length v0, p0

    #@a0
    :goto_a0
    if-ge v1, v0, :cond_c3

    #@a2
    .line 2095
    aget v2, p0, v1

    #@a4
    .line 2096
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a7
    move-result-object v2

    #@a8
    invoke-interface {p1, v1, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    #@ab
    add-int/lit8 v1, v1, 0x1

    #@ad
    goto :goto_a0

    #@ae
    .line 2098
    :cond_ae
    instance-of v0, p0, [D

    #@b0
    if-eqz v0, :cond_c4

    #@b2
    .line 2099
    check-cast p0, [D

    #@b4
    .line 2100
    array-length v0, p0

    #@b5
    :goto_b5
    if-ge v1, v0, :cond_c3

    #@b7
    .line 2101
    aget-wide v2, p0, v1

    #@b9
    .line 2102
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@bc
    move-result-object v2

    #@bd
    invoke-interface {p1, v1, v2}, Lcom/blankj/utilcode/util/ArrayUtils$Closure;->execute(ILjava/lang/Object;)V

    #@c0
    add-int/lit8 v1, v1, 0x1

    #@c2
    goto :goto_b5

    #@c3
    :cond_c3
    return-void

    #@c4
    .line 2105
    :cond_c4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@c6
    new-instance v0, Ljava/lang/StringBuilder;

    #@c8
    const-string v1, "Not an array: "

    #@ca
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@cd
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@d0
    move-result-object p0

    #@d1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object p0

    #@d5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d8
    move-result-object p0

    #@d9
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@dc
    throw p1

    #@dd
    :cond_dd
    :goto_dd
    return-void
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 115
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->get(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static get(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    if-nez p0, :cond_3

    #@2
    return-object p2

    #@3
    .line 130
    :cond_3
    :try_start_3
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@6
    move-result-object p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    #@7
    return-object p0

    #@8
    :catch_8
    return-object p2
.end method

.method public static getLength(Ljava/lang/Object;)I
    .registers 1

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return p0

    #@4
    .line 99
    :cond_4
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static indexOf([BB)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1360
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([BBI)I

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static indexOf([BBI)I
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p2, :cond_7

    #@6
    const/4 p2, 0x0

    #@7
    .line 1370
    :cond_7
    :goto_7
    array-length v1, p0

    #@8
    if-ge p2, v1, :cond_12

    #@a
    .line 1371
    aget-byte v1, p0, p2

    #@c
    if-ne p1, v1, :cond_f

    #@e
    return p2

    #@f
    :cond_f
    add-int/lit8 p2, p2, 0x1

    #@11
    goto :goto_7

    #@12
    :cond_12
    return v0
.end method

.method public static indexOf([CC)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1312
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([CCI)I

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static indexOf([CCI)I
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p2, :cond_7

    #@6
    const/4 p2, 0x0

    #@7
    .line 1322
    :cond_7
    :goto_7
    array-length v1, p0

    #@8
    if-ge p2, v1, :cond_12

    #@a
    .line 1323
    aget-char v1, p0, p2

    #@c
    if-ne p1, v1, :cond_f

    #@e
    return p2

    #@f
    :cond_f
    add-int/lit8 p2, p2, 0x1

    #@11
    goto :goto_7

    #@12
    :cond_12
    return v0
.end method

.method public static indexOf([DD)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1408
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([DDI)I

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static indexOf([DDD)I
    .registers 11

    #@0
    const/4 v3, 0x0

    #@1
    move-object v0, p0

    #@2
    move-wide v1, p1

    #@3
    move-wide v4, p3

    #@4
    .line 1412
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([DDID)I

    #@7
    move-result p0

    #@8
    return p0
.end method

.method public static indexOf([DDI)I
    .registers 8

    #@0
    .line 1416
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    if-gez p3, :cond_b

    #@a
    const/4 p3, 0x0

    #@b
    .line 1422
    :cond_b
    :goto_b
    array-length v0, p0

    #@c
    if-ge p3, v0, :cond_18

    #@e
    .line 1423
    aget-wide v2, p0, p3

    #@10
    cmpl-double v0, p1, v2

    #@12
    if-nez v0, :cond_15

    #@14
    return p3

    #@15
    :cond_15
    add-int/lit8 p3, p3, 0x1

    #@17
    goto :goto_b

    #@18
    :cond_18
    return v1
.end method

.method public static indexOf([DDID)I
    .registers 10

    #@0
    .line 1431
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    if-gez p3, :cond_b

    #@a
    const/4 p3, 0x0

    #@b
    :cond_b
    sub-double v2, p1, p4

    #@d
    add-double/2addr p1, p4

    #@e
    .line 1439
    :goto_e
    array-length p4, p0

    #@f
    if-ge p3, p4, :cond_1f

    #@11
    .line 1440
    aget-wide p4, p0, p3

    #@13
    cmpl-double v0, p4, v2

    #@15
    if-ltz v0, :cond_1c

    #@17
    cmpg-double p4, p4, p1

    #@19
    if-gtz p4, :cond_1c

    #@1b
    return p3

    #@1c
    :cond_1c
    add-int/lit8 p3, p3, 0x1

    #@1e
    goto :goto_e

    #@1f
    :cond_1f
    return v1
.end method

.method public static indexOf([FF)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1504
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([FFI)I

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static indexOf([FFI)I
    .registers 5

    #@0
    .line 1508
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    if-gez p2, :cond_b

    #@a
    const/4 p2, 0x0

    #@b
    .line 1514
    :cond_b
    :goto_b
    array-length v0, p0

    #@c
    if-ge p2, v0, :cond_18

    #@e
    .line 1515
    aget v0, p0, p2

    #@10
    cmpl-float v0, p1, v0

    #@12
    if-nez v0, :cond_15

    #@14
    return p2

    #@15
    :cond_15
    add-int/lit8 p2, p2, 0x1

    #@17
    goto :goto_b

    #@18
    :cond_18
    return v1
.end method

.method public static indexOf([II)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1216
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([III)I

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static indexOf([III)I
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p2, :cond_7

    #@6
    const/4 p2, 0x0

    #@7
    .line 1226
    :cond_7
    :goto_7
    array-length v1, p0

    #@8
    if-ge p2, v1, :cond_12

    #@a
    .line 1227
    aget v1, p0, p2

    #@c
    if-ne p1, v1, :cond_f

    #@e
    return p2

    #@f
    :cond_f
    add-int/lit8 p2, p2, 0x1

    #@11
    goto :goto_7

    #@12
    :cond_12
    return v0
.end method

.method public static indexOf([JJ)I
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 1168
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([JJI)I

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static indexOf([JJI)I
    .registers 7

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p3, :cond_7

    #@6
    const/4 p3, 0x0

    #@7
    .line 1178
    :cond_7
    :goto_7
    array-length v1, p0

    #@8
    if-ge p3, v1, :cond_14

    #@a
    .line 1179
    aget-wide v1, p0, p3

    #@c
    cmp-long v1, p1, v1

    #@e
    if-nez v1, :cond_11

    #@10
    return p3

    #@11
    :cond_11
    add-int/lit8 p3, p3, 0x1

    #@13
    goto :goto_7

    #@14
    :cond_14
    return v0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1104
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p2, :cond_7

    #@6
    const/4 p2, 0x0

    #@7
    :cond_7
    if-nez p1, :cond_14

    #@9
    .line 1115
    :goto_9
    array-length p1, p0

    #@a
    if-ge p2, p1, :cond_23

    #@c
    .line 1116
    aget-object p1, p0, p2

    #@e
    if-nez p1, :cond_11

    #@10
    return p2

    #@11
    :cond_11
    add-int/lit8 p2, p2, 0x1

    #@13
    goto :goto_9

    #@14
    .line 1121
    :cond_14
    :goto_14
    array-length v1, p0

    #@15
    if-ge p2, v1, :cond_23

    #@17
    .line 1122
    aget-object v1, p0, p2

    #@19
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_20

    #@1f
    return p2

    #@20
    :cond_20
    add-int/lit8 p2, p2, 0x1

    #@22
    goto :goto_14

    #@23
    :cond_23
    return v0
.end method

.method public static indexOf([SS)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1264
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([SSI)I

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static indexOf([SSI)I
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p2, :cond_7

    #@6
    const/4 p2, 0x0

    #@7
    .line 1274
    :cond_7
    :goto_7
    array-length v1, p0

    #@8
    if-ge p2, v1, :cond_12

    #@a
    .line 1275
    aget-short v1, p0, p2

    #@c
    if-ne p1, v1, :cond_f

    #@e
    return p2

    #@f
    :cond_f
    add-int/lit8 p2, p2, 0x1

    #@11
    goto :goto_7

    #@12
    :cond_12
    return v0
.end method

.method public static indexOf([ZZ)I
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 1552
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([ZZI)I

    #@4
    move-result p0

    #@5
    return p0
.end method

.method public static indexOf([ZZI)I
    .registers 5

    #@0
    .line 1556
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    if-gez p2, :cond_b

    #@a
    const/4 p2, 0x0

    #@b
    .line 1562
    :cond_b
    :goto_b
    array-length v0, p0

    #@c
    if-ge p2, v0, :cond_16

    #@e
    .line 1563
    aget-boolean v0, p0, p2

    #@10
    if-ne p1, v0, :cond_13

    #@12
    return p2

    #@13
    :cond_13
    add-int/lit8 p2, p2, 0x1

    #@15
    goto :goto_b

    #@16
    :cond_16
    return v1
.end method

.method public static isEmpty(Ljava/lang/Object;)Z
    .registers 1

    #@0
    .line 88
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    #@3
    move-result p0

    #@4
    if-nez p0, :cond_8

    #@6
    const/4 p0, 0x1

    #@7
    goto :goto_9

    #@8
    :cond_8
    const/4 p0, 0x0

    #@9
    :goto_9
    return p0
.end method

.method public static isSameLength(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    #@0
    .line 103
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    #@3
    move-result p0

    #@4
    invoke-static {p1}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    #@7
    move-result p1

    #@8
    if-ne p0, p1, :cond_c

    #@a
    const/4 p0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 p0, 0x0

    #@d
    :goto_d
    return p0
.end method

.method public static lastIndexOf([BB)I
    .registers 3

    #@0
    const v0, 0x7fffffff

    #@3
    .line 1379
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([BBI)I

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static lastIndexOf([BBI)I
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p2, :cond_7

    #@6
    return v0

    #@7
    .line 1388
    :cond_7
    array-length v1, p0

    #@8
    if-lt p2, v1, :cond_d

    #@a
    .line 1389
    array-length p2, p0

    #@b
    add-int/lit8 p2, p2, -0x1

    #@d
    :cond_d
    :goto_d
    if-ltz p2, :cond_17

    #@f
    .line 1392
    aget-byte v1, p0, p2

    #@11
    if-ne p1, v1, :cond_14

    #@13
    return p2

    #@14
    :cond_14
    add-int/lit8 p2, p2, -0x1

    #@16
    goto :goto_d

    #@17
    :cond_17
    return v0
.end method

.method public static lastIndexOf([CC)I
    .registers 3

    #@0
    const v0, 0x7fffffff

    #@3
    .line 1331
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([CCI)I

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static lastIndexOf([CCI)I
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p2, :cond_7

    #@6
    return v0

    #@7
    .line 1340
    :cond_7
    array-length v1, p0

    #@8
    if-lt p2, v1, :cond_d

    #@a
    .line 1341
    array-length p2, p0

    #@b
    add-int/lit8 p2, p2, -0x1

    #@d
    :cond_d
    :goto_d
    if-ltz p2, :cond_17

    #@f
    .line 1344
    aget-char v1, p0, p2

    #@11
    if-ne p1, v1, :cond_14

    #@13
    return p2

    #@14
    :cond_14
    add-int/lit8 p2, p2, -0x1

    #@16
    goto :goto_d

    #@17
    :cond_17
    return v0
.end method

.method public static lastIndexOf([DD)I
    .registers 4

    #@0
    const v0, 0x7fffffff

    #@3
    .line 1448
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([DDI)I

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static lastIndexOf([DDD)I
    .registers 11

    #@0
    const v3, 0x7fffffff

    #@3
    move-object v0, p0

    #@4
    move-wide v1, p1

    #@5
    move-wide v4, p3

    #@6
    .line 1452
    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([DDID)I

    #@9
    move-result p0

    #@a
    return p0
.end method

.method public static lastIndexOf([DDI)I
    .registers 8

    #@0
    .line 1456
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    if-gez p3, :cond_b

    #@a
    return v1

    #@b
    .line 1461
    :cond_b
    array-length v0, p0

    #@c
    if-lt p3, v0, :cond_11

    #@e
    .line 1462
    array-length p3, p0

    #@f
    add-int/lit8 p3, p3, -0x1

    #@11
    :cond_11
    :goto_11
    if-ltz p3, :cond_1d

    #@13
    .line 1465
    aget-wide v2, p0, p3

    #@15
    cmpl-double v0, p1, v2

    #@17
    if-nez v0, :cond_1a

    #@19
    return p3

    #@1a
    :cond_1a
    add-int/lit8 p3, p3, -0x1

    #@1c
    goto :goto_11

    #@1d
    :cond_1d
    return v1
.end method

.method public static lastIndexOf([DDID)I
    .registers 10

    #@0
    .line 1473
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    if-gez p3, :cond_b

    #@a
    return v1

    #@b
    .line 1478
    :cond_b
    array-length v0, p0

    #@c
    if-lt p3, v0, :cond_11

    #@e
    .line 1479
    array-length p3, p0

    #@f
    add-int/lit8 p3, p3, -0x1

    #@11
    :cond_11
    sub-double v2, p1, p4

    #@13
    add-double/2addr p1, p4

    #@14
    :goto_14
    if-ltz p3, :cond_24

    #@16
    .line 1484
    aget-wide p4, p0, p3

    #@18
    cmpl-double v0, p4, v2

    #@1a
    if-ltz v0, :cond_21

    #@1c
    cmpg-double p4, p4, p1

    #@1e
    if-gtz p4, :cond_21

    #@20
    return p3

    #@21
    :cond_21
    add-int/lit8 p3, p3, -0x1

    #@23
    goto :goto_14

    #@24
    :cond_24
    return v1
.end method

.method public static lastIndexOf([FF)I
    .registers 3

    #@0
    const v0, 0x7fffffff

    #@3
    .line 1523
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([FFI)I

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static lastIndexOf([FFI)I
    .registers 5

    #@0
    .line 1527
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    if-gez p2, :cond_b

    #@a
    return v1

    #@b
    .line 1532
    :cond_b
    array-length v0, p0

    #@c
    if-lt p2, v0, :cond_11

    #@e
    .line 1533
    array-length p2, p0

    #@f
    add-int/lit8 p2, p2, -0x1

    #@11
    :cond_11
    :goto_11
    if-ltz p2, :cond_1d

    #@13
    .line 1536
    aget v0, p0, p2

    #@15
    cmpl-float v0, p1, v0

    #@17
    if-nez v0, :cond_1a

    #@19
    return p2

    #@1a
    :cond_1a
    add-int/lit8 p2, p2, -0x1

    #@1c
    goto :goto_11

    #@1d
    :cond_1d
    return v1
.end method

.method public static lastIndexOf([II)I
    .registers 3

    #@0
    const v0, 0x7fffffff

    #@3
    .line 1235
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([III)I

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static lastIndexOf([III)I
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p2, :cond_7

    #@6
    return v0

    #@7
    .line 1244
    :cond_7
    array-length v1, p0

    #@8
    if-lt p2, v1, :cond_d

    #@a
    .line 1245
    array-length p2, p0

    #@b
    add-int/lit8 p2, p2, -0x1

    #@d
    :cond_d
    :goto_d
    if-ltz p2, :cond_17

    #@f
    .line 1248
    aget v1, p0, p2

    #@11
    if-ne p1, v1, :cond_14

    #@13
    return p2

    #@14
    :cond_14
    add-int/lit8 p2, p2, -0x1

    #@16
    goto :goto_d

    #@17
    :cond_17
    return v0
.end method

.method public static lastIndexOf([JJ)I
    .registers 4

    #@0
    const v0, 0x7fffffff

    #@3
    .line 1187
    invoke-static {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([JJI)I

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static lastIndexOf([JJI)I
    .registers 7

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p3, :cond_7

    #@6
    return v0

    #@7
    .line 1196
    :cond_7
    array-length v1, p0

    #@8
    if-lt p3, v1, :cond_d

    #@a
    .line 1197
    array-length p3, p0

    #@b
    add-int/lit8 p3, p3, -0x1

    #@d
    :cond_d
    :goto_d
    if-ltz p3, :cond_19

    #@f
    .line 1200
    aget-wide v1, p0, p3

    #@11
    cmp-long v1, p1, v1

    #@13
    if-nez v1, :cond_16

    #@15
    return p3

    #@16
    :cond_16
    add-int/lit8 p3, p3, -0x1

    #@18
    goto :goto_d

    #@19
    :cond_19
    return v0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    #@0
    const v0, 0x7fffffff

    #@3
    .line 1131
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static lastIndexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p2, :cond_7

    #@6
    return v0

    #@7
    .line 1140
    :cond_7
    array-length v1, p0

    #@8
    if-lt p2, v1, :cond_d

    #@a
    .line 1141
    array-length p2, p0

    #@b
    add-int/lit8 p2, p2, -0x1

    #@d
    :cond_d
    if-nez p1, :cond_19

    #@f
    :goto_f
    if-ltz p2, :cond_27

    #@11
    .line 1145
    aget-object p1, p0, p2

    #@13
    if-nez p1, :cond_16

    #@15
    return p2

    #@16
    :cond_16
    add-int/lit8 p2, p2, -0x1

    #@18
    goto :goto_f

    #@19
    :cond_19
    :goto_19
    if-ltz p2, :cond_27

    #@1b
    .line 1151
    aget-object v1, p0, p2

    #@1d
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    if-eqz v1, :cond_24

    #@23
    return p2

    #@24
    :cond_24
    add-int/lit8 p2, p2, -0x1

    #@26
    goto :goto_19

    #@27
    :cond_27
    return v0
.end method

.method public static lastIndexOf([SS)I
    .registers 3

    #@0
    const v0, 0x7fffffff

    #@3
    .line 1283
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([SSI)I

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static lastIndexOf([SSI)I
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    if-nez p0, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    if-gez p2, :cond_7

    #@6
    return v0

    #@7
    .line 1292
    :cond_7
    array-length v1, p0

    #@8
    if-lt p2, v1, :cond_d

    #@a
    .line 1293
    array-length p2, p0

    #@b
    add-int/lit8 p2, p2, -0x1

    #@d
    :cond_d
    :goto_d
    if-ltz p2, :cond_17

    #@f
    .line 1296
    aget-short v1, p0, p2

    #@11
    if-ne p1, v1, :cond_14

    #@13
    return p2

    #@14
    :cond_14
    add-int/lit8 p2, p2, -0x1

    #@16
    goto :goto_d

    #@17
    :cond_17
    return v0
.end method

.method public static lastIndexOf([ZZ)I
    .registers 3

    #@0
    const v0, 0x7fffffff

    #@3
    .line 1571
    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/ArrayUtils;->lastIndexOf([ZZI)I

    #@6
    move-result p0

    #@7
    return p0
.end method

.method public static lastIndexOf([ZZI)I
    .registers 5

    #@0
    .line 1575
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->isEmpty(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eqz v0, :cond_8

    #@7
    return v1

    #@8
    :cond_8
    if-gez p2, :cond_b

    #@a
    return v1

    #@b
    .line 1580
    :cond_b
    array-length v0, p0

    #@c
    if-lt p2, v0, :cond_11

    #@e
    .line 1581
    array-length p2, p0

    #@f
    add-int/lit8 p2, p2, -0x1

    #@11
    :cond_11
    :goto_11
    if-ltz p2, :cond_1b

    #@13
    .line 1584
    aget-boolean v0, p0, p2

    #@15
    if-ne p1, v0, :cond_18

    #@17
    return p2

    #@18
    :cond_18
    add-int/lit8 p2, p2, -0x1

    #@1a
    goto :goto_11

    #@1b
    :cond_1b
    return v1
.end method

.method public static varargs newArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    return-object p0
.end method

.method public static varargs newBooleanArray([Z)[Z
    .registers 1

    #@0
    return-object p0
.end method

.method public static varargs newByteArray([B)[B
    .registers 1

    #@0
    return-object p0
.end method

.method public static varargs newCharArray([C)[C
    .registers 1

    #@0
    return-object p0
.end method

.method public static varargs newDoubleArray([D)[D
    .registers 1

    #@0
    return-object p0
.end method

.method public static varargs newFloatArray([F)[F
    .registers 1

    #@0
    return-object p0
.end method

.method public static varargs newIntArray([I)[I
    .registers 1

    #@0
    return-object p0
.end method

.method public static varargs newLongArray([J)[J
    .registers 1

    #@0
    return-object p0
.end method

.method public static varargs newShortArray([S)[S
    .registers 1

    #@0
    return-object p0
.end method

.method private static realAdd(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7

    #@0
    const-string v0, "Index: "

    #@2
    const/4 v1, 0x0

    #@3
    if-nez p0, :cond_29

    #@5
    if-nez p1, :cond_10

    #@7
    const/4 p0, 0x1

    #@8
    .line 875
    invoke-static {p3, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@b
    move-result-object p0

    #@c
    .line 876
    invoke-static {p0, v1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    #@f
    return-object p0

    #@10
    .line 873
    :cond_10
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    #@12
    new-instance p2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@17
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p1

    #@1b
    const-string p2, ", Length: 0"

    #@1d
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object p1

    #@21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object p1

    #@25
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@28
    throw p0

    #@29
    .line 879
    :cond_29
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@2c
    move-result v2

    #@2d
    if-gt p1, v2, :cond_46

    #@2f
    if-ltz p1, :cond_46

    #@31
    add-int/lit8 v0, v2, 0x1

    #@33
    .line 883
    invoke-static {p3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@36
    move-result-object p3

    #@37
    .line 884
    invoke-static {p0, v1, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    .line 885
    invoke-static {p3, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    #@3d
    if-ge p1, v2, :cond_45

    #@3f
    add-int/lit8 p2, p1, 0x1

    #@41
    sub-int/2addr v2, p1

    #@42
    .line 887
    invoke-static {p0, p1, p3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@45
    :cond_45
    return-object p3

    #@46
    .line 881
    :cond_46
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    #@48
    new-instance p2, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4d
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@50
    move-result-object p1

    #@51
    const-string p2, ", Length: "

    #@53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object p1

    #@57
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object p1

    #@5b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object p1

    #@5f
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@62
    throw p0
.end method

.method private static realAddArr(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7

    #@0
    if-nez p0, :cond_6

    #@2
    if-nez p2, :cond_6

    #@4
    const/4 p0, 0x0

    #@5
    return-object p0

    #@6
    .line 759
    :cond_6
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    #@9
    move-result p3

    #@a
    .line 760
    invoke-static {p2}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    #@d
    move-result v0

    #@e
    const-string v1, "Index: "

    #@10
    if-nez p3, :cond_32

    #@12
    if-nez p1, :cond_19

    #@14
    .line 765
    invoke-static {p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object p0

    #@18
    return-object p0

    #@19
    .line 763
    :cond_19
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    #@1b
    new-instance p2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object p1

    #@24
    const-string p2, ", array1 Length: 0"

    #@26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p1

    #@2e
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@31
    throw p0

    #@32
    :cond_32
    if-nez v0, :cond_39

    #@34
    .line 768
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object p0

    #@38
    return-object p0

    #@39
    :cond_39
    if-gt p1, p3, :cond_6a

    #@3b
    if-ltz p1, :cond_6a

    #@3d
    .line 773
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@44
    move-result-object v1

    #@45
    add-int v2, p3, v0

    #@47
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@4a
    move-result-object v1

    #@4b
    const/4 v2, 0x0

    #@4c
    if-ne p1, p3, :cond_55

    #@4e
    .line 775
    invoke-static {p0, v2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@51
    .line 776
    invoke-static {p2, v2, v1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@54
    goto :goto_69

    #@55
    :cond_55
    if-nez p1, :cond_5e

    #@57
    .line 778
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5a
    .line 779
    invoke-static {p0, v2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@5d
    goto :goto_69

    #@5e
    .line 781
    :cond_5e
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@61
    .line 782
    invoke-static {p2, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@64
    add-int/2addr v0, p1

    #@65
    sub-int/2addr p3, p1

    #@66
    .line 783
    invoke-static {p0, p1, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@69
    :goto_69
    return-object v1

    #@6a
    .line 771
    :cond_6a
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    #@6c
    new-instance p2, Ljava/lang/StringBuilder;

    #@6e
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@71
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@74
    move-result-object p1

    #@75
    const-string p2, ", array1 Length: "

    #@77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object p1

    #@7b
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object p1

    #@7f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object p1

    #@83
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@86
    throw p0
.end method

.method private static realAddArr(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    #@0
    if-nez p0, :cond_6

    #@2
    if-nez p1, :cond_6

    #@4
    const/4 p0, 0x0

    #@5
    return-object p0

    #@6
    :cond_6
    if-nez p0, :cond_d

    #@8
    .line 647
    invoke-static {p1}, Lcom/blankj/utilcode/util/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object p0

    #@c
    return-object p0

    #@d
    :cond_d
    if-nez p1, :cond_14

    #@f
    .line 650
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->realCopy(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object p0

    #@13
    return-object p0

    #@14
    .line 652
    :cond_14
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    #@17
    move-result v0

    #@18
    .line 653
    invoke-static {p1}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    #@1b
    move-result v1

    #@1c
    .line 654
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@23
    move-result-object v2

    #@24
    add-int v3, v0, v1

    #@26
    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    const/4 v3, 0x0

    #@2b
    .line 655
    invoke-static {p0, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2e
    .line 656
    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@31
    return-object v2
.end method

.method private static realAddOne(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p0, :cond_1a

    #@3
    .line 569
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    #@6
    move-result p2

    #@7
    .line 570
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@e
    move-result-object v1

    #@f
    add-int/lit8 v2, p2, 0x1

    #@11
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    .line 571
    invoke-static {p0, v0, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@18
    move v0, p2

    #@19
    goto :goto_1f

    #@1a
    :cond_1a
    const/4 p0, 0x1

    #@1b
    .line 573
    invoke-static {p2, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    .line 575
    :goto_1f
    invoke-static {v1, v0, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    #@22
    return-object v1
.end method

.method private static realCopy(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    .line 417
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    #@c
    move-result-object p0

    #@d
    return-object p0
.end method

.method private static realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    :cond_4
    const/4 v0, 0x0

    #@5
    if-gez p1, :cond_8

    #@7
    move p1, v0

    #@8
    .line 478
    :cond_8
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    #@b
    move-result v1

    #@c
    if-le p2, v1, :cond_f

    #@e
    move p2, v1

    #@f
    :cond_f
    sub-int/2addr p2, p1

    #@10
    .line 483
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@17
    move-result-object v1

    #@18
    if-gtz p2, :cond_1f

    #@1a
    .line 485
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@1d
    move-result-object p0

    #@1e
    return-object p0

    #@1f
    .line 487
    :cond_1f
    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    .line 488
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@26
    return-object v1
.end method

.method private static remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    #@0
    .line 1085
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->getLength(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    if-ltz p1, :cond_25

    #@6
    if-ge p1, v0, :cond_25

    #@8
    .line 1090
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    add-int/lit8 v2, v0, -0x1

    #@12
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    const/4 v3, 0x0

    #@17
    .line 1091
    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1a
    if-ge p1, v2, :cond_24

    #@1c
    add-int/lit8 v2, p1, 0x1

    #@1e
    sub-int/2addr v0, p1

    #@1f
    add-int/lit8 v0, v0, -0x1

    #@21
    .line 1093
    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@24
    :cond_24
    return-object v1

    #@25
    .line 1087
    :cond_25
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    #@27
    new-instance v1, Ljava/lang/StringBuilder;

    #@29
    const-string v2, "Index: "

    #@2b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object p1

    #@32
    const-string v1, ", Length: "

    #@34
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object p1

    #@38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object p1

    #@3c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object p1

    #@40
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@43
    throw p0
.end method

.method public static remove([BI)[B
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 980
    :cond_4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, [B

    #@a
    return-object p0
.end method

.method public static remove([CI)[C
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 995
    :cond_4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, [C

    #@a
    return-object p0
.end method

.method public static remove([DI)[D
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1010
    :cond_4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, [D

    #@a
    return-object p0
.end method

.method public static remove([FI)[F
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1026
    :cond_4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, [F

    #@a
    return-object p0
.end method

.method public static remove([II)[I
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1041
    :cond_4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, [I

    #@a
    return-object p0
.end method

.method public static remove([JI)[J
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1056
    :cond_4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, [J

    #@a
    return-object p0
.end method

.method public static remove([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 926
    :cond_4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, [Ljava/lang/Object;

    #@a
    return-object p0
.end method

.method public static remove([SI)[S
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1071
    :cond_4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, [S

    #@a
    return-object p0
.end method

.method public static remove([ZI)[Z
    .registers 2

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 965
    :cond_4
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    #@7
    move-result-object p0

    #@8
    check-cast p0, [Z

    #@a
    return-object p0
.end method

.method public static removeElement([BB)[B
    .registers 3

    #@0
    .line 985
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([BB)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p1, v0, :cond_c

    #@7
    .line 987
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([B)[B

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    .line 989
    :cond_c
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([BI)[B

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static removeElement([CC)[C
    .registers 3

    #@0
    .line 1000
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([CC)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p1, v0, :cond_c

    #@7
    .line 1002
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([C)[C

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    .line 1004
    :cond_c
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([CI)[C

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static removeElement([DD)[D
    .registers 3

    #@0
    .line 1015
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([DD)I

    #@3
    move-result p1

    #@4
    const/4 p2, -0x1

    #@5
    if-ne p1, p2, :cond_c

    #@7
    .line 1017
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([D)[D

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    .line 1020
    :cond_c
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([DI)[D

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static removeElement([FF)[F
    .registers 3

    #@0
    .line 1031
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([FF)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p1, v0, :cond_c

    #@7
    .line 1033
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([F)[F

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    .line 1035
    :cond_c
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([FI)[F

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static removeElement([II)[I
    .registers 3

    #@0
    .line 1046
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([II)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p1, v0, :cond_c

    #@7
    .line 1048
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([I)[I

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    .line 1050
    :cond_c
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([II)[I

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static removeElement([JJ)[J
    .registers 3

    #@0
    .line 1061
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([JJ)I

    #@3
    move-result p1

    #@4
    const/4 p2, -0x1

    #@5
    if-ne p1, p2, :cond_c

    #@7
    .line 1063
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([J)[J

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    .line 1065
    :cond_c
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([JI)[J

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static removeElement([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3

    #@0
    .line 955
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p1, v0, :cond_c

    #@7
    .line 957
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    .line 959
    :cond_c
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static removeElement([SS)[S
    .registers 3

    #@0
    .line 1076
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([SS)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p1, v0, :cond_c

    #@7
    .line 1078
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([S)[S

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    .line 1080
    :cond_c
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([SI)[S

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static removeElement([ZZ)[Z
    .registers 3

    #@0
    .line 970
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->indexOf([ZZ)I

    #@3
    move-result p1

    #@4
    const/4 v0, -0x1

    #@5
    if-ne p1, v0, :cond_c

    #@7
    .line 972
    invoke-static {p0}, Lcom/blankj/utilcode/util/ArrayUtils;->copy([Z)[Z

    #@a
    move-result-object p0

    #@b
    return-object p0

    #@c
    .line 974
    :cond_c
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ArrayUtils;->remove([ZI)[Z

    #@f
    move-result-object p0

    #@10
    return-object p0
.end method

.method public static reverse([B)V
    .registers 5

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 285
    :cond_3
    array-length v0, p0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-le v0, v1, :cond_16

    #@9
    .line 288
    aget-byte v2, p0, v0

    #@b
    .line 289
    aget-byte v3, p0, v1

    #@d
    aput-byte v3, p0, v0

    #@f
    .line 290
    aput-byte v2, p0, v1

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    return-void
.end method

.method public static reverse([C)V
    .registers 5

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 269
    :cond_3
    array-length v0, p0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-le v0, v1, :cond_16

    #@9
    .line 272
    aget-char v2, p0, v0

    #@b
    .line 273
    aget-char v3, p0, v1

    #@d
    aput-char v3, p0, v0

    #@f
    .line 274
    aput-char v2, p0, v1

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    return-void
.end method

.method public static reverse([D)V
    .registers 7

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 301
    :cond_3
    array-length v0, p0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-le v0, v1, :cond_16

    #@9
    .line 304
    aget-wide v2, p0, v0

    #@b
    .line 305
    aget-wide v4, p0, v1

    #@d
    aput-wide v4, p0, v0

    #@f
    .line 306
    aput-wide v2, p0, v1

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    return-void
.end method

.method public static reverse([F)V
    .registers 5

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 317
    :cond_3
    array-length v0, p0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-le v0, v1, :cond_16

    #@9
    .line 320
    aget v2, p0, v0

    #@b
    .line 321
    aget v3, p0, v1

    #@d
    aput v3, p0, v0

    #@f
    .line 322
    aput v2, p0, v1

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    return-void
.end method

.method public static reverse([I)V
    .registers 5

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 237
    :cond_3
    array-length v0, p0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-le v0, v1, :cond_16

    #@9
    .line 240
    aget v2, p0, v0

    #@b
    .line 241
    aget v3, p0, v1

    #@d
    aput v3, p0, v0

    #@f
    .line 242
    aput v2, p0, v1

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    return-void
.end method

.method public static reverse([J)V
    .registers 7

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 221
    :cond_3
    array-length v0, p0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-le v0, v1, :cond_16

    #@9
    .line 224
    aget-wide v2, p0, v0

    #@b
    .line 225
    aget-wide v4, p0, v1

    #@d
    aput-wide v4, p0, v0

    #@f
    .line 226
    aput-wide v2, p0, v1

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    return-void
.end method

.method public static reverse([Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 205
    :cond_3
    array-length v0, p0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-le v0, v1, :cond_16

    #@9
    .line 208
    aget-object v2, p0, v0

    #@b
    .line 209
    aget-object v3, p0, v1

    #@d
    aput-object v3, p0, v0

    #@f
    .line 210
    aput-object v2, p0, v1

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    return-void
.end method

.method public static reverse([S)V
    .registers 5

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 253
    :cond_3
    array-length v0, p0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-le v0, v1, :cond_16

    #@9
    .line 256
    aget-short v2, p0, v0

    #@b
    .line 257
    aget-short v3, p0, v1

    #@d
    aput-short v3, p0, v0

    #@f
    .line 258
    aput-short v2, p0, v1

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    return-void
.end method

.method public static reverse([Z)V
    .registers 5

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 333
    :cond_3
    array-length v0, p0

    #@4
    add-int/lit8 v0, v0, -0x1

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-le v0, v1, :cond_16

    #@9
    .line 336
    aget-boolean v2, p0, v0

    #@b
    .line 337
    aget-boolean v3, p0, v1

    #@d
    aput-boolean v3, p0, v0

    #@f
    .line 338
    aput-boolean v2, p0, v1

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_7

    #@16
    :cond_16
    return-void
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 3

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 145
    :cond_3
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    #@6
    return-void
.end method

.method public static sort([B)V
    .registers 3

    #@0
    if-eqz p0, :cond_a

    #@2
    .line 2006
    array-length v0, p0

    #@3
    const/4 v1, 0x2

    #@4
    if-ge v0, v1, :cond_7

    #@6
    goto :goto_a

    #@7
    .line 2007
    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([B)V

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method public static sort([C)V
    .registers 3

    #@0
    if-eqz p0, :cond_a

    #@2
    .line 2011
    array-length v0, p0

    #@3
    const/4 v1, 0x2

    #@4
    if-ge v0, v1, :cond_7

    #@6
    goto :goto_a

    #@7
    .line 2012
    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([C)V

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method public static sort([D)V
    .registers 3

    #@0
    if-eqz p0, :cond_a

    #@2
    .line 2016
    array-length v0, p0

    #@3
    const/4 v1, 0x2

    #@4
    if-ge v0, v1, :cond_7

    #@6
    goto :goto_a

    #@7
    .line 2017
    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method public static sort([F)V
    .registers 3

    #@0
    if-eqz p0, :cond_a

    #@2
    .line 2021
    array-length v0, p0

    #@3
    const/4 v1, 0x2

    #@4
    if-ge v0, v1, :cond_7

    #@6
    goto :goto_a

    #@7
    .line 2022
    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([F)V

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method public static sort([I)V
    .registers 3

    #@0
    if-eqz p0, :cond_a

    #@2
    .line 2026
    array-length v0, p0

    #@3
    const/4 v1, 0x2

    #@4
    if-ge v0, v1, :cond_7

    #@6
    goto :goto_a

    #@7
    .line 2027
    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([I)V

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method public static sort([J)V
    .registers 3

    #@0
    if-eqz p0, :cond_a

    #@2
    .line 2031
    array-length v0, p0

    #@3
    const/4 v1, 0x2

    #@4
    if-ge v0, v1, :cond_7

    #@6
    goto :goto_a

    #@7
    .line 2032
    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([J)V

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method public static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    #@0
    if-eqz p0, :cond_a

    #@2
    .line 2001
    array-length v0, p0

    #@3
    const/4 v1, 0x2

    #@4
    if-ge v0, v1, :cond_7

    #@6
    goto :goto_a

    #@7
    .line 2002
    :cond_7
    invoke-static {p0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method public static sort([S)V
    .registers 3

    #@0
    if-eqz p0, :cond_a

    #@2
    .line 2036
    array-length v0, p0

    #@3
    const/4 v1, 0x2

    #@4
    if-ge v0, v1, :cond_7

    #@6
    goto :goto_a

    #@7
    .line 2037
    :cond_7
    invoke-static {p0}, Ljava/util/Arrays;->sort([S)V

    #@a
    :cond_a
    :goto_a
    return-void
.end method

.method public static subArray([BII)[B
    .registers 3

    #@0
    .line 452
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [B

    #@6
    return-object p0
.end method

.method public static subArray([CII)[C
    .registers 3

    #@0
    .line 447
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [C

    #@6
    return-object p0
.end method

.method public static subArray([DII)[D
    .registers 3

    #@0
    .line 457
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [D

    #@6
    return-object p0
.end method

.method public static subArray([FII)[F
    .registers 3

    #@0
    .line 462
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [F

    #@6
    return-object p0
.end method

.method public static subArray([III)[I
    .registers 3

    #@0
    .line 437
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [I

    #@6
    return-object p0
.end method

.method public static subArray([JII)[J
    .registers 3

    #@0
    .line 432
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [J

    #@6
    return-object p0
.end method

.method public static subArray([Ljava/lang/Object;II)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    #@0
    .line 427
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [Ljava/lang/Object;

    #@6
    return-object p0
.end method

.method public static subArray([SII)[S
    .registers 3

    #@0
    .line 442
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [S

    #@6
    return-object p0
.end method

.method public static subArray([ZII)[Z
    .registers 3

    #@0
    .line 467
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/ArrayUtils;->realSubArray(Ljava/lang/Object;II)Ljava/lang/Object;

    #@3
    move-result-object p0

    #@4
    check-cast p0, [Z

    #@6
    return-object p0
.end method

.method public static toObject([Z)[Ljava/lang/Boolean;
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1961
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [Ljava/lang/Boolean;

    #@a
    return-object p0

    #@b
    .line 1964
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [Ljava/lang/Boolean;

    #@e
    .line 1965
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1f

    #@11
    .line 1966
    aget-boolean v2, p0, v1

    #@13
    if-eqz v2, :cond_18

    #@15
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@17
    goto :goto_1a

    #@18
    :cond_18
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@1a
    :goto_1a
    aput-object v2, v0, v1

    #@1c
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_e

    #@1f
    :cond_1f
    return-object v0
.end method

.method public static toObject([B)[Ljava/lang/Byte;
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1820
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [Ljava/lang/Byte;

    #@a
    return-object p0

    #@b
    .line 1823
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [Ljava/lang/Byte;

    #@e
    .line 1824
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1d

    #@11
    .line 1825
    new-instance v2, Ljava/lang/Byte;

    #@13
    aget-byte v3, p0, v1

    #@15
    invoke-direct {v2, v3}, Ljava/lang/Byte;-><init>(B)V

    #@18
    aput-object v2, v0, v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_e

    #@1d
    :cond_1d
    return-object v0
.end method

.method public static toObject([C)[Ljava/lang/Character;
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1632
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [Ljava/lang/Character;

    #@a
    return-object p0

    #@b
    .line 1635
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [Ljava/lang/Character;

    #@e
    .line 1636
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1d

    #@11
    .line 1637
    new-instance v2, Ljava/lang/Character;

    #@13
    aget-char v3, p0, v1

    #@15
    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    #@18
    aput-object v2, v0, v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_e

    #@1d
    :cond_1d
    return-object v0
.end method

.method public static toObject([D)[Ljava/lang/Double;
    .registers 6

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1867
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [Ljava/lang/Double;

    #@a
    return-object p0

    #@b
    .line 1870
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [Ljava/lang/Double;

    #@e
    .line 1871
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1d

    #@11
    .line 1872
    new-instance v2, Ljava/lang/Double;

    #@13
    aget-wide v3, p0, v1

    #@15
    invoke-direct {v2, v3, v4}, Ljava/lang/Double;-><init>(D)V

    #@18
    aput-object v2, v0, v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_e

    #@1d
    :cond_1d
    return-object v0
.end method

.method public static toObject([F)[Ljava/lang/Float;
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1914
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [Ljava/lang/Float;

    #@a
    return-object p0

    #@b
    .line 1917
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [Ljava/lang/Float;

    #@e
    .line 1918
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1d

    #@11
    .line 1919
    new-instance v2, Ljava/lang/Float;

    #@13
    aget v3, p0, v1

    #@15
    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    #@18
    aput-object v2, v0, v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_e

    #@1d
    :cond_1d
    return-object v0
.end method

.method public static toObject([I)[Ljava/lang/Integer;
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1726
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [Ljava/lang/Integer;

    #@a
    return-object p0

    #@b
    .line 1729
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [Ljava/lang/Integer;

    #@e
    .line 1730
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1d

    #@11
    .line 1731
    new-instance v2, Ljava/lang/Integer;

    #@13
    aget v3, p0, v1

    #@15
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    #@18
    aput-object v2, v0, v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_e

    #@1d
    :cond_1d
    return-object v0
.end method

.method public static toObject([J)[Ljava/lang/Long;
    .registers 6

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1679
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [Ljava/lang/Long;

    #@a
    return-object p0

    #@b
    .line 1682
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [Ljava/lang/Long;

    #@e
    .line 1683
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1d

    #@11
    .line 1684
    new-instance v2, Ljava/lang/Long;

    #@13
    aget-wide v3, p0, v1

    #@15
    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    #@18
    aput-object v2, v0, v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_e

    #@1d
    :cond_1d
    return-object v0
.end method

.method public static toObject([S)[Ljava/lang/Short;
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1773
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [Ljava/lang/Short;

    #@a
    return-object p0

    #@b
    .line 1776
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [Ljava/lang/Short;

    #@e
    .line 1777
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1d

    #@11
    .line 1778
    new-instance v2, Ljava/lang/Short;

    #@13
    aget-short v3, p0, v1

    #@15
    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    #@18
    aput-object v2, v0, v1

    #@1a
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_e

    #@1d
    :cond_1d
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;)[B
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1791
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [B

    #@a
    return-object p0

    #@b
    .line 1794
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [B

    #@e
    .line 1795
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1c

    #@11
    .line 1796
    aget-object v2, p0, v1

    #@13
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    #@16
    move-result v2

    #@17
    aput-byte v2, v0, v1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_e

    #@1c
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Byte;B)[B
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1805
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [B

    #@a
    return-object p0

    #@b
    .line 1808
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [B

    #@e
    .line 1809
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_20

    #@11
    .line 1810
    aget-object v2, p0, v1

    #@13
    if-nez v2, :cond_17

    #@15
    move v2, p1

    #@16
    goto :goto_1b

    #@17
    .line 1811
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    #@1a
    move-result v2

    #@1b
    :goto_1b
    aput-byte v2, v0, v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_e

    #@20
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;)[C
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1603
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [C

    #@a
    return-object p0

    #@b
    .line 1606
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [C

    #@e
    .line 1607
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1c

    #@11
    .line 1608
    aget-object v2, p0, v1

    #@13
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    #@16
    move-result v2

    #@17
    aput-char v2, v0, v1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_e

    #@1c
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Character;C)[C
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1617
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [C

    #@a
    return-object p0

    #@b
    .line 1620
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [C

    #@e
    .line 1621
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_20

    #@11
    .line 1622
    aget-object v2, p0, v1

    #@13
    if-nez v2, :cond_17

    #@15
    move v2, p1

    #@16
    goto :goto_1b

    #@17
    .line 1623
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    #@1a
    move-result v2

    #@1b
    :goto_1b
    aput-char v2, v0, v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_e

    #@20
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;)[D
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1838
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [D

    #@a
    return-object p0

    #@b
    .line 1841
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [D

    #@e
    .line 1842
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1c

    #@11
    .line 1843
    aget-object v2, p0, v1

    #@13
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    #@16
    move-result-wide v2

    #@17
    aput-wide v2, v0, v1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_e

    #@1c
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Double;D)[D
    .registers 7

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1852
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [D

    #@a
    return-object p0

    #@b
    .line 1855
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [D

    #@e
    .line 1856
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_20

    #@11
    .line 1857
    aget-object v2, p0, v1

    #@13
    if-nez v2, :cond_17

    #@15
    move-wide v2, p1

    #@16
    goto :goto_1b

    #@17
    .line 1858
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    #@1a
    move-result-wide v2

    #@1b
    :goto_1b
    aput-wide v2, v0, v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_e

    #@20
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;)[F
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1885
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [F

    #@a
    return-object p0

    #@b
    .line 1888
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [F

    #@e
    .line 1889
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1c

    #@11
    .line 1890
    aget-object v2, p0, v1

    #@13
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@16
    move-result v2

    #@17
    aput v2, v0, v1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_e

    #@1c
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Float;F)[F
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1899
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [F

    #@a
    return-object p0

    #@b
    .line 1902
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [F

    #@e
    .line 1903
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_20

    #@11
    .line 1904
    aget-object v2, p0, v1

    #@13
    if-nez v2, :cond_17

    #@15
    move v2, p1

    #@16
    goto :goto_1b

    #@17
    .line 1905
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    #@1a
    move-result v2

    #@1b
    :goto_1b
    aput v2, v0, v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_e

    #@20
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;)[I
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1697
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [I

    #@a
    return-object p0

    #@b
    .line 1700
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [I

    #@e
    .line 1701
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1c

    #@11
    .line 1702
    aget-object v2, p0, v1

    #@13
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v2

    #@17
    aput v2, v0, v1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_e

    #@1c
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Integer;I)[I
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1711
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [I

    #@a
    return-object p0

    #@b
    .line 1714
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [I

    #@e
    .line 1715
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_20

    #@11
    .line 1716
    aget-object v2, p0, v1

    #@13
    if-nez v2, :cond_17

    #@15
    move v2, p1

    #@16
    goto :goto_1b

    #@17
    .line 1717
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@1a
    move-result v2

    #@1b
    :goto_1b
    aput v2, v0, v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_e

    #@20
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;)[J
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1650
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [J

    #@a
    return-object p0

    #@b
    .line 1653
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [J

    #@e
    .line 1654
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1c

    #@11
    .line 1655
    aget-object v2, p0, v1

    #@13
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@16
    move-result-wide v2

    #@17
    aput-wide v2, v0, v1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_e

    #@1c
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Long;J)[J
    .registers 7

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1664
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [J

    #@a
    return-object p0

    #@b
    .line 1667
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [J

    #@e
    .line 1668
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_20

    #@11
    .line 1669
    aget-object v2, p0, v1

    #@13
    if-nez v2, :cond_17

    #@15
    move-wide v2, p1

    #@16
    goto :goto_1b

    #@17
    .line 1670
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@1a
    move-result-wide v2

    #@1b
    :goto_1b
    aput-wide v2, v0, v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_e

    #@20
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;)[S
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1744
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [S

    #@a
    return-object p0

    #@b
    .line 1747
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [S

    #@e
    .line 1748
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1c

    #@11
    .line 1749
    aget-object v2, p0, v1

    #@13
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    #@16
    move-result v2

    #@17
    aput-short v2, v0, v1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_e

    #@1c
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Short;S)[S
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1758
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [S

    #@a
    return-object p0

    #@b
    .line 1761
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [S

    #@e
    .line 1762
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_20

    #@11
    .line 1763
    aget-object v2, p0, v1

    #@13
    if-nez v2, :cond_17

    #@15
    move v2, p1

    #@16
    goto :goto_1b

    #@17
    .line 1764
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    #@1a
    move-result v2

    #@1b
    :goto_1b
    aput-short v2, v0, v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_e

    #@20
    :cond_20
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;)[Z
    .registers 4

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1932
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [Z

    #@a
    return-object p0

    #@b
    .line 1935
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [Z

    #@e
    .line 1936
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_1c

    #@11
    .line 1937
    aget-object v2, p0, v1

    #@13
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@16
    move-result v2

    #@17
    aput-boolean v2, v0, v1

    #@19
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_e

    #@1c
    :cond_1c
    return-object v0
.end method

.method public static toPrimitive([Ljava/lang/Boolean;Z)[Z
    .registers 5

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x0

    #@3
    return-object p0

    #@4
    .line 1946
    :cond_4
    array-length v0, p0

    #@5
    const/4 v1, 0x0

    #@6
    if-nez v0, :cond_b

    #@8
    new-array p0, v1, [Z

    #@a
    return-object p0

    #@b
    .line 1949
    :cond_b
    array-length v0, p0

    #@c
    new-array v0, v0, [Z

    #@e
    .line 1950
    :goto_e
    array-length v2, p0

    #@f
    if-ge v1, v2, :cond_20

    #@11
    .line 1951
    aget-object v2, p0, v1

    #@13
    if-nez v2, :cond_17

    #@15
    move v2, p1

    #@16
    goto :goto_1b

    #@17
    .line 1952
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    #@1a
    move-result v2

    #@1b
    :goto_1b
    aput-boolean v2, v0, v1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_e

    #@20
    :cond_20
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    #@0
    if-nez p0, :cond_5

    #@2
    const-string p0, "null"

    #@4
    return-object p0

    #@5
    .line 2118
    :cond_5
    instance-of v0, p0, [Ljava/lang/Object;

    #@7
    if-eqz v0, :cond_10

    #@9
    .line 2119
    check-cast p0, [Ljava/lang/Object;

    #@b
    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    return-object p0

    #@10
    .line 2120
    :cond_10
    instance-of v0, p0, [Z

    #@12
    if-eqz v0, :cond_1b

    #@14
    .line 2121
    check-cast p0, [Z

    #@16
    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    #@19
    move-result-object p0

    #@1a
    return-object p0

    #@1b
    .line 2122
    :cond_1b
    instance-of v0, p0, [B

    #@1d
    if-eqz v0, :cond_26

    #@1f
    .line 2123
    check-cast p0, [B

    #@21
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@24
    move-result-object p0

    #@25
    return-object p0

    #@26
    .line 2124
    :cond_26
    instance-of v0, p0, [C

    #@28
    if-eqz v0, :cond_31

    #@2a
    .line 2125
    check-cast p0, [C

    #@2c
    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    #@2f
    move-result-object p0

    #@30
    return-object p0

    #@31
    .line 2126
    :cond_31
    instance-of v0, p0, [D

    #@33
    if-eqz v0, :cond_3c

    #@35
    .line 2127
    check-cast p0, [D

    #@37
    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    #@3a
    move-result-object p0

    #@3b
    return-object p0

    #@3c
    .line 2128
    :cond_3c
    instance-of v0, p0, [F

    #@3e
    if-eqz v0, :cond_47

    #@40
    .line 2129
    check-cast p0, [F

    #@42
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    #@45
    move-result-object p0

    #@46
    return-object p0

    #@47
    .line 2130
    :cond_47
    instance-of v0, p0, [I

    #@49
    if-eqz v0, :cond_52

    #@4b
    .line 2131
    check-cast p0, [I

    #@4d
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@50
    move-result-object p0

    #@51
    return-object p0

    #@52
    .line 2132
    :cond_52
    instance-of v0, p0, [J

    #@54
    if-eqz v0, :cond_5d

    #@56
    .line 2133
    check-cast p0, [J

    #@58
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    #@5b
    move-result-object p0

    #@5c
    return-object p0

    #@5d
    .line 2134
    :cond_5d
    instance-of v0, p0, [S

    #@5f
    if-eqz v0, :cond_68

    #@61
    .line 2135
    check-cast p0, [S

    #@63
    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    #@66
    move-result-object p0

    #@67
    return-object p0

    #@68
    .line 2137
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6a
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    const-string v2, "Array has incompatible type: "

    #@6e
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@74
    move-result-object p0

    #@75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@78
    move-result-object p0

    #@79
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7c
    move-result-object p0

    #@7d
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@80
    throw v0
.end method
