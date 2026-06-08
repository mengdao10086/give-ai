.class Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;
.super Ljava/lang/Object;
.source "ClickUtils.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ClickUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnUtilsTouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/blankj/utilcode/util/ClickUtils$1;)V
    .registers 2

    #@0
    .line 524
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;
    .registers 1

    #@0
    .line 527
    # getter for: Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener$LazyHolder;->INSTANCE:Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;
    invoke-static {}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener$LazyHolder;->access$100()Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private processAlpha(Landroid/view/View;Z)V
    .registers 4

    #@0
    if-eqz p2, :cond_4

    #@2
    const/4 p2, -0x2

    #@3
    goto :goto_5

    #@4
    :cond_4
    const/4 p2, -0x3

    #@5
    .line 558
    :goto_5
    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@8
    move-result-object p2

    #@9
    .line 559
    instance-of v0, p2, Ljava/lang/Float;

    #@b
    if-nez v0, :cond_e

    #@d
    return-void

    #@e
    .line 560
    :cond_e
    check-cast p2, Ljava/lang/Float;

    #@10
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    #@13
    move-result p2

    #@14
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    #@17
    return-void
.end method

.method private processScale(Landroid/view/View;Z)V
    .registers 5

    #@0
    const/4 v0, -0x1

    #@1
    .line 547
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 548
    instance-of v1, v0, Ljava/lang/Float;

    #@7
    if-nez v1, :cond_a

    #@9
    return-void

    #@a
    :cond_a
    const/high16 v1, 0x3f800000    # 1.0f

    #@c
    if-eqz p2, :cond_15

    #@e
    .line 549
    check-cast v0, Ljava/lang/Float;

    #@10
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@13
    move-result p2

    #@14
    add-float/2addr v1, p2

    #@15
    .line 550
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    #@18
    move-result-object p1

    #@19
    .line 551
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    #@1c
    move-result-object p1

    #@1d
    .line 552
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    #@20
    move-result-object p1

    #@21
    const-wide/16 v0, 0xc8

    #@23
    .line 553
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    #@26
    move-result-object p1

    #@27
    .line 554
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    #@2a
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    #@0
    .line 534
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    #@3
    move-result p2

    #@4
    const/4 v0, 0x0

    #@5
    const/4 v1, 0x1

    #@6
    if-nez p2, :cond_f

    #@8
    .line 536
    invoke-direct {p0, p1, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->processScale(Landroid/view/View;Z)V

    #@b
    .line 537
    invoke-direct {p0, p1, v1}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->processAlpha(Landroid/view/View;Z)V

    #@e
    goto :goto_1a

    #@f
    :cond_f
    if-eq p2, v1, :cond_14

    #@11
    const/4 v1, 0x3

    #@12
    if-ne p2, v1, :cond_1a

    #@14
    .line 540
    :cond_14
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->processScale(Landroid/view/View;Z)V

    #@17
    .line 541
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/ClickUtils$OnUtilsTouchListener;->processAlpha(Landroid/view/View;Z)V

    #@1a
    :cond_1a
    :goto_1a
    return v0
.end method
