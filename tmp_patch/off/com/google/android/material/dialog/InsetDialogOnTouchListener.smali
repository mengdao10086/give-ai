.class public Lcom/google/android/material/dialog/InsetDialogOnTouchListener;
.super Ljava/lang/Object;
.source "InsetDialogOnTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final dialog:Landroid/app/Dialog;

.field private final leftInset:I

.field private final prePieSlop:I

.field private final topInset:I


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V
    .registers 4

    #@0
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;->dialog:Landroid/app/Dialog;

    #@5
    .line 47
    iget v0, p2, Landroid/graphics/Rect;->left:I

    #@7
    iput v0, p0, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;->leftInset:I

    #@9
    .line 48
    iget p2, p2, Landroid/graphics/Rect;->top:I

    #@b
    iput p2, p0, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;->topInset:I

    #@d
    .line 49
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    #@10
    move-result-object p1

    #@11
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    #@14
    move-result-object p1

    #@15
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    #@18
    move-result p1

    #@19
    iput p1, p0, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;->prePieSlop:I

    #@1b
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    #@0
    const v0, 0x1020002

    #@3
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    .line 56
    iget v1, p0, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;->leftInset:I

    #@9
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    #@c
    move-result v2

    #@d
    add-int/2addr v1, v2

    #@e
    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    #@11
    move-result v2

    #@12
    add-int/2addr v2, v1

    #@13
    .line 58
    iget v3, p0, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;->topInset:I

    #@15
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    #@18
    move-result v4

    #@19
    add-int/2addr v3, v4

    #@1a
    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    #@1d
    move-result v0

    #@1e
    add-int/2addr v0, v3

    #@1f
    .line 61
    new-instance v4, Landroid/graphics/RectF;

    #@21
    int-to-float v1, v1

    #@22
    int-to-float v3, v3

    #@23
    int-to-float v2, v2

    #@24
    int-to-float v0, v0

    #@25
    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    #@28
    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    #@2b
    move-result v0

    #@2c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    #@2f
    move-result v1

    #@30
    invoke-virtual {v4, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    #@33
    move-result v0

    #@34
    const/4 v1, 0x0

    #@35
    if-eqz v0, :cond_38

    #@37
    return v1

    #@38
    .line 65
    :cond_38
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    #@3b
    move-result-object v0

    #@3c
    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@3f
    move-result p2

    #@40
    const/4 v2, 0x1

    #@41
    if-ne p2, v2, :cond_47

    #@43
    const/4 p2, 0x4

    #@44
    .line 67
    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    #@47
    .line 71
    :cond_47
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    #@49
    const/16 v3, 0x1c

    #@4b
    if-ge p2, v3, :cond_5b

    #@4d
    .line 72
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    #@50
    .line 73
    iget p2, p0, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;->prePieSlop:I

    #@52
    neg-int v1, p2

    #@53
    sub-int/2addr v1, v2

    #@54
    int-to-float v1, v1

    #@55
    neg-int p2, p2

    #@56
    sub-int/2addr p2, v2

    #@57
    int-to-float p2, p2

    #@58
    invoke-virtual {v0, v1, p2}, Landroid/view/MotionEvent;->setLocation(FF)V

    #@5b
    .line 75
    :cond_5b
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    #@5e
    .line 76
    iget-object p1, p0, Lcom/google/android/material/dialog/InsetDialogOnTouchListener;->dialog:Landroid/app/Dialog;

    #@60
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    #@63
    move-result p1

    #@64
    return p1
.end method
