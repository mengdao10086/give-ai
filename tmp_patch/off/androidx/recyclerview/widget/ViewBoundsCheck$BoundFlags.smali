.class Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;
.super Ljava/lang/Object;
.source "ViewBoundsCheck.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ViewBoundsCheck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BoundFlags"
.end annotation


# instance fields
.field mBoundFlags:I

.field mChildEnd:I

.field mChildStart:I

.field mRvEnd:I

.field mRvStart:I


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 137
    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    #@6
    return-void
.end method


# virtual methods
.method addFlags(I)V
    .registers 3

    #@0
    .line 148
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    #@2
    or-int/2addr p1, v0

    #@3
    iput p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    #@5
    return-void
.end method

.method boundsMatch()Z
    .registers 5

    #@0
    .line 166
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    #@2
    and-int/lit8 v1, v0, 0x7

    #@4
    const/4 v2, 0x0

    #@5
    if-eqz v1, :cond_14

    #@7
    .line 167
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    #@9
    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    #@b
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    #@e
    move-result v1

    #@f
    shl-int/2addr v1, v2

    #@10
    and-int/2addr v0, v1

    #@11
    if-nez v0, :cond_14

    #@13
    return v2

    #@14
    .line 172
    :cond_14
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    #@16
    and-int/lit8 v1, v0, 0x70

    #@18
    if-eqz v1, :cond_28

    #@1a
    .line 173
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    #@1c
    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    #@1e
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    #@21
    move-result v1

    #@22
    shl-int/lit8 v1, v1, 0x4

    #@24
    and-int/2addr v0, v1

    #@25
    if-nez v0, :cond_28

    #@27
    return v2

    #@28
    .line 178
    :cond_28
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    #@2a
    and-int/lit16 v1, v0, 0x700

    #@2c
    if-eqz v1, :cond_3c

    #@2e
    .line 179
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    #@30
    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    #@32
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    #@35
    move-result v1

    #@36
    shl-int/lit8 v1, v1, 0x8

    #@38
    and-int/2addr v0, v1

    #@39
    if-nez v0, :cond_3c

    #@3b
    return v2

    #@3c
    .line 184
    :cond_3c
    iget v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    #@3e
    and-int/lit16 v1, v0, 0x7000

    #@40
    if-eqz v1, :cond_50

    #@42
    .line 185
    iget v1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    #@44
    iget v3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    #@46
    invoke-virtual {p0, v1, v3}, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->compare(II)I

    #@49
    move-result v1

    #@4a
    shl-int/lit8 v1, v1, 0xc

    #@4c
    and-int/2addr v0, v1

    #@4d
    if-nez v0, :cond_50

    #@4f
    return v2

    #@50
    :cond_50
    const/4 v0, 0x1

    #@51
    return v0
.end method

.method compare(II)I
    .registers 3

    #@0
    if-le p1, p2, :cond_4

    #@2
    const/4 p1, 0x1

    #@3
    return p1

    #@4
    :cond_4
    if-ne p1, p2, :cond_8

    #@6
    const/4 p1, 0x2

    #@7
    return p1

    #@8
    :cond_8
    const/4 p1, 0x4

    #@9
    return p1
.end method

.method resetFlags()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 152
    iput v0, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mBoundFlags:I

    #@3
    return-void
.end method

.method setBounds(IIII)V
    .registers 5

    #@0
    .line 141
    iput p1, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvStart:I

    #@2
    .line 142
    iput p2, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mRvEnd:I

    #@4
    .line 143
    iput p3, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildStart:I

    #@6
    .line 144
    iput p4, p0, Landroidx/recyclerview/widget/ViewBoundsCheck$BoundFlags;->mChildEnd:I

    #@8
    return-void
.end method
