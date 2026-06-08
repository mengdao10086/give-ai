.class public final Lcom/google/android/material/progressindicator/CircularProgressIndicator;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.source "CircularProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/progressindicator/CircularProgressIndicator$IndicatorDirection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/BaseProgressIndicator<",
        "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEF_STYLE_RES:I

.field public static final INDICATOR_DIRECTION_CLOCKWISE:I = 0x0

.field public static final INDICATOR_DIRECTION_COUNTERCLOCKWISE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 55
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CircularProgressIndicator:I

    #@2
    sput v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    .line 68
    sget v0, Lcom/google/android/material/R$attr;->circularProgressIndicatorStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    .line 73
    sget v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->DEF_STYLE_RES:I

    #@2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    .line 75
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->initializeDrawables()V

    #@8
    return-void
.end method

.method private initializeDrawables()V
    .registers 3

    #@0
    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@6
    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@8
    invoke-static {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    #@f
    .line 89
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Landroid/content/Context;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@15
    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@17
    invoke-static {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/DeterminateDrawable;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    #@1e
    return-void
.end method


# virtual methods
.method bridge synthetic createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .registers 3

    #@0
    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
    .registers 4

    #@0
    .line 82
    new-instance v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@2
    invoke-direct {v0, p1, p2}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    return-object v0
.end method

.method public getIndicatorDirection()I
    .registers 2

    #@0
    .line 174
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@4
    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    #@6
    return v0
.end method

.method public getIndicatorInset()I
    .registers 2

    #@0
    .line 118
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@4
    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    #@6
    return v0
.end method

.method public getIndicatorSize()I
    .registers 2

    #@0
    .line 145
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@4
    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    #@6
    return v0
.end method

.method public setIndicatorDirection(I)V
    .registers 3

    #@0
    .line 186
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@4
    iput p1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    #@6
    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    #@9
    return-void
.end method

.method public setIndicatorInset(I)V
    .registers 3

    #@0
    .line 130
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@2
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@4
    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    #@6
    if-eq v0, p1, :cond_11

    #@8
    .line 131
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@a
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@c
    iput p1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    #@e
    .line 132
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    #@11
    :cond_11
    return-void
.end method

.method public setIndicatorSize(I)V
    .registers 3

    #@0
    .line 157
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getTrackThickness()I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x2

    #@6
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    #@9
    move-result p1

    #@a
    .line 158
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@c
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@e
    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    #@10
    if-eq v0, p1, :cond_22

    #@12
    .line 159
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@14
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@16
    iput p1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    #@18
    .line 160
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@1a
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@1c
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->validateSpec()V

    #@1f
    .line 161
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    #@22
    :cond_22
    return-void
.end method

.method public setTrackThickness(I)V
    .registers 2

    #@0
    .line 105
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setTrackThickness(I)V

    #@3
    .line 106
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    #@5
    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    #@7
    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->validateSpec()V

    #@a
    return-void
.end method
