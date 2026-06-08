.class public Landroidx/recyclerview/widget/DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# static fields
.field private static final ATTRS:[I

.field public static final HORIZONTAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DividerItem"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    const v2, 0x1010214

    #@7
    aput v2, v0, v1

    #@9
    .line 48
    sput-object v0, Landroidx/recyclerview/widget/DividerItemDecoration;->ATTRS:[I

    #@b
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    #@0
    .line 66
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    #@3
    .line 57
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    #@a
    .line 67
    sget-object v0, Landroidx/recyclerview/widget/DividerItemDecoration;->ATTRS:[I

    #@c
    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@f
    move-result-object p1

    #@10
    const/4 v0, 0x0

    #@11
    .line 68
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    #@17
    if-nez v0, :cond_20

    #@19
    const-string v0, "DividerItem"

    #@1b
    const-string v1, "@android:attr/listDivider was not set in the theme used for this DividerItemDecoration. Please set that attribute all call setDrawable()"

    #@1d
    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 73
    :cond_20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@23
    .line 74
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/DividerItemDecoration;->setOrientation(I)V

    #@26
    return-void
.end method

.method private drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 10

    #@0
    .line 151
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 155
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    if-eqz v0, :cond_28

    #@a
    .line 156
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@d
    move-result v0

    #@e
    .line 157
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@11
    move-result v2

    #@12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@15
    move-result v3

    #@16
    sub-int/2addr v2, v3

    #@17
    .line 158
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@1a
    move-result v3

    #@1b
    .line 159
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@22
    move-result v5

    #@23
    sub-int/2addr v4, v5

    #@24
    .line 158
    invoke-virtual {p1, v3, v0, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@27
    goto :goto_2d

    #@28
    .line 162
    :cond_28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@2b
    move-result v2

    #@2c
    move v0, v1

    #@2d
    .line 165
    :goto_2d
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    #@30
    move-result v3

    #@31
    :goto_31
    if-ge v1, v3, :cond_62

    #@33
    .line 167
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    #@36
    move-result-object v4

    #@37
    .line 168
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@3a
    move-result-object v5

    #@3b
    iget-object v6, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    #@3d
    invoke-virtual {v5, v4, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    #@40
    .line 169
    iget-object v5, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    #@42
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@44
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    #@47
    move-result v4

    #@48
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@4b
    move-result v4

    #@4c
    add-int/2addr v5, v4

    #@4d
    .line 170
    iget-object v4, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    #@4f
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@52
    move-result v4

    #@53
    sub-int v4, v5, v4

    #@55
    .line 171
    iget-object v6, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    #@57
    invoke-virtual {v6, v4, v0, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@5a
    .line 172
    iget-object v4, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    #@5c
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@5f
    add-int/lit8 v1, v1, 0x1

    #@61
    goto :goto_31

    #@62
    .line 174
    :cond_62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@65
    return-void
.end method

.method private drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 10

    #@0
    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 128
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    if-eqz v0, :cond_28

    #@a
    .line 129
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@d
    move-result v0

    #@e
    .line 130
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@11
    move-result v2

    #@12
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    #@15
    move-result v3

    #@16
    sub-int/2addr v2, v3

    #@17
    .line 131
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@1a
    move-result v3

    #@1b
    .line 132
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    #@22
    move-result v5

    #@23
    sub-int/2addr v4, v5

    #@24
    .line 131
    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@27
    goto :goto_2d

    #@28
    .line 135
    :cond_28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@2b
    move-result v2

    #@2c
    move v0, v1

    #@2d
    .line 138
    :goto_2d
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    #@30
    move-result v3

    #@31
    :goto_31
    if-ge v1, v3, :cond_5e

    #@33
    .line 140
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    #@36
    move-result-object v4

    #@37
    .line 141
    iget-object v5, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    #@39
    invoke-virtual {p2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    #@3c
    .line 142
    iget-object v5, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mBounds:Landroid/graphics/Rect;

    #@3e
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@40
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    #@43
    move-result v4

    #@44
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@47
    move-result v4

    #@48
    add-int/2addr v5, v4

    #@49
    .line 143
    iget-object v4, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    #@4b
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@4e
    move-result v4

    #@4f
    sub-int v4, v5, v4

    #@51
    .line 144
    iget-object v6, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    #@53
    invoke-virtual {v6, v0, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@56
    .line 145
    iget-object v4, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    #@58
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@5b
    add-int/lit8 v1, v1, 0x1

    #@5d
    goto :goto_31

    #@5e
    .line 147
    :cond_5e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@61
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    #@0
    .line 108
    iget-object v0, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    return-object v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    #@0
    .line 180
    iget-object p2, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    #@2
    const/4 p3, 0x0

    #@3
    if-nez p2, :cond_9

    #@5
    .line 181
    invoke-virtual {p1, p3, p3, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    #@8
    return-void

    #@9
    .line 184
    :cond_9
    iget p4, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    #@b
    const/4 v0, 0x1

    #@c
    if-ne p4, v0, :cond_16

    #@e
    .line 185
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@11
    move-result p2

    #@12
    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    #@15
    goto :goto_1d

    #@16
    .line 187
    :cond_16
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@19
    move-result p2

    #@1a
    invoke-virtual {p1, p3, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    #@1d
    :goto_1d
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    #@0
    .line 113
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@3
    move-result-object p3

    #@4
    if-eqz p3, :cond_17

    #@6
    iget-object p3, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    #@8
    if-nez p3, :cond_b

    #@a
    goto :goto_17

    #@b
    .line 116
    :cond_b
    iget p3, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    #@d
    const/4 v0, 0x1

    #@e
    if-ne p3, v0, :cond_14

    #@10
    .line 117
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/DividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    #@13
    goto :goto_17

    #@14
    .line 119
    :cond_14
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/DividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    #@17
    :cond_17
    :goto_17
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    if-eqz p1, :cond_5

    #@2
    .line 100
    iput-object p1, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    #@4
    return-void

    #@5
    .line 98
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@7
    const-string v0, "Drawable cannot be null."

    #@9
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw p1
.end method

.method public setOrientation(I)V
    .registers 3

    #@0
    if-eqz p1, :cond_e

    #@2
    const/4 v0, 0x1

    #@3
    if-ne p1, v0, :cond_6

    #@5
    goto :goto_e

    #@6
    .line 85
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string v0, "Invalid orientation. It should be either HORIZONTAL or VERTICAL"

    #@a
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw p1

    #@e
    .line 88
    :cond_e
    :goto_e
    iput p1, p0, Landroidx/recyclerview/widget/DividerItemDecoration;->mOrientation:I

    #@10
    return-void
.end method
