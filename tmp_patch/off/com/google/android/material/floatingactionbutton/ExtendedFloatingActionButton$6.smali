.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$6;
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
    .line 918
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@3
    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .registers 2

    #@0
    .line 932
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object p1

    #@4
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@6
    int-to-float p1, p1

    #@7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    #@0
    .line 918
    check-cast p1, Landroid/view/View;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$6;->get(Landroid/view/View;)Ljava/lang/Float;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public set(Landroid/view/View;Ljava/lang/Float;)V
    .registers 4

    #@0
    .line 923
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p2}, Ljava/lang/Float;->intValue()I

    #@7
    move-result p2

    #@8
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #@a
    .line 924
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    #@d
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 918
    check-cast p1, Landroid/view/View;

    #@2
    check-cast p2, Ljava/lang/Float;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$6;->set(Landroid/view/View;Ljava/lang/Float;)V

    #@7
    return-void
.end method
