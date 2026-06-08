.class Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final MOVE:I = 0x8

.field static final POOL_SIZE:I = 0x1e

.field static final REMOVE:I = 0x2

.field static final UPDATE:I = 0x4


# instance fields
.field cmd:I

.field itemCount:I

.field payload:Ljava/lang/Object;

.field positionStart:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .registers 5

    #@0
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 652
    iput p1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@5
    .line 653
    iput p2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@7
    .line 654
    iput p3, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@9
    .line 655
    iput-object p4, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@b
    return-void
.end method


# virtual methods
.method cmdToString()Ljava/lang/String;
    .registers 3

    #@0
    .line 659
    iget v0, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@2
    const/4 v1, 0x1

    #@3
    if-eq v0, v1, :cond_1b

    #@5
    const/4 v1, 0x2

    #@6
    if-eq v0, v1, :cond_18

    #@8
    const/4 v1, 0x4

    #@9
    if-eq v0, v1, :cond_15

    #@b
    const/16 v1, 0x8

    #@d
    if-eq v0, v1, :cond_12

    #@f
    const-string v0, "??"

    #@11
    return-object v0

    #@12
    :cond_12
    const-string v0, "mv"

    #@14
    return-object v0

    #@15
    :cond_15
    const-string v0, "up"

    #@17
    return-object v0

    #@18
    :cond_18
    const-string v0, "rm"

    #@1a
    return-object v0

    #@1b
    :cond_1b
    const-string v0, "add"

    #@1d
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    :cond_4
    const/4 v1, 0x0

    #@5
    if-eqz p1, :cond_58

    #@7
    .line 684
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_12

    #@11
    goto :goto_58

    #@12
    .line 688
    :cond_12
    check-cast p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;

    #@14
    .line 690
    iget v2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@16
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@18
    if-eq v2, v3, :cond_1b

    #@1a
    return v1

    #@1b
    :cond_1b
    const/16 v3, 0x8

    #@1d
    if-ne v2, v3, :cond_37

    #@1f
    .line 693
    iget v2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@21
    iget v3, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@23
    sub-int/2addr v2, v3

    #@24
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    #@27
    move-result v2

    #@28
    if-ne v2, v0, :cond_37

    #@2a
    .line 695
    iget v2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@2c
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@2e
    if-ne v2, v3, :cond_37

    #@30
    iget v2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@32
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@34
    if-ne v2, v3, :cond_37

    #@36
    return v0

    #@37
    .line 699
    :cond_37
    iget v2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@39
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@3b
    if-eq v2, v3, :cond_3e

    #@3d
    return v1

    #@3e
    .line 702
    :cond_3e
    iget v2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@40
    iget v3, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@42
    if-eq v2, v3, :cond_45

    #@44
    return v1

    #@45
    .line 705
    :cond_45
    iget-object v2, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@47
    if-eqz v2, :cond_52

    #@49
    .line 706
    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@4b
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result p1

    #@4f
    if-nez p1, :cond_57

    #@51
    return v1

    #@52
    .line 709
    :cond_52
    iget-object p1, p1, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@54
    if-eqz p1, :cond_57

    #@56
    return v1

    #@57
    :cond_57
    return v0

    #@58
    :cond_58
    :goto_58
    return v1
.end method

.method public hashCode()I
    .registers 3

    #@0
    .line 718
    iget v0, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmd:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    .line 719
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@6
    add-int/2addr v0, v1

    #@7
    mul-int/lit8 v0, v0, 0x1f

    #@9
    .line 720
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@b
    add-int/2addr v0, v1

    #@c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@8
    move-result v1

    #@9
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string v1, "["

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    .line 675
    invoke-virtual {p0}, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string v1, ",s:"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->positionStart:I

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    const-string v1, "c:"

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    iget v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->itemCount:I

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    const-string v1, ",p:"

    #@39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    iget-object v1, p0, Landroidx/recyclerview/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    #@3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v0

    #@43
    const-string v1, "]"

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    return-object v0
.end method
