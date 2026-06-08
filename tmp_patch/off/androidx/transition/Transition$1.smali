.class final Landroidx/transition/Transition$1;
.super Landroidx/transition/PathMotion;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 171
    invoke-direct {p0}, Landroidx/transition/PathMotion;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getPath(FFFF)Landroid/graphics/Path;
    .registers 6

    #@0
    .line 174
    new-instance v0, Landroid/graphics/Path;

    #@2
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@5
    .line 175
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    #@8
    .line 176
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    #@b
    return-object v0
.end method
