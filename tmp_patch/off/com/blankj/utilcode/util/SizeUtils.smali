.class public final Lcom/blankj/utilcode/util/SizeUtils;
.super Ljava/lang/Object;
.source "SizeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 3

    #@0
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method public static applyDimension(FI)F
    .registers 4

    #@0
    .line 78
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    if-eqz p1, :cond_33

    #@a
    const/4 v1, 0x1

    #@b
    if-eq p1, v1, :cond_30

    #@d
    const/4 v1, 0x2

    #@e
    if-eq p1, v1, :cond_2d

    #@10
    const/4 v1, 0x3

    #@11
    if-eq p1, v1, :cond_26

    #@13
    const/4 v1, 0x4

    #@14
    if-eq p1, v1, :cond_23

    #@16
    const/4 v1, 0x5

    #@17
    if-eq p1, v1, :cond_1b

    #@19
    const/4 p0, 0x0

    #@1a
    return p0

    #@1b
    .line 91
    :cond_1b
    iget p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    #@1d
    mul-float/2addr p0, p1

    #@1e
    const p1, 0x3d214285

    #@21
    :goto_21
    mul-float/2addr p0, p1

    #@22
    return p0

    #@23
    .line 89
    :cond_23
    iget p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    #@25
    goto :goto_21

    #@26
    .line 87
    :cond_26
    iget p1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    #@28
    mul-float/2addr p0, p1

    #@29
    const p1, 0x3c638e39

    #@2c
    goto :goto_21

    #@2d
    .line 85
    :cond_2d
    iget p1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@2f
    goto :goto_21

    #@30
    .line 83
    :cond_30
    iget p1, v0, Landroid/util/DisplayMetrics;->density:F

    #@32
    goto :goto_21

    #@33
    :cond_33
    return p0
.end method

.method public static dp2px(F)I
    .registers 2

    #@0
    .line 30
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@a
    mul-float/2addr p0, v0

    #@b
    const/high16 v0, 0x3f000000    # 0.5f

    #@d
    add-float/2addr p0, v0

    #@e
    float-to-int p0, p0

    #@f
    return p0
.end method

.method public static forceGetViewSize(Landroid/view/View;Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;)V
    .registers 3

    #@0
    .line 112
    new-instance v0, Lcom/blankj/utilcode/util/SizeUtils$1;

    #@2
    invoke-direct {v0, p1, p0}, Lcom/blankj/utilcode/util/SizeUtils$1;-><init>(Lcom/blankj/utilcode/util/SizeUtils$OnGetSizeListener;Landroid/view/View;)V

    #@5
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    #@8
    return-void
.end method

.method public static getMeasuredHeight(Landroid/view/View;)I
    .registers 2

    #@0
    .line 139
    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->measureView(Landroid/view/View;)[I

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x1

    #@5
    aget p0, p0, v0

    #@7
    return p0
.end method

.method public static getMeasuredWidth(Landroid/view/View;)I
    .registers 2

    #@0
    .line 129
    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->measureView(Landroid/view/View;)[I

    #@3
    move-result-object p0

    #@4
    const/4 v0, 0x0

    #@5
    aget p0, p0, v0

    #@7
    return p0
.end method

.method public static measureView(Landroid/view/View;)[I
    .registers 5

    #@0
    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_d

    #@6
    .line 151
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    #@8
    const/4 v1, -0x1

    #@9
    const/4 v2, -0x2

    #@a
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@d
    .line 156
    :cond_d
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    #@13
    move-result v1

    #@14
    .line 157
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@16
    if-lez v0, :cond_1f

    #@18
    const/high16 v3, 0x40000000    # 2.0f

    #@1a
    .line 160
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@1d
    move-result v0

    #@1e
    goto :goto_23

    #@1f
    .line 162
    :cond_1f
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@22
    move-result v0

    #@23
    .line 164
    :goto_23
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    #@26
    const/4 v0, 0x2

    #@27
    new-array v0, v0, [I

    #@29
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    #@2c
    move-result v1

    #@2d
    aput v1, v0, v2

    #@2f
    const/4 v1, 0x1

    #@30
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    #@33
    move-result p0

    #@34
    aput p0, v0, v1

    #@36
    return-object v0
.end method

.method public static px2dp(F)I
    .registers 2

    #@0
    .line 41
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    #@a
    div-float/2addr p0, v0

    #@b
    const/high16 v0, 0x3f000000    # 0.5f

    #@d
    add-float/2addr p0, v0

    #@e
    float-to-int p0, p0

    #@f
    return p0
.end method

.method public static px2sp(F)I
    .registers 2

    #@0
    .line 63
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@a
    div-float/2addr p0, v0

    #@b
    const/high16 v0, 0x3f000000    # 0.5f

    #@d
    add-float/2addr p0, v0

    #@e
    float-to-int p0, p0

    #@f
    return p0
.end method

.method public static sp2px(F)I
    .registers 2

    #@0
    .line 52
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@7
    move-result-object v0

    #@8
    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    #@a
    mul-float/2addr p0, v0

    #@b
    const/high16 v0, 0x3f000000    # 0.5f

    #@d
    add-float/2addr p0, v0

    #@e
    float-to-int p0, p0

    #@f
    return p0
.end method
