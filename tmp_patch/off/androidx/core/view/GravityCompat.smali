.class public final Landroidx/core/view/GravityCompat;
.super Ljava/lang/Object;
.source "GravityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/GravityCompat$Api17Impl;
    }
.end annotation


# static fields
.field public static final END:I = 0x800005

.field public static final RELATIVE_HORIZONTAL_GRAVITY_MASK:I = 0x800007

.field public static final RELATIVE_LAYOUT_DIRECTION:I = 0x800000

.field public static final START:I = 0x800003


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V
    .registers 8

    #@0
    .line 103
    invoke-static/range {p0 .. p7}, Landroidx/core/view/GravityCompat$Api17Impl;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;I)V

    #@3
    return-void
.end method

.method public static apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 6

    #@0
    .line 69
    invoke-static/range {p0 .. p5}, Landroidx/core/view/GravityCompat$Api17Impl;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@3
    return-void
.end method

.method public static applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 4

    #@0
    .line 132
    invoke-static {p0, p1, p2, p3}, Landroidx/core/view/GravityCompat$Api17Impl;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    #@3
    return-void
.end method

.method public static getAbsoluteGravity(II)I
    .registers 2

    #@0
    .line 151
    invoke-static {p0, p1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    #@3
    move-result p0

    #@4
    return p0
.end method
