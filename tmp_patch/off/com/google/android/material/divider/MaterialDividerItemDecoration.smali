.class public Lcom/google/android/material/divider/MaterialDividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MaterialDividerItemDecoration.java"


# static fields
.field private static final DEF_STYLE_RES:I

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private color:I

.field private dividerDrawable:Landroid/graphics/drawable/Drawable;

.field private insetEnd:I

.field private insetStart:I

.field private lastItemDecorated:Z

.field private orientation:I

.field private final tempRect:Landroid/graphics/Rect;

.field private thickness:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 61
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_MaterialDivider:I

    #@2
    sput v0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->DEF_STYLE_RES:I

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 74
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    #@0
    .line 79
    sget v0, Lcom/google/android/material/R$attr;->materialDividerStyle:I

    #@2
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12

    #@0
    .line 83
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    #@3
    .line 71
    new-instance v0, Landroid/graphics/Rect;

    #@5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    #@a
    .line 84
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialDivider:[I

    #@c
    sget v5, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->DEF_STYLE_RES:I

    #@e
    const/4 v0, 0x0

    #@f
    new-array v6, v0, [I

    #@11
    move-object v1, p1

    #@12
    move-object v2, p2

    #@13
    move v4, p3

    #@14
    .line 85
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    #@17
    move-result-object p2

    #@18
    .line 88
    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerColor:I

    #@1a
    .line 89
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    #@1d
    move-result-object p3

    #@1e
    .line 91
    invoke-virtual {p3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    #@21
    move-result p3

    #@22
    iput p3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    #@24
    .line 92
    sget p3, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerThickness:I

    #@26
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@29
    move-result-object p1

    #@2a
    sget v1, Lcom/google/android/material/R$dimen;->material_divider_thickness:I

    #@2c
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2f
    move-result p1

    #@30
    .line 93
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@33
    move-result p1

    #@34
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    #@36
    .line 96
    sget p1, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetStart:I

    #@38
    .line 97
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@3b
    move-result p1

    #@3c
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    #@3e
    .line 98
    sget p1, Lcom/google/android/material/R$styleable;->MaterialDivider_dividerInsetEnd:I

    #@40
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    #@43
    move-result p1

    #@44
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    #@46
    .line 99
    sget p1, Lcom/google/android/material/R$styleable;->MaterialDivider_lastItemDecorated:I

    #@48
    const/4 p3, 0x1

    #@49
    .line 100
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@4c
    move-result p1

    #@4d
    iput-boolean p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    #@4f
    .line 102
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    #@52
    .line 104
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    #@54
    invoke-direct {p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    #@57
    iput-object p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    #@59
    .line 105
    iget p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    #@5b
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    #@5e
    .line 106
    invoke-virtual {p0, p4}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setOrientation(I)V

    #@61
    return-void
.end method

.method private drawForHorizontalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 10

    #@0
    .line 340
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 343
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    if-eqz v0, :cond_28

    #@a
    .line 344
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@d
    move-result v0

    #@e
    .line 345
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
    .line 347
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@1a
    move-result v3

    #@1b
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
    .line 346
    invoke-virtual {p1, v3, v0, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@27
    goto :goto_2d

    #@28
    .line 350
    :cond_28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    #@2b
    move-result v2

    #@2c
    move v0, v1

    #@2d
    .line 352
    :goto_2d
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    #@2f
    add-int/2addr v0, v3

    #@30
    .line 353
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    #@32
    sub-int/2addr v2, v3

    #@33
    .line 355
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    #@36
    move-result v3

    #@37
    :goto_37
    if-ge v1, v3, :cond_66

    #@39
    .line 357
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    #@3c
    move-result-object v4

    #@3d
    .line 358
    invoke-direct {p0, p2, v4}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_63

    #@43
    .line 359
    iget-object v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    #@45
    invoke-virtual {p2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    #@48
    .line 361
    iget-object v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    #@4a
    iget v5, v5, Landroid/graphics/Rect;->right:I

    #@4c
    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    #@4f
    move-result v4

    #@50
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@53
    move-result v4

    #@54
    add-int/2addr v5, v4

    #@55
    .line 362
    iget v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    #@57
    sub-int v4, v5, v4

    #@59
    .line 363
    iget-object v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    #@5b
    invoke-virtual {v6, v4, v0, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@5e
    .line 364
    iget-object v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    #@60
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@63
    :cond_63
    add-int/lit8 v1, v1, 0x1

    #@65
    goto :goto_37

    #@66
    .line 367
    :cond_66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@69
    return-void
.end method

.method private drawForVerticalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 10

    #@0
    .line 304
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    #@3
    .line 307
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getClipToPadding()Z

    #@6
    move-result v0

    #@7
    const/4 v1, 0x0

    #@8
    if-eqz v0, :cond_28

    #@a
    .line 308
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    #@d
    move-result v0

    #@e
    .line 309
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
    .line 311
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    #@1a
    move-result v3

    #@1b
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
    .line 310
    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    #@27
    goto :goto_2d

    #@28
    .line 314
    :cond_28
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@2b
    move-result v2

    #@2c
    move v0, v1

    #@2d
    .line 316
    :goto_2d
    invoke-static {p2}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    #@30
    move-result v3

    #@31
    const/4 v4, 0x1

    #@32
    if-ne v3, v4, :cond_35

    #@34
    goto :goto_36

    #@35
    :cond_35
    move v4, v1

    #@36
    :goto_36
    if-eqz v4, :cond_3b

    #@38
    .line 317
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    #@3a
    goto :goto_3d

    #@3b
    :cond_3b
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    #@3d
    :goto_3d
    add-int/2addr v0, v3

    #@3e
    if-eqz v4, :cond_43

    #@40
    .line 318
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    #@42
    goto :goto_45

    #@43
    :cond_43
    iget v3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    #@45
    :goto_45
    sub-int/2addr v2, v3

    #@46
    .line 320
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    #@49
    move-result v3

    #@4a
    :goto_4a
    if-ge v1, v3, :cond_79

    #@4c
    .line 322
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    #@4f
    move-result-object v4

    #@50
    .line 323
    invoke-direct {p0, p2, v4}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    #@53
    move-result v5

    #@54
    if-eqz v5, :cond_76

    #@56
    .line 324
    iget-object v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    #@58
    invoke-virtual {p2, v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    #@5b
    .line 326
    iget-object v5, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->tempRect:Landroid/graphics/Rect;

    #@5d
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    #@5f
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    #@62
    move-result v4

    #@63
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@66
    move-result v4

    #@67
    add-int/2addr v5, v4

    #@68
    .line 327
    iget v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    #@6a
    sub-int v4, v5, v4

    #@6c
    .line 328
    iget-object v6, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    #@6e
    invoke-virtual {v6, v0, v4, v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@71
    .line 329
    iget-object v4, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    #@73
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@76
    :cond_76
    add-int/lit8 v1, v1, 0x1

    #@78
    goto :goto_4a

    #@79
    .line 332
    :cond_79
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    #@7c
    return-void
.end method

.method private shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z
    .registers 7

    #@0
    .line 388
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    #@3
    move-result p2

    #@4
    .line 389
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@7
    move-result-object p1

    #@8
    const/4 v0, 0x0

    #@9
    const/4 v1, 0x1

    #@a
    if-eqz p1, :cond_15

    #@c
    .line 390
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    #@f
    move-result v2

    #@10
    sub-int/2addr v2, v1

    #@11
    if-ne p2, v2, :cond_15

    #@13
    move v2, v1

    #@14
    goto :goto_16

    #@15
    :cond_15
    move v2, v0

    #@16
    :goto_16
    const/4 v3, -0x1

    #@17
    if-eq p2, v3, :cond_26

    #@19
    if-eqz v2, :cond_1f

    #@1b
    .line 392
    iget-boolean v2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    #@1d
    if-eqz v2, :cond_26

    #@1f
    .line 394
    :cond_1f
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z

    #@22
    move-result p1

    #@23
    if-eqz p1, :cond_26

    #@25
    move v0, v1

    #@26
    :cond_26
    return v0
.end method


# virtual methods
.method public getDividerColor()I
    .registers 2

    #@0
    .line 196
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    #@2
    return v0
.end method

.method public getDividerInsetEnd()I
    .registers 2

    #@0
    .line 262
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    #@2
    return v0
.end method

.method public getDividerInsetStart()I
    .registers 2

    #@0
    .line 229
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    #@2
    return v0
.end method

.method public getDividerThickness()I
    .registers 2

    #@0
    .line 161
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    #@2
    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    #@0
    const/4 p4, 0x0

    #@1
    .line 376
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    #@4
    .line 378
    invoke-direct {p0, p3, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->shouldDrawDivider(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)Z

    #@7
    move-result p2

    #@8
    if-eqz p2, :cond_18

    #@a
    .line 379
    iget p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    #@c
    const/4 p3, 0x1

    #@d
    if-ne p2, p3, :cond_14

    #@f
    .line 380
    iget p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    #@11
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    #@13
    goto :goto_18

    #@14
    .line 382
    :cond_14
    iget p2, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    #@16
    iput p2, p1, Landroid/graphics/Rect;->right:I

    #@18
    :cond_18
    :goto_18
    return-void
.end method

.method public getOrientation()I
    .registers 2

    #@0
    .line 128
    iget v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    #@2
    return v0
.end method

.method public isLastItemDecorated()Z
    .registers 2

    #@0
    .line 283
    iget-boolean v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    #@2
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    #@0
    .line 289
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@3
    move-result-object p3

    #@4
    if-nez p3, :cond_7

    #@6
    return-void

    #@7
    .line 292
    :cond_7
    iget p3, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    #@9
    const/4 v0, 0x1

    #@a
    if-ne p3, v0, :cond_10

    #@c
    .line 293
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->drawForVerticalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    #@f
    goto :goto_13

    #@10
    .line 295
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->drawForHorizontalOrientation(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;)V

    #@13
    :goto_13
    return-void
.end method

.method public setDividerColor(I)V
    .registers 3

    #@0
    .line 172
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->color:I

    #@2
    .line 173
    iget-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    #@4
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->dividerDrawable:Landroid/graphics/drawable/Drawable;

    #@a
    .line 174
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    #@d
    return-void
.end method

.method public setDividerColorResource(Landroid/content/Context;I)V
    .registers 3

    #@0
    .line 185
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    #@3
    move-result p1

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    #@7
    return-void
.end method

.method public setDividerInsetEnd(I)V
    .registers 2

    #@0
    .line 240
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetEnd:I

    #@2
    return-void
.end method

.method public setDividerInsetEndResource(Landroid/content/Context;I)V
    .registers 3

    #@0
    .line 251
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerInsetEnd(I)V

    #@b
    return-void
.end method

.method public setDividerInsetStart(I)V
    .registers 2

    #@0
    .line 207
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->insetStart:I

    #@2
    return-void
.end method

.method public setDividerInsetStartResource(Landroid/content/Context;I)V
    .registers 3

    #@0
    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerInsetStart(I)V

    #@b
    return-void
.end method

.method public setDividerThickness(I)V
    .registers 2

    #@0
    .line 139
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->thickness:I

    #@2
    return-void
.end method

.method public setDividerThicknessResource(Landroid/content/Context;I)V
    .registers 3

    #@0
    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@7
    move-result p1

    #@8
    invoke-virtual {p0, p1}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerThickness(I)V

    #@b
    return-void
.end method

.method public setLastItemDecorated(Z)V
    .registers 2

    #@0
    .line 273
    iput-boolean p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->lastItemDecorated:Z

    #@2
    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    #@0
    if-eqz p1, :cond_21

    #@2
    const/4 v0, 0x1

    #@3
    if-ne p1, v0, :cond_6

    #@5
    goto :goto_21

    #@6
    .line 121
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    const-string v2, "Invalid orientation: "

    #@c
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object p1

    #@13
    const-string v1, ". It should be either HORIZONTAL or VERTICAL"

    #@15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object p1

    #@19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 124
    :cond_21
    :goto_21
    iput p1, p0, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->orientation:I

    #@23
    return-void
.end method

.method protected shouldDrawDivider(ILandroidx/recyclerview/widget/RecyclerView$Adapter;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)Z"
        }
    .end annotation

    #@0
    const/4 p1, 0x1

    #@1
    return p1
.end method
