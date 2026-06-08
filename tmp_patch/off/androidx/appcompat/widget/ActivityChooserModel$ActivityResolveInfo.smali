.class public final Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResolveInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field public weight:F


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .registers 2

    #@0
    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 870
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@5
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;)I
    .registers 3

    #@0
    .line 898
    iget p1, p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@2
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result p1

    #@6
    iget v0, p0, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@8
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@b
    move-result v0

    #@c
    sub-int/2addr p1, v0

    #@d
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    #@0
    .line 852
    check-cast p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    #@2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->compareTo(Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;)I

    #@5
    move-result p1

    #@6
    return p1
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
    if-nez p1, :cond_8

    #@7
    return v1

    #@8
    .line 886
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v3

    #@10
    if-eq v2, v3, :cond_13

    #@12
    return v1

    #@13
    .line 889
    :cond_13
    check-cast p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;

    #@15
    .line 890
    iget v2, p0, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@17
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1a
    move-result v2

    #@1b
    iget p1, p1, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@1d
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@20
    move-result p1

    #@21
    if-eq v2, p1, :cond_24

    #@23
    return v1

    #@24
    :cond_24
    return v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 875
    iget v0, p0, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@2
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, 0x1f

    #@8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "[resolveInfo:"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 905
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    #@9
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    const-string v1, "; weight:"

    #@12
    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    new-instance v2, Ljava/math/BigDecimal;

    #@18
    iget v3, p0, Landroidx/appcompat/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    #@1a
    float-to-double v3, v3

    #@1b
    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    const-string v1, "]"

    #@23
    .line 907
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    .line 908
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method
