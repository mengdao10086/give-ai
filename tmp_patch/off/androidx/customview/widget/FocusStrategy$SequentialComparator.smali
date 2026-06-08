.class Landroidx/customview/widget/FocusStrategy$SequentialComparator;
.super Ljava/lang/Object;
.source "FocusStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/FocusStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequentialComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mIsLayoutRtl:Z

.field private final mTemp1:Landroid/graphics/Rect;

.field private final mTemp2:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/customview/widget/FocusStrategy$BoundsAdapter<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    #@a
    .line 96
    new-instance v0, Landroid/graphics/Rect;

    #@c
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@f
    iput-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    #@11
    .line 102
    iput-boolean p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    #@13
    .line 103
    iput-object p2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    #@15
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    #@0
    .line 108
    iget-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    #@2
    .line 109
    iget-object v1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    #@4
    .line 111
    iget-object v2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    #@6
    invoke-interface {v2, p1, v0}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    #@9
    .line 112
    iget-object p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    #@b
    invoke-interface {p1, p2, v1}, Landroidx/customview/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    #@e
    .line 114
    iget p1, v0, Landroid/graphics/Rect;->top:I

    #@10
    iget p2, v1, Landroid/graphics/Rect;->top:I

    #@12
    const/4 v2, -0x1

    #@13
    if-ge p1, p2, :cond_16

    #@15
    return v2

    #@16
    .line 116
    :cond_16
    iget p1, v0, Landroid/graphics/Rect;->top:I

    #@18
    iget p2, v1, Landroid/graphics/Rect;->top:I

    #@1a
    const/4 v3, 0x1

    #@1b
    if-le p1, p2, :cond_1e

    #@1d
    return v3

    #@1e
    .line 118
    :cond_1e
    iget p1, v0, Landroid/graphics/Rect;->left:I

    #@20
    iget p2, v1, Landroid/graphics/Rect;->left:I

    #@22
    if-ge p1, p2, :cond_2a

    #@24
    .line 119
    iget-boolean p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    #@26
    if-eqz p1, :cond_29

    #@28
    move v2, v3

    #@29
    :cond_29
    return v2

    #@2a
    .line 120
    :cond_2a
    iget p1, v0, Landroid/graphics/Rect;->left:I

    #@2c
    iget p2, v1, Landroid/graphics/Rect;->left:I

    #@2e
    if-le p1, p2, :cond_37

    #@30
    .line 121
    iget-boolean p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    #@32
    if-eqz p1, :cond_35

    #@34
    goto :goto_36

    #@35
    :cond_35
    move v2, v3

    #@36
    :goto_36
    return v2

    #@37
    .line 122
    :cond_37
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    #@39
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    #@3b
    if-ge p1, p2, :cond_3e

    #@3d
    return v2

    #@3e
    .line 124
    :cond_3e
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    #@40
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    #@42
    if-le p1, p2, :cond_45

    #@44
    return v3

    #@45
    .line 126
    :cond_45
    iget p1, v0, Landroid/graphics/Rect;->right:I

    #@47
    iget p2, v1, Landroid/graphics/Rect;->right:I

    #@49
    if-ge p1, p2, :cond_51

    #@4b
    .line 127
    iget-boolean p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    #@4d
    if-eqz p1, :cond_50

    #@4f
    move v2, v3

    #@50
    :cond_50
    return v2

    #@51
    .line 128
    :cond_51
    iget p1, v0, Landroid/graphics/Rect;->right:I

    #@53
    iget p2, v1, Landroid/graphics/Rect;->right:I

    #@55
    if-le p1, p2, :cond_5e

    #@57
    .line 129
    iget-boolean p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    #@59
    if-eqz p1, :cond_5c

    #@5b
    goto :goto_5d

    #@5c
    :cond_5c
    move v2, v3

    #@5d
    :goto_5d
    return v2

    #@5e
    :cond_5e
    const/4 p1, 0x0

    #@5f
    return p1
.end method
