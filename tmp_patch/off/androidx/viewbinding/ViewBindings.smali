.class public Landroidx/viewbinding/ViewBindings;
.super Ljava/lang/Object;
.source "ViewBindings.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static findChildViewById(Landroid/view/View;I)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    #@0
    .line 40
    instance-of v0, p0, Landroid/view/ViewGroup;

    #@2
    const/4 v1, 0x0

    #@3
    if-nez v0, :cond_6

    #@5
    return-object v1

    #@6
    .line 43
    :cond_6
    check-cast p0, Landroid/view/ViewGroup;

    #@8
    .line 44
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    #@b
    move-result v0

    #@c
    const/4 v2, 0x0

    #@d
    :goto_d
    if-ge v2, v0, :cond_1d

    #@f
    .line 46
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@16
    move-result-object v3

    #@17
    if-eqz v3, :cond_1a

    #@19
    return-object v3

    #@1a
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    #@1c
    goto :goto_d

    #@1d
    :cond_1d
    return-object v1
.end method
