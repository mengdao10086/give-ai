.class final Landroidx/recyclerview/widget/DiffUtil$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/DiffUtil$Snake;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroidx/recyclerview/widget/DiffUtil$Snake;Landroidx/recyclerview/widget/DiffUtil$Snake;)I
    .registers 5

    #@0
    .line 87
    iget v0, p1, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@2
    iget v1, p2, Landroidx/recyclerview/widget/DiffUtil$Snake;->x:I

    #@4
    sub-int/2addr v0, v1

    #@5
    if-nez v0, :cond_d

    #@7
    .line 88
    iget p1, p1, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@9
    iget p2, p2, Landroidx/recyclerview/widget/DiffUtil$Snake;->y:I

    #@b
    sub-int v0, p1, p2

    #@d
    :cond_d
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 84
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Snake;

    #@2
    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Snake;

    #@4
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$1;->compare(Landroidx/recyclerview/widget/DiffUtil$Snake;Landroidx/recyclerview/widget/DiffUtil$Snake;)I

    #@7
    move-result p1

    #@8
    return p1
.end method
