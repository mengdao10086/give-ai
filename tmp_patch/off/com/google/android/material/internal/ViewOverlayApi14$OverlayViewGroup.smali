.class Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;
.super Landroid/view/ViewGroup;
.source "ViewOverlayApi14.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/ViewOverlayApi14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OverlayViewGroup"
.end annotation


# static fields
.field static invalidateChildInParentFastMethod:Ljava/lang/reflect/Method;


# instance fields
.field private disposed:Z

.field drawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field hostView:Landroid/view/ViewGroup;

.field requestingView:Landroid/view/View;

.field viewOverlay:Lcom/google/android/material/internal/ViewOverlayApi14;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    #@0
    .line 99
    :try_start_0
    const-class v0, Landroid/view/ViewGroup;

    #@2
    const-string v1, "invalidateChildInParentFast"

    #@4
    const/4 v2, 0x3

    #@5
    new-array v2, v2, [Ljava/lang/Class;

    #@7
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@9
    const/4 v4, 0x0

    #@a
    aput-object v3, v2, v4

    #@c
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@e
    const/4 v4, 0x1

    #@f
    aput-object v3, v2, v4

    #@11
    const-class v3, Landroid/graphics/Rect;

    #@13
    const/4 v4, 0x2

    #@14
    aput-object v3, v2, v4

    #@16
    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->invalidateChildInParentFastMethod:Ljava/lang/reflect/Method;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1c

    #@1c
    :catch_1c
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/internal/ViewOverlayApi14;)V
    .registers 5

    #@0
    .line 123
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 115
    iput-object p1, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    #@6
    .line 124
    iput-object p2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    #@8
    .line 125
    iput-object p3, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->requestingView:Landroid/view/View;

    #@a
    .line 126
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    #@d
    move-result p1

    #@e
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->setRight(I)V

    #@11
    .line 127
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    #@14
    move-result p1

    #@15
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->setBottom(I)V

    #@18
    .line 128
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@1b
    .line 129
    iput-object p4, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->viewOverlay:Lcom/google/android/material/internal/ViewOverlayApi14;

    #@1d
    return-void
.end method

.method private assertNotDisposed()V
    .registers 3

    #@0
    .line 203
    iget-boolean v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->disposed:Z

    #@2
    if-nez v0, :cond_5

    #@4
    return-void

    #@5
    .line 204
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@7
    const-string v1, "This overlay was disposed already. Please use a new one via ViewGroupUtils.getOverlay()"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0
.end method

