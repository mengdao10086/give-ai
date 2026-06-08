.class Landroidx/core/widget/EdgeEffectCompat$Api31Impl;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/EdgeEffectCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api31Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;
    .registers 3

    #@0
    .line 311
    :try_start_0
    new-instance v0, Landroid/widget/EdgeEffect;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    #@5
    return-object v0

    #@6
    .line 313
    :catchall_6
    new-instance p1, Landroid/widget/EdgeEffect;

    #@8
    invoke-direct {p1, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    #@b
    return-object p1
.end method

.method public static getDistance(Landroid/widget/EdgeEffect;)F
    .registers 1

    #@0
    .line 334
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->getDistance()F

    #@3
    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    #@4
    return p0

    #@5
    :catchall_5
    const/4 p0, 0x0

    #@6
    return p0
.end method

.method public static onPullDistance(Landroid/widget/EdgeEffect;FF)F
    .registers 3

    #@0
    .line 324
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPullDistance(FF)F

    #@3
    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    #@4
    return p0

    #@5
    .line 326
    :catchall_5
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    #@8
    const/4 p0, 0x0

    #@9
    return p0
.end method
