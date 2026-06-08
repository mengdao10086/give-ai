.class public final Landroidx/core/view/MarginLayoutParamsCompat;
.super Ljava/lang/Object;
.source "MarginLayoutParamsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 2

    #@0
    .line 133
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->getLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;)I

    #@3
    move-result p0

    #@4
    if-eqz p0, :cond_a

    #@6
    const/4 v0, 0x1

    #@7
    if-eq p0, v0, :cond_a

    #@9
    const/4 p0, 0x0

    #@a
    :cond_a
    return p0
.end method

.method public static getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 1

    #@0
    .line 67
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->getMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .registers 1

    #@0
    .line 48
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->getMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .registers 1

    #@0
    .line 118
    invoke-static {p0}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->isMarginRelative(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2

    #@0
    .line 168
    invoke-static {p0, p1}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->resolveLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@3
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2

    #@0
    .line 157
    invoke-static {p0, p1}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->setLayoutDirection(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@3
    return-void
.end method

.method public static setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2

    #@0
    .line 105
    invoke-static {p0, p1}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->setMarginEnd(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@3
    return-void
.end method

.method public static setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .registers 2

    #@0
    .line 86
    invoke-static {p0, p1}, Landroidx/core/view/MarginLayoutParamsCompat$Api17Impl;->setMarginStart(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    #@3
    return-void
.end method
