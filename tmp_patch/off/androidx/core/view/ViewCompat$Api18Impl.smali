.class Landroidx/core/view/ViewCompat$Api18Impl;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api18Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 5186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 1

    #@0
    .line 5202
    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static isInLayout(Landroid/view/View;)Z
    .registers 1

    #@0
    .line 5192
    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 2

    #@0
    .line 5197
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    #@3
    return-void
.end method
