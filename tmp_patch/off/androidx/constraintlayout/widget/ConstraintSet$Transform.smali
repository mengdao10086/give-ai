.class public Landroidx/constraintlayout/widget/ConstraintSet$Transform;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transform"
.end annotation


# static fields
.field private static final ELEVATION:I = 0xb

.field private static final ROTATION:I = 0x1

.field private static final ROTATION_X:I = 0x2

.field private static final ROTATION_Y:I = 0x3

.field private static final SCALE_X:I = 0x4

.field private static final SCALE_Y:I = 0x5

.field private static final TRANSFORM_PIVOT_TARGET:I = 0xc

.field private static final TRANSFORM_PIVOT_X:I = 0x6

.field private static final TRANSFORM_PIVOT_Y:I = 0x7

.field private static final TRANSLATION_X:I = 0x8

.field private static final TRANSLATION_Y:I = 0x9

.field private static final TRANSLATION_Z:I = 0xa

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field public applyElevation:Z

.field public elevation:F

.field public mApply:Z

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public transformPivotTarget:I

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 1571
    new-instance v0, Landroid/util/SparseIntArray;

    #@2
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@7
    .line 1587
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_rotation:I

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@d
    .line 1588
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_rotationX:I

    #@11
    const/4 v2, 0x2

    #@12
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@15
    .line 1589
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@17
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_rotationY:I

    #@19
    const/4 v2, 0x3

    #@1a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@1d
    .line 1590
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@1f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_scaleX:I

    #@21
    const/4 v2, 0x4

    #@22
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@25
    .line 1591
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@27
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_scaleY:I

    #@29
    const/4 v2, 0x5

    #@2a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@2d
    .line 1592
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@2f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_transformPivotX:I

    #@31
    const/4 v2, 0x6

    #@32
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@35
    .line 1593
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@37
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_transformPivotY:I

    #@39
    const/4 v2, 0x7

    #@3a
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@3d
    .line 1594
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@3f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_translationX:I

    #@41
    const/16 v2, 0x8

    #@43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@46
    .line 1595
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@48
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_translationY:I

    #@4a
    const/16 v2, 0x9

    #@4c
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@4f
    .line 1596
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@51
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_translationZ:I

    #@53
    const/16 v2, 0xa

    #@55
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@58
    .line 1597
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@5a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_android_elevation:I

    #@5c
    const/16 v2, 0xb

    #@5e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@61
    .line 1598
    sget-object v0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@63
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->Transform_transformPivotTarget:I

    #@65
    const/16 v2, 0xc

    #@67
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    #@6a
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    #@0
    .line 1538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 1539
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    #@6
    const/4 v1, 0x0

    #@7
    .line 1540
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@9
    .line 1541
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@b
    .line 1542
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@d
    const/high16 v2, 0x3f800000    # 1.0f

    #@f
    .line 1543
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@11
    .line 1544
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@13
    const/high16 v2, 0x7fc00000    # Float.NaN

    #@15
    .line 1545
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@17
    .line 1546
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@19
    const/4 v2, -0x1

    #@1a
    .line 1547
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@1c
    .line 1548
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@1e
    .line 1549
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@20
    .line 1550
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@22
    .line 1551
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@24
    .line 1552
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@26
    return-void
.end method


# virtual methods
.method public copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$Transform;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    #@0
    .line 1555
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    #@2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    #@4
    .line 1556
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@6
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@8
    .line 1557
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@a
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@c
    .line 1558
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@e
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@10
    .line 1559
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@12
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@14
    .line 1560
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@16
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@18
    .line 1561
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@1a
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@1c
    .line 1562
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@1e
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@20
    .line 1563
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@22
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@24
    .line 1564
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@26
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@28
    .line 1565
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@2a
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@2c
    .line 1566
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@2e
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@30
    .line 1567
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@32
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@34
    .line 1568
    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@36
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@38
    return-void
.end method

.method fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    #@0
    .line 1603
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->Transform:[I

    #@2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object p1

    #@6
    const/4 p2, 0x1

    #@7
    .line 1604
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mApply:Z

    #@9
    .line 1605
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x0

    #@e
    :goto_e
    if-ge v1, v0, :cond_90

    #@10
    .line 1607
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@13
    move-result v2

    #@14
    .line 1609
    sget-object v3, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->mapToConstant:Landroid/util/SparseIntArray;

    #@16
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    #@19
    move-result v3

    #@1a
    packed-switch v3, :pswitch_data_94

    #@1d
    goto/16 :goto_8c

    #@1f
    .line 1632
    :pswitch_1f
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@21
    # invokes: Landroidx/constraintlayout/widget/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I
    invoke-static {p1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->access$100(Landroid/content/res/TypedArray;II)I

    #@24
    move-result v2

    #@25
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotTarget:I

    #@27
    goto :goto_8c

    #@28
    .line 1647
    :pswitch_28
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->applyElevation:Z

    #@2a
    .line 1648
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@2c
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@2f
    move-result v2

    #@30
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->elevation:F

    #@32
    goto :goto_8c

    #@33
    .line 1642
    :pswitch_33
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@35
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@38
    move-result v2

    #@39
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationZ:F

    #@3b
    goto :goto_8c

    #@3c
    .line 1638
    :pswitch_3c
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@3e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@41
    move-result v2

    #@42
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationY:F

    #@44
    goto :goto_8c

    #@45
    .line 1635
    :pswitch_45
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@47
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@4a
    move-result v2

    #@4b
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->translationX:F

    #@4d
    goto :goto_8c

    #@4e
    .line 1629
    :pswitch_4e
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@50
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@53
    move-result v2

    #@54
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotY:F

    #@56
    goto :goto_8c

    #@57
    .line 1626
    :pswitch_57
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@59
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@5c
    move-result v2

    #@5d
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->transformPivotX:F

    #@5f
    goto :goto_8c

    #@60
    .line 1623
    :pswitch_60
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@62
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@65
    move-result v2

    #@66
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleY:F

    #@68
    goto :goto_8c

    #@69
    .line 1620
    :pswitch_69
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@6b
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@6e
    move-result v2

    #@6f
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->scaleX:F

    #@71
    goto :goto_8c

    #@72
    .line 1617
    :pswitch_72
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@74
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@77
    move-result v2

    #@78
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationY:F

    #@7a
    goto :goto_8c

    #@7b
    .line 1614
    :pswitch_7b
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@7d
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@80
    move-result v2

    #@81
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotationX:F

    #@83
    goto :goto_8c

    #@84
    .line 1611
    :pswitch_84
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@86
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@89
    move-result v2

    #@8a
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$Transform;->rotation:F

    #@8c
    :goto_8c
    add-int/lit8 v1, v1, 0x1

    #@8e
    goto/16 :goto_e

    #@90
    .line 1653
    :cond_90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@93
    return-void

    #@94
    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_84
        :pswitch_7b
        :pswitch_72
        :pswitch_69
        :pswitch_60
        :pswitch_57
        :pswitch_4e
        :pswitch_45
        :pswitch_3c
        :pswitch_33
        :pswitch_28
        :pswitch_1f
    .end packed-switch
.end method
