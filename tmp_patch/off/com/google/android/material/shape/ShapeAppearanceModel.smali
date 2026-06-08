.class public Lcom/google/android/material/shape/ShapeAppearanceModel;
.super Ljava/lang/Object;
.source "ShapeAppearanceModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;,
        Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    }
.end annotation


# static fields
.field public static final PILL:Lcom/google/android/material/shape/CornerSize;


# instance fields
.field bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

.field leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field topEdge:Lcom/google/android/material/shape/EdgeTreatment;

.field topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

.field topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

.field topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

.field topRightCornerSize:Lcom/google/android/material/shape/CornerSize;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 593
    new-instance v0, Lcom/google/android/material/shape/RelativeCornerSize;

    #@2
    const/high16 v1, 0x3f000000    # 0.5f

    #@4
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    #@7
    sput-object v0, Lcom/google/android/material/shape/ShapeAppearanceModel;->PILL:Lcom/google/android/material/shape/CornerSize;

    #@9
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    #@0
    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 627
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@9
    .line 628
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@f
    .line 629
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@15
    .line 630
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultCornerTreatment()Lcom/google/android/material/shape/CornerTreatment;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@1b
    .line 632
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    #@1d
    const/4 v1, 0x0

    #@1e
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    #@21
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@23
    .line 633
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    #@25
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    #@28
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@2a
    .line 634
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    #@2c
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    #@2f
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@31
    .line 635
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    #@33
    invoke-direct {v0, v1}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    #@36
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@38
    .line 637
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@3e
    .line 638
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    #@41
    move-result-object v0

    #@42
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@44
    .line 639
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    #@47
    move-result-object v0

    #@48
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@4a
    .line 640
    invoke-static {}, Lcom/google/android/material/shape/MaterialShapeUtils;->createDefaultEdgeTreatment()Lcom/google/android/material/shape/EdgeTreatment;

    #@4d
    move-result-object v0

    #@4e
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@50
    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V
    .registers 3

    #@0
    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 609
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@9
    .line 610
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@f
    .line 611
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$300(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@15
    .line 612
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$400(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerTreatment;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@1b
    .line 614
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$500(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@21
    .line 615
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$600(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@27
    .line 616
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$700(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    #@2a
    move-result-object v0

    #@2b
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@2d
    .line 617
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$800(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/CornerSize;

    #@30
    move-result-object v0

    #@31
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@33
    .line 619
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$900(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    #@36
    move-result-object v0

    #@37
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@39
    .line 620
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1000(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    #@3c
    move-result-object v0

    #@3d
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@3f
    .line 621
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1100(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    #@42
    move-result-object v0

    #@43
    iput-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@45
    .line 622
    # getter for: Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;
    invoke-static {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->access$1200(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)Lcom/google/android/material/shape/EdgeTreatment;

    #@48
    move-result-object p1

    #@49
    iput-object p1, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@4b
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;Lcom/google/android/material/shape/ShapeAppearanceModel$1;)V
    .registers 3

    #@0
    .line 42
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;)V

    #@3
    return-void
.end method

.method public static builder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 1

    #@0
    .line 465
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    #@5
    return-object v0
.end method

.method public static builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 510
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method private static builder(Landroid/content/Context;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 5

    #@0
    .line 519
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    #@2
    int-to-float p3, p3

    #@3
    invoke-direct {v0, p3}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    #@6
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method private static builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 10

    #@0
    .line 533
    new-instance v0, Landroid/view/ContextThemeWrapper;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@5
    if-eqz p2, :cond_d

    #@7
    .line 535
    new-instance p0, Landroid/view/ContextThemeWrapper;

    #@9
    invoke-direct {p0, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    #@c
    move-object v0, p0

    #@d
    .line 537
    :cond_d
    sget-object p0, Lcom/google/android/material/R$styleable;->ShapeAppearance:[I

    #@f
    invoke-virtual {v0, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    #@12
    move-result-object p0

    #@13
    .line 540
    :try_start_13
    sget p1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamily:I

    #@15
    const/4 p2, 0x0

    #@16
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@19
    move-result p1

    #@1a
    .line 541
    sget p2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopLeft:I

    #@1c
    .line 542
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1f
    move-result p2

    #@20
    .line 543
    sget v0, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyTopRight:I

    #@22
    .line 544
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@25
    move-result v0

    #@26
    .line 545
    sget v1, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomRight:I

    #@28
    .line 546
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@2b
    move-result v1

    #@2c
    .line 547
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerFamilyBottomLeft:I

    #@2e
    .line 548
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    #@31
    move-result p1

    #@32
    .line 550
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSize:I

    #@34
    .line 551
    invoke-static {p0, v2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@37
    move-result-object p3

    #@38
    .line 553
    sget v2, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopLeft:I

    #@3a
    .line 554
    invoke-static {p0, v2, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@3d
    move-result-object v2

    #@3e
    .line 555
    sget v3, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeTopRight:I

    #@40
    .line 556
    invoke-static {p0, v3, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@43
    move-result-object v3

    #@44
    .line 557
    sget v4, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomRight:I

    #@46
    .line 558
    invoke-static {p0, v4, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@49
    move-result-object v4

    #@4a
    .line 559
    sget v5, Lcom/google/android/material/R$styleable;->ShapeAppearance_cornerSizeBottomLeft:I

    #@4c
    .line 560
    invoke-static {p0, v5, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@4f
    move-result-object p3

    #@50
    .line 562
    new-instance v5, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@52
    invoke-direct {v5}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    #@55
    .line 563
    invoke-virtual {v5, p2, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@58
    move-result-object p2

    #@59
    .line 564
    invoke-virtual {p2, v0, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@5c
    move-result-object p2

    #@5d
    .line 565
    invoke-virtual {p2, v1, v4}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@60
    move-result-object p2

    #@61
    .line 566
    invoke-virtual {p2, p1, p3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCorner(ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@64
    move-result-object p1
    :try_end_65
    .catchall {:try_start_13 .. :try_end_65} :catchall_69

    #@65
    .line 568
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@68
    return-object p1

    #@69
    :catchall_69
    move-exception p1

    #@6a
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    #@6d
    .line 569
    throw p1
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 474
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@4
    move-result-object p0

    #@5
    return-object p0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 6

    #@0
    .line 484
    new-instance v0, Lcom/google/android/material/shape/AbsoluteCornerSize;

    #@2
    int-to-float p4, p4

    #@3
    invoke-direct {v0, p4}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    #@6
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@9
    move-result-object p0

    #@a
    return-object p0
.end method

.method public static builder(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 6

    #@0
    .line 495
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialShape:[I

    #@2
    .line 496
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    .line 498
    sget p2, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearance:I

    #@8
    const/4 p3, 0x0

    #@9
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@c
    move-result p2

    #@d
    .line 499
    sget v0, Lcom/google/android/material/R$styleable;->MaterialShape_shapeAppearanceOverlay:I

    #@f
    .line 500
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@12
    move-result p3

    #@13
    .line 501
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@16
    .line 502
    invoke-static {p0, p2, p3, p4}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@19
    move-result-object p0

    #@1a
    return-object p0
.end method

.method private static getCornerSize(Landroid/content/res/TypedArray;ILcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .registers 5

    #@0
    .line 575
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@3
    move-result-object p1

    #@4
    if-nez p1, :cond_7

    #@6
    return-object p2

    #@7
    .line 580
    :cond_7
    iget v0, p1, Landroid/util/TypedValue;->type:I

    #@9
    const/4 v1, 0x5

    #@a
    if-ne v0, v1, :cond_21

    #@c
    .line 583
    new-instance p2, Lcom/google/android/material/shape/AbsoluteCornerSize;

    #@e
    iget p1, p1, Landroid/util/TypedValue;->data:I

    #@10
    .line 584
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    #@13
    move-result-object p0

    #@14
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@17
    move-result-object p0

    #@18
    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    #@1b
    move-result p0

    #@1c
    int-to-float p0, p0

    #@1d
    invoke-direct {p2, p0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    #@20
    return-object p2

    #@21
    .line 585
    :cond_21
    iget p0, p1, Landroid/util/TypedValue;->type:I

    #@23
    const/4 v0, 0x6

    #@24
    if-ne p0, v0, :cond_32

    #@26
    .line 586
    new-instance p0, Lcom/google/android/material/shape/RelativeCornerSize;

    #@28
    const/high16 p2, 0x3f800000    # 1.0f

    #@2a
    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    #@2d
    move-result p1

    #@2e
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/RelativeCornerSize;-><init>(F)V

    #@31
    return-object p0

    #@32
    :cond_32
    return-object p2
.end method


# virtual methods
.method public getBottomEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2

    #@0
    .line 760
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@2
    return-object v0
.end method

.method public getBottomLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .registers 2

    #@0
    .line 680
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@2
    return-object v0
.end method

.method public getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;
    .registers 2

    #@0
    .line 720
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@2
    return-object v0
.end method

.method public getBottomRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .registers 2

    #@0
    .line 670
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@2
    return-object v0
.end method

.method public getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;
    .registers 2

    #@0
    .line 710
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@2
    return-object v0
.end method

.method public getLeftEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2

    #@0
    .line 730
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@2
    return-object v0
.end method

.method public getRightEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2

    #@0
    .line 750
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@2
    return-object v0
.end method

.method public getTopEdge()Lcom/google/android/material/shape/EdgeTreatment;
    .registers 2

    #@0
    .line 740
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@2
    return-object v0
.end method

.method public getTopLeftCorner()Lcom/google/android/material/shape/CornerTreatment;
    .registers 2

    #@0
    .line 650
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@2
    return-object v0
.end method

.method public getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;
    .registers 2

    #@0
    .line 690
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@2
    return-object v0
.end method

.method public getTopRightCorner()Lcom/google/android/material/shape/CornerTreatment;
    .registers 2

    #@0
    .line 660
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@2
    return-object v0
.end method

.method public getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;
    .registers 2

    #@0
    .line 700
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@2
    return-object v0
.end method

.method public isRoundRect(Landroid/graphics/RectF;)Z
    .registers 7

    #@0
    .line 819
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->leftEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@2
    .line 820
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    const-class v1, Lcom/google/android/material/shape/EdgeTreatment;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    const/4 v1, 0x1

    #@d
    const/4 v2, 0x0

    #@e
    if-eqz v0, :cond_3c

    #@10
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->rightEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@12
    .line 821
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@15
    move-result-object v0

    #@16
    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    #@18
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_3c

    #@1e
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@20
    .line 822
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v0

    #@24
    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    #@26
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v0

    #@2a
    if-eqz v0, :cond_3c

    #@2c
    iget-object v0, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomEdge:Lcom/google/android/material/shape/EdgeTreatment;

    #@2e
    .line 823
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@31
    move-result-object v0

    #@32
    const-class v3, Lcom/google/android/material/shape/EdgeTreatment;

    #@34
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_3c

    #@3a
    move v0, v1

    #@3b
    goto :goto_3d

    #@3c
    :cond_3c
    move v0, v2

    #@3d
    .line 825
    :goto_3d
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@3f
    invoke-interface {v3, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@42
    move-result v3

    #@43
    .line 827
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@45
    .line 828
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@48
    move-result v4

    #@49
    cmpl-float v4, v4, v3

    #@4b
    if-nez v4, :cond_63

    #@4d
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@4f
    .line 829
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@52
    move-result v4

    #@53
    cmpl-float v4, v4, v3

    #@55
    if-nez v4, :cond_63

    #@57
    iget-object v4, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    #@59
    .line 830
    invoke-interface {v4, p1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    #@5c
    move-result p1

    #@5d
    cmpl-float p1, p1, v3

    #@5f
    if-nez p1, :cond_63

    #@61
    move p1, v1

    #@62
    goto :goto_64

    #@63
    :cond_63
    move p1, v2

    #@64
    .line 832
    :goto_64
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@66
    instance-of v3, v3, Lcom/google/android/material/shape/RoundedCornerTreatment;

    #@68
    if-eqz v3, :cond_7e

    #@6a
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->topLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@6c
    instance-of v3, v3, Lcom/google/android/material/shape/RoundedCornerTreatment;

    #@6e
    if-eqz v3, :cond_7e

    #@70
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomRightCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@72
    instance-of v3, v3, Lcom/google/android/material/shape/RoundedCornerTreatment;

    #@74
    if-eqz v3, :cond_7e

    #@76
    iget-object v3, p0, Lcom/google/android/material/shape/ShapeAppearanceModel;->bottomLeftCorner:Lcom/google/android/material/shape/CornerTreatment;

    #@78
    instance-of v3, v3, Lcom/google/android/material/shape/RoundedCornerTreatment;

    #@7a
    if-eqz v3, :cond_7e

    #@7c
    move v3, v1

    #@7d
    goto :goto_7f

    #@7e
    :cond_7e
    move v3, v2

    #@7f
    :goto_7f
    if-eqz v0, :cond_86

    #@81
    if-eqz p1, :cond_86

    #@83
    if-eqz v3, :cond_86

    #@85
    goto :goto_87

    #@86
    :cond_86
    move v1, v2

    #@87
    :goto_87
    return v1
.end method

.method public toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .registers 2

    #@0
    .line 766
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    #@5
    return-object v0
.end method

.method public withCornerSize(F)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3

    #@0
    .line 775
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(F)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public withCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 3

    #@0
    .line 780
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setAllCornerSizes(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@b
    move-result-object p1

    #@c
    return-object p1
.end method

.method public withTransformedCornerSizes(Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;)Lcom/google/android/material/shape/ShapeAppearanceModel;
    .registers 4

    #@0
    .line 803
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@3
    move-result-object v0

    #@4
    .line 804
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@7
    move-result-object v1

    #@8
    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@f
    move-result-object v0

    #@10
    .line 805
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@13
    move-result-object v1

    #@14
    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@1b
    move-result-object v0

    #@1c
    .line 806
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@1f
    move-result-object v1

    #@20
    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomLeftCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@27
    move-result-object v0

    #@28
    .line 807
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getBottomRightCornerSize()Lcom/google/android/material/shape/CornerSize;

    #@2b
    move-result-object v1

    #@2c
    invoke-interface {p1, v1}, Lcom/google/android/material/shape/ShapeAppearanceModel$CornerSizeUnaryOperator;->apply(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;

    #@2f
    move-result-object p1

    #@30
    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setBottomRightCornerSize(Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    #@33
    move-result-object p1

    #@34
    .line 808
    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    #@37
    move-result-object p1

    #@38
    return-object p1
.end method
