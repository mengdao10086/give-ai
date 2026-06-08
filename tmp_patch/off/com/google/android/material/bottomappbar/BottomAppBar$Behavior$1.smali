.class Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .registers 2

    #@0
    .line 1318
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    #@0
    .line 1330
    iget-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@2
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->viewRef:Ljava/lang/ref/WeakReference;
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2500(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Ljava/lang/ref/WeakReference;

    #@5
    move-result-object p2

    #@6
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@9
    move-result-object p2

    #@a
    check-cast p2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@c
    if-eqz p2, :cond_be

    #@e
    .line 1333
    instance-of p3, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@10
    if-nez p3, :cond_18

    #@12
    instance-of p4, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    #@14
    if-nez p4, :cond_18

    #@16
    goto/16 :goto_be

    #@18
    .line 1340
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    #@1b
    move-result p4

    #@1c
    if-eqz p3, :cond_51

    #@1e
    .line 1342
    move-object p3, p1

    #@1f
    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@21
    .line 1344
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@23
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;
    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    #@26
    move-result-object p4

    #@27
    invoke-virtual {p3, p4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredContentRect(Landroid/graphics/Rect;)V

    #@2a
    .line 1346
    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@2c
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;
    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    #@2f
    move-result-object p4

    #@30
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    #@33
    move-result p4

    #@34
    .line 1349
    invoke-virtual {p2, p4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabDiameter(I)Z

    #@37
    .line 1353
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@3a
    move-result-object p3

    #@3b
    .line 1354
    invoke-virtual {p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@3e
    move-result-object p3

    #@3f
    new-instance p5, Landroid/graphics/RectF;

    #@41
    iget-object p6, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@43
    .line 1355
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->fabContentRect:Landroid/graphics/Rect;
    invoke-static {p6}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    #@46
    move-result-object p6

    #@47
    invoke-direct {p5, p6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    #@4a
    invoke-interface {p3, p5}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@4d
    move-result p3

    #@4e
    .line 1357
    invoke-virtual {p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabCornerSize(F)V

    #@51
    .line 1361
    :cond_51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@54
    move-result-object p3

    #@55
    check-cast p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    #@57
    .line 1365
    iget-object p5, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    #@59
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->originalBottomMargin:I
    invoke-static {p5}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2700(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)I

    #@5c
    move-result p5

    #@5d
    if-nez p5, :cond_bd

    #@5f
    .line 1368
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@62
    move-result p5

    #@63
    sub-int/2addr p5, p4

    #@64
    div-int/lit8 p5, p5, 0x2

    #@66
    .line 1370
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$400(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    #@69
    move-result p4

    #@6a
    const/4 p6, 0x1

    #@6b
    if-ne p4, p6, :cond_80

    #@6d
    .line 1373
    invoke-virtual {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    #@70
    move-result-object p4

    #@71
    sget p6, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fab_bottom_margin:I

    #@73
    .line 1374
    invoke-virtual {p4, p6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    #@76
    move-result p4

    #@77
    sub-int/2addr p4, p5

    #@78
    .line 1377
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->getBottomInset()I
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2800(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    #@7b
    move-result p5

    #@7c
    add-int/2addr p5, p4

    #@7d
    iput p5, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    #@7f
    goto :goto_98

    #@80
    .line 1378
    :cond_80
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnchorMode:I
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$400(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    #@83
    move-result p4

    #@84
    if-nez p4, :cond_98

    #@86
    .line 1383
    invoke-virtual {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredHeight()I

    #@89
    move-result p4

    #@8a
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->getBottomInset()I
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2800(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    #@8d
    move-result p5

    #@8e
    add-int/2addr p4, p5

    #@8f
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    #@92
    move-result p5

    #@93
    sub-int/2addr p4, p5

    #@94
    div-int/lit8 p4, p4, 0x2

    #@96
    iput p4, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    #@98
    .line 1386
    :cond_98
    :goto_98
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->getLeftInset()I
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2900(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    #@9b
    move-result p4

    #@9c
    iput p4, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    #@9e
    .line 1387
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->getRightInset()I
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3000(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    #@a1
    move-result p4

    #@a2
    iput p4, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    #@a4
    .line 1388
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@a7
    move-result p1

    #@a8
    if-eqz p1, :cond_b4

    #@aa
    .line 1390
    iget p1, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    #@ac
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3100(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    #@af
    move-result p2

    #@b0
    add-int/2addr p1, p2

    #@b1
    iput p1, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    #@b3
    goto :goto_bd

    #@b4
    .line 1392
    :cond_b4
    iget p1, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    #@b6
    # getter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->fabOffsetEndMode:I
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3100(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    #@b9
    move-result p2

    #@ba
    add-int/2addr p1, p2

    #@bb
    iput p1, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    #@bd
    :cond_bd
    :goto_bd
    return-void

    #@be
    .line 1336
    :cond_be
    :goto_be
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    #@c1
    return-void
.end method
