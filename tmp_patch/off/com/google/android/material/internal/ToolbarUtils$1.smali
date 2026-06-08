.class Lcom/google/android/material/internal/ToolbarUtils$1;
.super Ljava/lang/Object;
.source "ToolbarUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/ToolbarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .registers 3

    #@0
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    #@3
    move-result p1

    #@4
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    #@7
    move-result p2

    #@8
    sub-int/2addr p1, p2

    #@9
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 49
    check-cast p1, Landroid/view/View;

    #@2
    check-cast p2, Landroid/view/View;

    #@4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/ToolbarUtils$1;->compare(Landroid/view/View;Landroid/view/View;)I

    #@7
    move-result p1

    #@8
    return p1
.end method
