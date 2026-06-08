.class public Lcom/blankj/utilcode/util/ShadowUtils;
.super Ljava/lang/Object;
.source "ShadowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ShadowUtils$DrawableWrapper;,
        Lcom/blankj/utilcode/util/ShadowUtils$ShadowDrawable;,
        Lcom/blankj/utilcode/util/ShadowUtils$Config;
    }
.end annotation


# static fields
.field private static final SHADOW_TAG:I = -0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static apply(Landroid/view/View;Lcom/blankj/utilcode/util/ShadowUtils$Config;)V
    .registers 6

    #@0
    if-eqz p0, :cond_23

    #@2
    if-nez p1, :cond_5

    #@4
    goto :goto_23

    #@5
    .line 47
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    #@8
    move-result-object v0

    #@9
    const/16 v1, -0x10

    #@b
    .line 48
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    .line 49
    instance-of v3, v2, Landroid/graphics/drawable/Drawable;

    #@11
    if-eqz v3, :cond_19

    #@13
    .line 50
    check-cast v2, Landroid/graphics/drawable/Drawable;

    #@15
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@18
    goto :goto_23

    #@19
    .line 52
    :cond_19
    invoke-virtual {p1, v0}, Lcom/blankj/utilcode/util/ShadowUtils$Config;->apply(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object p1

    #@1d
    .line 53
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    #@20
    .line 54
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    #@23
    :cond_23
    :goto_23
    return-void
.end method

.method public static varargs apply([Landroid/view/View;)V
    .registers 5

    #@0
    if-nez p0, :cond_3

    #@2
    return-void

    #@3
    .line 40
    :cond_3
    array-length v0, p0

    #@4
    const/4 v1, 0x0

    #@5
    :goto_5
    if-ge v1, v0, :cond_14

    #@7
    aget-object v2, p0, v1

    #@9
    .line 41
    new-instance v3, Lcom/blankj/utilcode/util/ShadowUtils$Config;

    #@b
    invoke-direct {v3}, Lcom/blankj/utilcode/util/ShadowUtils$Config;-><init>()V

    #@e
    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/ShadowUtils;->apply(Landroid/view/View;Lcom/blankj/utilcode/util/ShadowUtils$Config;)V

    #@11
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_5

    #@14
    :cond_14
    return-void
.end method
