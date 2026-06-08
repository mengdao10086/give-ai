.class final Landroidx/dynamicanimation/animation/DynamicAnimation$8;
.super Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 162
    invoke-direct {p0, p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/DynamicAnimation$1;)V

    #@4
    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .registers 2

    #@0
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getRotationY()F

    #@3
    move-result p1

    #@4
    return p1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    #@0
    .line 162
    check-cast p1, Landroid/view/View;

    #@2
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation$8;->getValue(Landroid/view/View;)F

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 3

    #@0
    .line 165
    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    #@3
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    #@0
    .line 162
    check-cast p1, Landroid/view/View;

    #@2
    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation$8;->setValue(Landroid/view/View;F)V

    #@5
    return-void
.end method
