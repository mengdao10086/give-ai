.class Landroidx/core/view/ViewGroupCompat$Api21Impl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewGroupCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getNestedScrollAxes(Landroid/view/ViewGroup;)I
    .registers 1

    #@0
    .line 227
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 1

    #@0
    .line 222
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .registers 2

    #@0
    .line 217
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    #@3
    return-void
.end method
