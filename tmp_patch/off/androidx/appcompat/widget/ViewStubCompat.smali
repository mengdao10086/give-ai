.class public final Landroidx/appcompat/widget/ViewStubCompat;
.super Landroid/view/View;
.source "ViewStubCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;
    }
.end annotation


# instance fields
.field private mInflateListener:Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

.field private mInflatedId:I

.field private mInflatedViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutResource:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 55
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ViewStubCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    const/4 v0, 0x0

    #@4
    .line 46
    iput v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    #@6
    .line 61
    sget-object v1, Landroidx/appcompat/R$styleable;->ViewStubCompat:[I

    #@8
    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object p1

    #@c
    .line 64
    sget p2, Landroidx/appcompat/R$styleable;->ViewStubCompat_android_inflatedId:I

    #@e
    const/4 p3, -0x1

    #@f
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@12
    move-result p2

    #@13
    iput p2, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    #@15
    .line 65
    sget p2, Landroidx/appcompat/R$styleable;->ViewStubCompat_android_layout:I

    #@17
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1a
    move-result p2

    #@1b
    iput p2, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    #@1d
    .line 67
    sget p2, Landroidx/appcompat/R$styleable;->ViewStubCompat_android_id:I

    #@1f
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@22
    move-result p2

    #@23
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/ViewStubCompat;->setId(I)V

    #@26
    .line 68
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@29
    const/16 p1, 0x8

    #@2b
    .line 70
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ViewStubCompat;->setVisibility(I)V

    #@2e
    const/4 p1, 0x1

    #@2f
    .line 71
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ViewStubCompat;->setWillNotDraw(Z)V

    #@32
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2

    #@0
    return-void
.end method

.method public getInflatedId()I
    .registers 2

    #@0
    .line 85
    iget v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    #@2
    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    #@0
    .line 146
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    #@2
    return-object v0
.end method

.method public getLayoutResource()I
    .registers 2

    #@0
    .line 115
    iget v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    #@2
    return v0
.end method

.method public inflate()Landroid/view/View;
    .registers 5

    #@0
    .line 198
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->getParent()Landroid/view/ViewParent;

    #@3
    move-result-object v0

    #@4
    .line 200
    instance-of v1, v0, Landroid/view/ViewGroup;

    #@6
    if-eqz v1, :cond_55

    #@8
    .line 201
    iget v1, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    #@a
    if-eqz v1, :cond_4d

    #@c
    .line 202
    check-cast v0, Landroid/view/ViewGroup;

    #@e
    .line 204
    iget-object v1, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    #@10
    if-eqz v1, :cond_13

    #@12
    goto :goto_1b

    #@13
    .line 207
    :cond_13
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->getContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@1a
    move-result-object v1

    #@1b
    .line 209
    :goto_1b
    iget v2, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    #@1d
    const/4 v3, 0x0

    #@1e
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@21
    move-result-object v1

    #@22
    .line 212
    iget v2, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    #@24
    const/4 v3, -0x1

    #@25
    if-eq v2, v3, :cond_2a

    #@27
    .line 213
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    #@2a
    .line 216
    :cond_2a
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    #@2d
    move-result v2

    #@2e
    .line 217
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    #@31
    .line 219
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@34
    move-result-object v3

    #@35
    if-eqz v3, :cond_3b

    #@37
    .line 221
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    #@3a
    goto :goto_3e

    #@3b
    .line 223
    :cond_3b
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    #@3e
    .line 226
    :goto_3e
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@40
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@43
    iput-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    #@45
    .line 228
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflateListener:Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

    #@47
    if-eqz v0, :cond_4c

    #@49
    .line 229
    invoke-interface {v0, p0, v1}, Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;->onInflate(Landroidx/appcompat/widget/ViewStubCompat;Landroid/view/View;)V

    #@4c
    :cond_4c
    return-object v1

    #@4d
    .line 234
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4f
    const-string v1, "ViewStub must have a valid layoutResource"

    #@51
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@54
    throw v0

    #@55
    .line 237
    :cond_55
    new-instance v0, Ljava/lang/IllegalStateException;

    #@57
    const-string v1, "ViewStub must have a non-null ViewGroup viewParent"

    #@59
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v0
.end method

.method protected onMeasure(II)V
    .registers 3

    #@0
    const/4 p1, 0x0

    #@1
    .line 151
    invoke-virtual {p0, p1, p1}, Landroidx/appcompat/widget/ViewStubCompat;->setMeasuredDimension(II)V

    #@4
    return-void
.end method

.method public setInflatedId(I)V
    .registers 2

    #@0
    .line 99
    iput p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedId:I

    #@2
    return-void
.end method

.method public setLayoutInflater(Landroid/view/LayoutInflater;)V
    .registers 2

    #@0
    .line 139
    iput-object p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflater:Landroid/view/LayoutInflater;

    #@2
    return-void
.end method

.method public setLayoutResource(I)V
    .registers 2

    #@0
    .line 131
    iput p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->mLayoutResource:I

    #@2
    return-void
.end method

.method public setOnInflateListener(Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;)V
    .registers 2

    #@0
    .line 250
    iput-object p1, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflateListener:Landroidx/appcompat/widget/ViewStubCompat$OnInflateListener;

    #@2
    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    #@0
    .line 175
    iget-object v0, p0, Landroidx/appcompat/widget/ViewStubCompat;->mInflatedViewRef:Ljava/lang/ref/WeakReference;

    #@2
    if-eqz v0, :cond_18

    #@4
    .line 176
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/view/View;

    #@a
    if-eqz v0, :cond_10

    #@c
    .line 178
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    #@f
    goto :goto_23

    #@10
    .line 180
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    #@12
    const-string v0, "setVisibility called on un-referenced view"

    #@14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1

    #@18
    .line 183
    :cond_18
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    #@1b
    if-eqz p1, :cond_20

    #@1d
    const/4 v0, 0x4

    #@1e
    if-ne p1, v0, :cond_23

    #@20
    .line 185
    :cond_20
    invoke-virtual {p0}, Landroidx/appcompat/widget/ViewStubCompat;->inflate()Landroid/view/View;

    #@23
    :cond_23
    :goto_23
    return-void
.end method
