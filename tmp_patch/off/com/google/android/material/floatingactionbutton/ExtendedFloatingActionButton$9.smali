.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$9;
.super Landroid/util/Property;
.source "ExtendedFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/view/View;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3

    #@0
    .line 987
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    #@0
    .line 1001
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    #@3
    move-result p1

    #@4
    int-to-float p1, p1

    #@5
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 987
    check-cast p1, Landroid/view/View;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$9;->get(Landroid/view/View;)Ljava/lang/Float;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public set(Landroid/view/View;Ljava/lang/Float;)V
    .registers 6

    #@0
    .line 992
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    .line 993
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    #@7
    move-result v1

    #@8
    .line 994
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    #@b
    move-result p2

    #@c
    .line 995
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    #@f
    move-result v2

    #@10
    .line 990
    invoke-static {p1, v0, v1, p2, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    #@13
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 987
    check-cast p1, Landroid/view/View;

    #@2
    check-cast p2, Ljava/lang/Float;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$9;->set(Landroid/view/View;Ljava/lang/Float;)V

    #@7
    return-void
.end method
