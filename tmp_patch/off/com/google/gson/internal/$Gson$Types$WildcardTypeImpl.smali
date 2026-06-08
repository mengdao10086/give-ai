.class final Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;
.super Ljava/lang/Object;
.source "$Gson$Types.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/$Gson$Types;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WildcardTypeImpl"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final lowerBound:Ljava/lang/reflect/Type;

.field private final upperBound:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
    .registers 6

    #@0
    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 561
    array-length v0, p2

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    if-gt v0, v2, :cond_a

    #@8
    move v0, v2

    #@9
    goto :goto_b

    #@a
    :cond_a
    move v0, v1

    #@b
    :goto_b
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    #@e
    .line 562
    array-length v0, p1

    #@f
    if-ne v0, v2, :cond_13

    #@11
    move v0, v2

    #@12
    goto :goto_14

    #@13
    :cond_13
    move v0, v1

    #@14
    :goto_14
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    #@17
    .line 564
    array-length v0, p2

    #@18
    if-ne v0, v2, :cond_3c

    #@1a
    .line 565
    aget-object v0, p2, v1

    #@1c
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 566
    aget-object v0, p2, v1

    #@21
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    #@24
    .line 567
    aget-object p1, p1, v1

    #@26
    const-class v0, Ljava/lang/Object;

    #@28
    if-ne p1, v0, :cond_2b

    #@2a
    goto :goto_2c

    #@2b
    :cond_2b
    move v2, v1

    #@2c
    :goto_2c
    invoke-static {v2}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    #@2f
    .line 568
    aget-object p1, p2, v1

    #@31
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@34
    move-result-object p1

    #@35
    iput-object p1, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    #@37
    .line 569
    const-class p1, Ljava/lang/Object;

    #@39
    iput-object p1, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    #@3b
    goto :goto_51

    #@3c
    .line 572
    :cond_3c
    aget-object p2, p1, v1

    #@3e
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 573
    aget-object p2, p1, v1

    #@43
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->checkNotPrimitive(Ljava/lang/reflect/Type;)V

    #@46
    const/4 p2, 0x0

    #@47
    .line 574
    iput-object p2, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    #@49
    .line 575
    aget-object p1, p1, v1

    #@4b
    invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    #@4e
    move-result-object p1

    #@4f
    iput-object p1, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    #@51
    :goto_51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 588
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    #@2
    if-eqz v0, :cond_e

    #@4
    check-cast p1, Ljava/lang/reflect/WildcardType;

    #@6
    .line 589
    invoke-static {p0, p1}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    #@9
    move-result p1

    #@a
    if-eqz p1, :cond_e

    #@c
    const/4 p1, 0x1

    #@d
    goto :goto_f

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    :goto_f
    return p1
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .registers 4

    #@0
    .line 584
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    #@2
    if-eqz v0, :cond_b

    #@4
    const/4 v1, 0x1

    #@5
    new-array v1, v1, [Ljava/lang/reflect/Type;

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v0, v1, v2

    #@a
    goto :goto_d

    #@b
    :cond_b
    sget-object v1, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    #@d
    :goto_d
    return-object v1
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/reflect/Type;

    #@3
    const/4 v1, 0x0

    #@4
    .line 580
    iget-object v2, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    #@6
    aput-object v2, v0, v1

    #@8
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    .line 594
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    #@2
    if-eqz v0, :cond_b

    #@4
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v0, v0, 0x1f

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 v0, 0x1

    #@c
    :goto_c
    iget-object v1, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    #@e
    .line 595
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v1

    #@12
    add-int/lit8 v1, v1, 0x1f

    #@14
    xor-int/2addr v0, v1

    #@15
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 599
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    #@2
    if-eqz v0, :cond_1a

    #@4
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    const-string v1, "? super "

    #@8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@b
    iget-object v1, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->lowerBound:Ljava/lang/reflect/Type;

    #@d
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 601
    :cond_1a
    iget-object v0, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    #@1c
    const-class v1, Ljava/lang/Object;

    #@1e
    if-ne v0, v1, :cond_23

    #@20
    const-string v0, "?"

    #@22
    return-object v0

    #@23
    .line 604
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    #@25
    const-string v1, "? extends "

    #@27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2a
    iget-object v1, p0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;->upperBound:Ljava/lang/reflect/Type;

    #@2c
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v0

    #@38
    return-object v0
.end method
