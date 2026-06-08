.class Landroidx/core/view/ViewCompat$4;
.super Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/ViewCompat;->accessibilityHeadingProperty()Landroidx/core/view/ViewCompat$AccessibilityViewProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/core/view/ViewCompat$AccessibilityViewProperty<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .registers 4

    #@0
    .line 4387
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/view/ViewCompat$AccessibilityViewProperty;-><init>(ILjava/lang/Class;I)V

    #@3
    return-void
.end method


# virtual methods
.method frameworkGet(Landroid/view/View;)Ljava/lang/Boolean;
    .registers 2

    #@0
    .line 4392
    invoke-static {p1}, Landroidx/core/view/ViewCompat$Api28Impl;->isAccessibilityHeading(Landroid/view/View;)Z

    #@3
    move-result p1

    #@4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@7
    move-result-object p1

    #@8
    return-object p1
.end method

.method bridge synthetic frameworkGet(Landroid/view/View;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 4387
    invoke-virtual {p0, p1}, Landroidx/core/view/ViewCompat$4;->frameworkGet(Landroid/view/View;)Ljava/lang/Boolean;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method frameworkSet(Landroid/view/View;Ljava/lang/Boolean;)V
    .registers 3

    #@0
    .line 4398
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@3
    move-result p2

    #@4
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat$Api28Impl;->setAccessibilityHeading(Landroid/view/View;Z)V

    #@7
    return-void
.end method

.method bridge synthetic frameworkSet(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 4387
    check-cast p2, Ljava/lang/Boolean;

    #@2
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewCompat$4;->frameworkSet(Landroid/view/View;Ljava/lang/Boolean;)V

    #@5
    return-void
.end method

.method shouldUpdate(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z
    .registers 3

    #@0
    .line 4403
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewCompat$4;->booleanNullToFalseEquals(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    #@3
    move-result p1

    #@4
    xor-int/lit8 p1, p1, 0x1

    #@6
    return p1
.end method

.method bridge synthetic shouldUpdate(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 4387
    check-cast p1, Ljava/lang/Boolean;

    #@2
    check-cast p2, Ljava/lang/Boolean;

    #@4
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/ViewCompat$4;->shouldUpdate(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    #@7
    move-result p1

    #@8
    return p1
.end method