.method private disposeIfEmpty()V
    .registers 2

    #@0
    .line 211
    invoke-virtual {p0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->getChildCount()I

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_18

    #@6
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    #@8
    if-eqz v0, :cond_10

    #@a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_18

    #@10
    :cond_10
    const/4 v0, 0x1

    #@11
    .line 212
    iput-boolean v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->disposed:Z

    #@13
    .line 213
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    #@15
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@18
    :cond_18
    return-void
.end method

.method private getOffset([I)V
    .registers 7

    #@0
    const/4 v0, 0x2

    #@1
    new-array v1, v0, [I

    #@3
    new-array v0, v0, [I

    #@5
    .line 257
    iget-object v2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    #@7
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@a
    .line 258
    iget-object v2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->requestingView:Landroid/view/View;

    #@c
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@f
    const/4 v2, 0x0

    #@10
    aget v3, v0, v2

    #@12
    aget v4, v1, v2

    #@14
    sub-int/2addr v3, v4

    #@15
    .line 259
    aput v3, p1, v2

    #@17
    const/4 v2, 0x1

    #@18
    aget v0, v0, v2

    #@1a
    aget v1, v1, v2

    #@1c
    sub-int/2addr v0, v1

    #@1d
    .line 260
    aput v0, p1, v2

    #@1f
    return-void
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 140
    invoke-direct {p0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->assertNotDisposed()V

    #@3
    .line 141
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    #@5
    if-nez v0, :cond_e

    #@7
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    #@e
    .line 145
    :cond_e
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_25

    #@16
    .line 147
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1b
    .line 148
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@22
    .line 149
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@25
    :cond_25
    return-void
.end method

.method public add(Landroid/view/View;)V
    .registers 7

    #@0
    .line 169
    invoke-direct {p0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->assertNotDisposed()V

    #@3
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@6
    move-result-object v0

    #@7
    instance-of v0, v0, Landroid/view/ViewGroup;

    #@9
    if-eqz v0, :cond_4c

    #@b
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Landroid/view/ViewGroup;

    #@11
    .line 172
    iget-object v1, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    #@13
    if-eq v0, v1, :cond_40

    #@15
    .line 173
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    #@18
    move-result-object v1

    #@19
    if-eqz v1, :cond_40

    #@1b
    .line 174
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_40

    #@21
    const/4 v1, 0x2

    #@22
    new-array v2, v1, [I

    #@24
    new-array v1, v1, [I

    #@26
    .line 179
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@29
    .line 180
    iget-object v3, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    #@2b
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@2e
    const/4 v3, 0x0

    #@2f
    aget v4, v2, v3

    #@31
    aget v3, v1, v3

    #@33
    sub-int/2addr v4, v3

    #@34
    .line 181
    invoke-static {p1, v4}, Landroidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    #@37
    const/4 v3, 0x1

    #@38
    aget v2, v2, v3

    #@3a
    aget v1, v1, v3

    #@3c
    sub-int/2addr v2, v1

    #@3d
    .line 182
    invoke-static {p1, v2}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    #@40
    .line 184
    :cond_40
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@43
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@46
    move-result-object v1

    #@47
    if-eqz v1, :cond_4c

    #@49
    .line 191
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@4c
    .line 194
    :cond_4c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    #@4f
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 7

    #@0
    const/4 v0, 0x2

    #@1
    new-array v1, v0, [I

    #@3
    new-array v0, v0, [I

    #@5
    .line 227
    iget-object v2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    #@7
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    #@a
    .line 228
    iget-object v2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->requestingView:Landroid/view/View;

    #@c
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    #@f
    const/4 v2, 0x0

    #@10
    aget v3, v0, v2

    #@12
    aget v4, v1, v2

    #@14
    sub-int/2addr v3, v4

    #@15
    int-to-float v3, v3

    #@16
    const/4 v4, 0x1

    #@17
    aget v0, v0, v4

    #@19
    aget v1, v1, v4

    #@1b
    sub-int/2addr v0, v1

    #@1c
    int-to-float v0, v0

    #@1d
    .line 229
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    #@20
    .line 232
    new-instance v0, Landroid/graphics/Rect;

    #@22
    iget-object v1, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->requestingView:Landroid/view/View;

    #@24
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    #@27
    move-result v1

    #@28
    iget-object v3, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->requestingView:Landroid/view/View;

    #@2a
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    #@2d
    move-result v3

    #@2e
    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    #@31
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    #@34
    .line 233
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    #@37
    .line 234
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    #@39
    if-nez v0, :cond_3d

    #@3b
    move v0, v2

    #@3c
    goto :goto_41

    #@3d
    :cond_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v0

    #@41
    :goto_41
    if-ge v2, v0, :cond_51

    #@43
    .line 236
    iget-object v1, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Landroid/graphics/drawable/Drawable;

    #@4b
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@4e
    add-int/lit8 v2, v2, 0x1

    #@50
    goto :goto_41

    #@51
    :cond_51
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    #@0
    const/4 p1, 0x0

    #@1
    return p1
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 7

    #@0
    .line 283
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    #@2
    if-eqz v0, :cond_2a

    #@4
    const/4 v0, 0x0

    #@5
    .line 284
    aget v1, p1, v0

    #@7
    const/4 v2, 0x1

    #@8
    aget v3, p1, v2

    #@a
    invoke-virtual {p2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    #@d
    .line 285
    iget-object v1, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    #@f
    if-eqz v1, :cond_27

    #@11
    .line 286
    aput v0, p1, v0

    #@13
    .line 287
    aput v0, p1, v2

    #@15
    const/4 v1, 0x2

    #@16
    new-array v1, v1, [I

    #@18
    .line 289
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    #@1b
    aget v0, v1, v0

    #@1d
    aget v1, v1, v2

    #@1f
    .line 290
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    #@22
    .line 291
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    #@25
    move-result-object p1

    #@26
    return-object p1

    #@27
    .line 294
    :cond_27
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@2a
    :cond_2a
    const/4 p1, 0x0

    #@2b
    return-object p1
.end method

.method protected invalidateChildInParentFast(IILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 9

    #@0
    .line 266
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    #@2
    if-eqz v0, :cond_32

    #@4
    sget-object v0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->invalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    #@6
    if-eqz v0, :cond_32

    #@8
    const/4 v0, 0x2

    #@9
    :try_start_9
    new-array v1, v0, [I

    #@b
    .line 269
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->getOffset([I)V

    #@e
    .line 270
    sget-object v1, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->invalidateChildInParentFastMethod:Ljava/lang/reflect/Method;

    #@10
    iget-object v2, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->hostView:Landroid/view/ViewGroup;

    #@12
    const/4 v3, 0x3

    #@13
    new-array v3, v3, [Ljava/lang/Object;

    #@15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object p1

    #@19
    const/4 v4, 0x0

    #@1a
    aput-object p1, v3, v4

    #@1c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object p1

    #@20
    const/4 p2, 0x1

    #@21
    aput-object p1, v3, p2

    #@23
    aput-object p3, v3, v0

    #@25
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_28} :catch_2e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_28} :catch_29

    #@28
    goto :goto_32

    #@29
    :catch_29
    move-exception p1

    #@2a
    .line 274
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    #@2d
    goto :goto_32

    #@2e
    :catch_2e
    move-exception p1

    #@2f
    .line 272
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@32
    :cond_32
    :goto_32
    const/4 p1, 0x0

    #@33
    return-object p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    #@0
    .line 220
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@3
    move-result-object p1

    #@4
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    #@0
    return-void
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    #@0
    .line 155
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_15

    #@4
    .line 156
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@7
    .line 157
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->invalidate(Landroid/graphics/Rect;)V

    #@e
    const/4 v0, 0x0

    #@f
    .line 158
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    #@12
    .line 159
    invoke-direct {p0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->disposeIfEmpty()V

    #@15
    :cond_15
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .registers 2

    #@0
    .line 198
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    #@3
    .line 199
    invoke-direct {p0}, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->disposeIfEmpty()V

    #@6
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    #@0
    .line 165
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_13

    #@6
    iget-object v0, p0, Lcom/google/android/material/internal/ViewOverlayApi14$OverlayViewGroup;->drawables:Ljava/util/ArrayList;

    #@8
    if-eqz v0, :cond_11

    #@a
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_11

    #@10
    goto :goto_13

    #@11
    :cond_11
    const/4 p1, 0x0

    #@12
    goto :goto_14

    #@13
    :cond_13
    :goto_13
    const/4 p1, 0x1

    #@14
    :goto_14
    return p1
.end method
