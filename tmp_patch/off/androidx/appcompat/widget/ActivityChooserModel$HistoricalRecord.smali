.class public final Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalRecord"
.end annotation


# instance fields
.field public final activity:Landroid/content/ComponentName;

.field public final time:J

.field public final weight:F


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;JF)V
    .registers 5

    #@0
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 794
    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@5
    .line 795
    iput-wide p2, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@7
    .line 796
    iput p4, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JF)V
    .registers 5

    #@0
    .line 783
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@3
    move-result-object p1

    #@4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    #@7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

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
    .line 817
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
    .line 820
    :cond_13
    check-cast p1, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    #@15
    .line 821
    iget-object v2, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@17
    if-nez v2, :cond_1e

    #@19
    .line 822
    iget-object v2, p1, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@1b
    if-eqz v2, :cond_27

    #@1d
    return v1

    #@1e
    .line 825
    :cond_1e
    iget-object v3, p1, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@20
    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    if-nez v2, :cond_27

    #@26
    return v1

    #@27
    .line 828
    :cond_27
    iget-wide v2, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@29
    iget-wide v4, p1, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@2b
    cmp-long v2, v2, v4

    #@2d
    if-eqz v2, :cond_30

    #@2f
    return v1

    #@30
    .line 831
    :cond_30
    iget v2, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@32
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    #@35
    move-result v2

    #@36
    iget p1, p1, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@38
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3b
    move-result p1

    #@3c
    if-eq v2, p1, :cond_3f

    #@3e
    return v1

    #@3f
    :cond_3f
    return v0
.end method

.method public hashCode()I
    .registers 7

    #@0
    .line 803
    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x0

    #@5
    goto :goto_a

    #@6
    :cond_6
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    #@9
    move-result v0

    #@a
    :goto_a
    const/16 v1, 0x1f

    #@c
    add-int/2addr v0, v1

    #@d
    mul-int/2addr v0, v1

    #@e
    .line 804
    iget-wide v2, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@10
    const/16 v4, 0x20

    #@12
    ushr-long v4, v2, v4

    #@14
    xor-long/2addr v2, v4

    #@15
    long-to-int v2, v2

    #@16
    add-int/2addr v0, v2

    #@17
    mul-int/2addr v0, v1

    #@18
    .line 805
    iget v1, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@1a
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@1d
    move-result v1

    #@1e
    add-int/2addr v0, v1

    #@1f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    #@0
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "[; activity:"

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    .line 841
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    const-string v1, "; time:"

    #@e
    .line 842
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    iget-wide v2, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@14
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    const-string v1, "; weight:"

    #@19
    .line 843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    new-instance v2, Ljava/math/BigDecimal;

    #@1f
    iget v3, p0, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@21
    float-to-double v3, v3

    #@22
    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    const-string v1, "]"

    #@2a
    .line 844
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    .line 845
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    return-object v0
.end method
