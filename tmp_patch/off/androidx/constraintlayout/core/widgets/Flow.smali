.class public Landroidx/constraintlayout/core/widgets/Flow;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_CHAIN_NEW:I = 0x3

.field public static final WRAP_NONE:I


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .registers 4

    #@0
    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

    #@3
    const/4 v0, -0x1

    #@4
    .line 48
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    #@6
    .line 49
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    #@8
    .line 50
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    #@a
    .line 51
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    #@c
    .line 52
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    #@e
    .line 53
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    #@10
    const/high16 v1, 0x3f000000    # 0.5f

    #@12
    .line 55
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    #@14
    .line 56
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    #@16
    .line 57
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    #@18
    .line 58
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    #@1a
    .line 59
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    #@1c
    .line 60
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    #@1e
    const/4 v1, 0x0

    #@1f
    .line 62
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@21
    .line 63
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@23
    const/4 v2, 0x2

    #@24
    .line 65
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    #@26
    .line 66
    iput v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    #@28
    .line 67
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    #@2a
    .line 69
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    #@2c
    .line 71
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    #@2e
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    #@30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@33
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@35
    const/4 v0, 0x0

    #@36
    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@38
    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3a
    .line 79
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    #@3c
    .line 81
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    #@3e
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@2
    return p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@2
    return p0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    #@2
    return p0
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    #@2
    return p0
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    #@2
    return p0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    #@2
    return p0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    #@2
    return p0
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    #@2
    return p0
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    #@2
    return p0
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    #@2
    return p0
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    #@2
    return p0
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    #@2
    return p0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 3

    #@0
    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/core/widgets/Flow;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 3

    #@0
    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    #@2
    return p0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/core/widgets/Flow;)[Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .registers 1

    #@0
    .line 32
    iget-object p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@2
    return-object p0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    #@2
    return p0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    #@2
    return p0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/core/widgets/Flow;)I
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    #@2
    return p0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/core/widgets/Flow;)F
    .registers 1

    #@0
    .line 32
    iget p0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    #@2
    return p0
.end method

.method private createAlignedConstraints(Z)V
    .registers 13

    #@0
    .line 1293
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    #@2
    if-eqz v0, :cond_121

    #@4
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6
    if-eqz v0, :cond_121

    #@8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@a
    if-nez v0, :cond_e

    #@c
    goto/16 :goto_121

    #@e
    :cond_e
    const/4 v0, 0x0

    #@f
    move v1, v0

    #@10
    .line 1299
    :goto_10
    iget v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    #@12
    if-ge v1, v2, :cond_1e

    #@14
    .line 1300
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@16
    aget-object v2, v2, v1

    #@18
    .line 1301
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAnchors()V

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_10

    #@1e
    .line 1304
    :cond_1e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    #@20
    aget v2, v1, v0

    #@22
    const/4 v3, 0x1

    #@23
    .line 1305
    aget v1, v1, v3

    #@25
    .line 1308
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    #@27
    const/4 v5, 0x0

    #@28
    move v6, v0

    #@29
    :goto_29
    const/16 v7, 0x8

    #@2b
    if-ge v6, v2, :cond_84

    #@2d
    if-eqz p1, :cond_38

    #@2f
    sub-int v4, v2, v6

    #@31
    sub-int/2addr v4, v3

    #@32
    const/high16 v8, 0x3f800000    # 1.0f

    #@34
    .line 1313
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    #@36
    sub-float/2addr v8, v9

    #@37
    goto :goto_3a

    #@38
    :cond_38
    move v8, v4

    #@39
    move v4, v6

    #@3a
    .line 1315
    :goto_3a
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@3c
    aget-object v4, v9, v4

    #@3e
    if-eqz v4, :cond_80

    #@40
    .line 1316
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@43
    move-result v9

    #@44
    if-ne v9, v7, :cond_47

    #@46
    goto :goto_80

    #@47
    :cond_47
    if-nez v6, :cond_5c

    #@49
    .line 1320
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4b
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@4d
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingLeft()I

    #@50
    move-result v10

    #@51
    invoke-virtual {v4, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@54
    .line 1321
    iget v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    #@56
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    #@59
    .line 1322
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    #@5c
    :cond_5c
    add-int/lit8 v7, v2, -0x1

    #@5e
    if-ne v6, v7, :cond_6b

    #@60
    .line 1325
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@62
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@64
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    #@67
    move-result v10

    #@68
    invoke-virtual {v4, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@6b
    :cond_6b
    if-lez v6, :cond_7f

    #@6d
    if-eqz v5, :cond_7f

    #@6f
    .line 1328
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@71
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@73
    iget v10, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@75
    invoke-virtual {v4, v7, v9, v10}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@78
    .line 1329
    iget-object v7, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7a
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@7c
    invoke-virtual {v5, v7, v9, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@7f
    :cond_7f
    move-object v5, v4

    #@80
    :cond_80
    :goto_80
    add-int/lit8 v6, v6, 0x1

    #@82
    move v4, v8

    #@83
    goto :goto_29

    #@84
    :cond_84
    move p1, v0

    #@85
    :goto_85
    if-ge p1, v1, :cond_d2

    #@87
    .line 1334
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@89
    aget-object v4, v4, p1

    #@8b
    if-eqz v4, :cond_cf

    #@8d
    .line 1335
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@90
    move-result v6

    #@91
    if-ne v6, v7, :cond_94

    #@93
    goto :goto_cf

    #@94
    :cond_94
    if-nez p1, :cond_ab

    #@96
    .line 1339
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@98
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@9a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingTop()I

    #@9d
    move-result v9

    #@9e
    invoke-virtual {v4, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@a1
    .line 1340
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    #@a3
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    #@a6
    .line 1341
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    #@a8
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    #@ab
    :cond_ab
    add-int/lit8 v6, v1, -0x1

    #@ad
    if-ne p1, v6, :cond_ba

    #@af
    .line 1344
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b1
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@b3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    #@b6
    move-result v9

    #@b7
    invoke-virtual {v4, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@ba
    :cond_ba
    if-lez p1, :cond_ce

    #@bc
    if-eqz v5, :cond_ce

    #@be
    .line 1347
    iget-object v6, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c0
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c2
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@c4
    invoke-virtual {v4, v6, v8, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@c7
    .line 1348
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@c9
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@cb
    invoke-virtual {v5, v6, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@ce
    :cond_ce
    move-object v5, v4

    #@cf
    :cond_cf
    :goto_cf
    add-int/lit8 p1, p1, 0x1

    #@d1
    goto :goto_85

    #@d2
    :cond_d2
    move p1, v0

    #@d3
    :goto_d3
    if-ge p1, v2, :cond_121

    #@d5
    move v4, v0

    #@d6
    :goto_d6
    if-ge v4, v1, :cond_11e

    #@d8
    mul-int v5, v4, v2

    #@da
    add-int/2addr v5, p1

    #@db
    .line 1356
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    #@dd
    if-ne v6, v3, :cond_e2

    #@df
    mul-int v5, p1, v1

    #@e1
    add-int/2addr v5, v4

    #@e2
    .line 1359
    :cond_e2
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e4
    array-length v8, v6

    #@e5
    if-lt v5, v8, :cond_e8

    #@e7
    goto :goto_11b

    #@e8
    .line 1362
    :cond_e8
    aget-object v5, v6, v5

    #@ea
    if-eqz v5, :cond_11b

    #@ec
    .line 1363
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@ef
    move-result v6

    #@f0
    if-ne v6, v7, :cond_f3

    #@f2
    goto :goto_11b

    #@f3
    .line 1366
    :cond_f3
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@f5
    aget-object v6, v6, p1

    #@f7
    .line 1367
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@f9
    aget-object v8, v8, v4

    #@fb
    if-eq v5, v6, :cond_10b

    #@fd
    .line 1369
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ff
    iget-object v10, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@101
    invoke-virtual {v5, v9, v10, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@104
    .line 1370
    iget-object v9, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@106
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@108
    invoke-virtual {v5, v9, v6, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@10b
    :cond_10b
    if-eq v5, v8, :cond_11b

    #@10d
    .line 1373
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10f
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@111
    invoke-virtual {v5, v6, v9, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@114
    .line 1374
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@116
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@118
    invoke-virtual {v5, v6, v8, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@11b
    :cond_11b
    :goto_11b
    add-int/lit8 v4, v4, 0x1

    #@11d
    goto :goto_d6

    #@11e
    :cond_11e
    add-int/lit8 p1, p1, 0x1

    #@120
    goto :goto_d3

    #@121
    :cond_121
    :goto_121
    return-void
.end method

.method private final getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 207
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@7
    move-result-object v1

    #@8
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a
    if-ne v1, v2, :cond_51

    #@c
    .line 208
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@e
    if-nez v1, :cond_11

    #@10
    return v0

    #@11
    .line 210
    :cond_11
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@13
    const/4 v1, 0x2

    #@14
    const/4 v2, 0x1

    #@15
    if-ne v0, v1, :cond_36

    #@17
    .line 211
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    #@19
    int-to-float p2, p2

    #@1a
    mul-float/2addr v0, p2

    #@1b
    float-to-int p2, v0

    #@1c
    .line 212
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@1f
    move-result v0

    #@20
    if-eq p2, v0, :cond_35

    #@22
    .line 213
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    #@25
    .line 214
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@2c
    move-result v6

    #@2d
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2f
    move-object v3, p0

    #@30
    move-object v4, p1

    #@31
    move v8, p2

    #@32
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/Flow;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    #@35
    :cond_35
    return p2

    #@36
    .line 217
    :cond_36
    iget p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@38
    if-ne p2, v2, :cond_3f

    #@3a
    .line 218
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@3d
    move-result p1

    #@3e
    return p1

    #@3f
    .line 219
    :cond_3f
    iget p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    #@41
    const/4 v0, 0x3

    #@42
    if-ne p2, v0, :cond_51

    #@44
    .line 220
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@47
    move-result p2

    #@48
    int-to-float p2, p2

    #@49
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@4b
    mul-float/2addr p2, p1

    #@4c
    const/high16 p1, 0x3f000000    # 0.5f

    #@4e
    add-float/2addr p2, p1

    #@4f
    float-to-int p1, p2

    #@50
    return p1

    #@51
    .line 223
    :cond_51
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@54
    move-result p1

    #@55
    return p1
.end method

.method private final getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I
    .registers 12

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_4

    #@3
    return v0

    #@4
    .line 184
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@7
    move-result-object v1

    #@8
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a
    if-ne v1, v2, :cond_51

    #@c
    .line 185
    iget v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@e
    if-nez v1, :cond_11

    #@10
    return v0

    #@11
    .line 187
    :cond_11
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@13
    const/4 v1, 0x2

    #@14
    const/4 v2, 0x1

    #@15
    if-ne v0, v1, :cond_36

    #@17
    .line 188
    iget v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    #@19
    int-to-float p2, p2

    #@1a
    mul-float/2addr v0, p2

    #@1b
    float-to-int p2, v0

    #@1c
    .line 189
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@1f
    move-result v0

    #@20
    if-eq p2, v0, :cond_35

    #@22
    .line 190
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMeasureRequested(Z)V

    #@25
    .line 191
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@27
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@2e
    move-result v8

    #@2f
    move-object v3, p0

    #@30
    move-object v4, p1

    #@31
    move v6, p2

    #@32
    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/core/widgets/Flow;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;I)V

    #@35
    :cond_35
    return p2

    #@36
    .line 194
    :cond_36
    iget p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@38
    if-ne p2, v2, :cond_3f

    #@3a
    .line 195
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@3d
    move-result p1

    #@3e
    return p1

    #@3f
    .line 196
    :cond_3f
    iget p2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    #@41
    const/4 v0, 0x3

    #@42
    if-ne p2, v0, :cond_51

    #@44
    .line 197
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@47
    move-result p2

    #@48
    int-to-float p2, p2

    #@49
    iget p1, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    #@4b
    mul-float/2addr p2, p1

    #@4c
    const/high16 p1, 0x3f000000    # 0.5f

    #@4e
    add-float/2addr p2, p1

    #@4f
    float-to-int p1, p2

    #@50
    return p1

    #@51
    .line 200
    :cond_51
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@54
    move-result p1

    #@55
    return p1
.end method

.method private measureAligned([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 16

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p3, :cond_26

    #@3
    .line 1144
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    #@5
    if-gtz v1, :cond_23

    #@7
    move v1, v0

    #@8
    move v2, v1

    #@9
    move v3, v2

    #@a
    :goto_a
    if-ge v2, p2, :cond_23

    #@c
    if-lez v2, :cond_11

    #@e
    .line 1151
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@10
    add-int/2addr v3, v4

    #@11
    .line 1153
    :cond_11
    aget-object v4, p1, v2

    #@13
    if-nez v4, :cond_16

    #@15
    goto :goto_20

    #@16
    .line 1157
    :cond_16
    invoke-direct {p0, v4, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@19
    move-result v4

    #@1a
    add-int/2addr v3, v4

    #@1b
    if-le v3, p4, :cond_1e

    #@1d
    goto :goto_23

    #@1e
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    #@20
    :goto_20
    add-int/lit8 v2, v2, 0x1

    #@22
    goto :goto_a

    #@23
    :cond_23
    :goto_23
    move v2, v1

    #@24
    move v1, v0

    #@25
    goto :goto_47

    #@26
    .line 1165
    :cond_26
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    #@28
    if-gtz v1, :cond_46

    #@2a
    move v1, v0

    #@2b
    move v2, v1

    #@2c
    move v3, v2

    #@2d
    :goto_2d
    if-ge v2, p2, :cond_46

    #@2f
    if-lez v2, :cond_34

    #@31
    .line 1172
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@33
    add-int/2addr v3, v4

    #@34
    .line 1174
    :cond_34
    aget-object v4, p1, v2

    #@36
    if-nez v4, :cond_39

    #@38
    goto :goto_43

    #@39
    .line 1178
    :cond_39
    invoke-direct {p0, v4, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@3c
    move-result v4

    #@3d
    add-int/2addr v3, v4

    #@3e
    if-le v3, p4, :cond_41

    #@40
    goto :goto_46

    #@41
    :cond_41
    add-int/lit8 v1, v1, 0x1

    #@43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_2d

    #@46
    :cond_46
    :goto_46
    move v2, v0

    #@47
    .line 1187
    :goto_47
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    #@49
    if-nez v3, :cond_50

    #@4b
    const/4 v3, 0x2

    #@4c
    new-array v3, v3, [I

    #@4e
    .line 1188
    iput-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    #@50
    :cond_50
    const/4 v3, 0x1

    #@51
    if-nez v1, :cond_55

    #@53
    if-eq p3, v3, :cond_59

    #@55
    :cond_55
    if-nez v2, :cond_5b

    #@57
    if-nez p3, :cond_5b

    #@59
    :cond_59
    move v4, v3

    #@5a
    goto :goto_5c

    #@5b
    :cond_5b
    move v4, v0

    #@5c
    :goto_5c
    if-nez v4, :cond_11d

    #@5e
    if-nez p3, :cond_6a

    #@60
    int-to-float v1, p2

    #@61
    int-to-float v5, v2

    #@62
    div-float/2addr v1, v5

    #@63
    float-to-double v5, v1

    #@64
    .line 1201
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    #@67
    move-result-wide v5

    #@68
    double-to-int v1, v5

    #@69
    goto :goto_73

    #@6a
    :cond_6a
    int-to-float v2, p2

    #@6b
    int-to-float v5, v1

    #@6c
    div-float/2addr v2, v5

    #@6d
    float-to-double v5, v2

    #@6e
    .line 1203
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    #@71
    move-result-wide v5

    #@72
    double-to-int v2, v5

    #@73
    .line 1206
    :goto_73
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@75
    const/4 v6, 0x0

    #@76
    if-eqz v5, :cond_80

    #@78
    array-length v7, v5

    #@79
    if-ge v7, v2, :cond_7c

    #@7b
    goto :goto_80

    #@7c
    .line 1209
    :cond_7c
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@7f
    goto :goto_84

    #@80
    .line 1207
    :cond_80
    :goto_80
    new-array v5, v2, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@82
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@84
    .line 1211
    :goto_84
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@86
    if-eqz v5, :cond_90

    #@88
    array-length v7, v5

    #@89
    if-ge v7, v1, :cond_8c

    #@8b
    goto :goto_90

    #@8c
    .line 1214
    :cond_8c
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@8f
    goto :goto_94

    #@90
    .line 1212
    :cond_90
    :goto_90
    new-array v5, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@92
    iput-object v5, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@94
    :goto_94
    move v5, v0

    #@95
    :goto_95
    if-ge v5, v2, :cond_d9

    #@97
    move v6, v0

    #@98
    :goto_98
    if-ge v6, v1, :cond_d6

    #@9a
    mul-int v7, v6, v2

    #@9c
    add-int/2addr v7, v5

    #@9d
    if-ne p3, v3, :cond_a2

    #@9f
    mul-int v7, v5, v1

    #@a1
    add-int/2addr v7, v6

    #@a2
    .line 1223
    :cond_a2
    array-length v8, p1

    #@a3
    if-lt v7, v8, :cond_a6

    #@a5
    goto :goto_d3

    #@a6
    .line 1226
    :cond_a6
    aget-object v7, p1, v7

    #@a8
    if-nez v7, :cond_ab

    #@aa
    goto :goto_d3

    #@ab
    .line 1230
    :cond_ab
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@ae
    move-result v8

    #@af
    .line 1231
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@b1
    aget-object v9, v9, v5

    #@b3
    if-eqz v9, :cond_bb

    #@b5
    .line 1232
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    #@b8
    move-result v9

    #@b9
    if-ge v9, v8, :cond_bf

    #@bb
    .line 1233
    :cond_bb
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@bd
    aput-object v7, v8, v5

    #@bf
    .line 1235
    :cond_bf
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@c2
    move-result v8

    #@c3
    .line 1236
    iget-object v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@c5
    aget-object v9, v9, v6

    #@c7
    if-eqz v9, :cond_cf

    #@c9
    .line 1237
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    #@cc
    move-result v9

    #@cd
    if-ge v9, v8, :cond_d3

    #@cf
    .line 1238
    :cond_cf
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@d1
    aput-object v7, v8, v6

    #@d3
    :cond_d3
    :goto_d3
    add-int/lit8 v6, v6, 0x1

    #@d5
    goto :goto_98

    #@d6
    :cond_d6
    add-int/lit8 v5, v5, 0x1

    #@d8
    goto :goto_95

    #@d9
    :cond_d9
    move v5, v0

    #@da
    move v6, v5

    #@db
    :goto_db
    if-ge v5, v2, :cond_f0

    #@dd
    .line 1245
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@df
    aget-object v7, v7, v5

    #@e1
    if-eqz v7, :cond_ed

    #@e3
    if-lez v5, :cond_e8

    #@e5
    .line 1248
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@e7
    add-int/2addr v6, v8

    #@e8
    .line 1250
    :cond_e8
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@eb
    move-result v7

    #@ec
    add-int/2addr v6, v7

    #@ed
    :cond_ed
    add-int/lit8 v5, v5, 0x1

    #@ef
    goto :goto_db

    #@f0
    :cond_f0
    move v5, v0

    #@f1
    move v7, v5

    #@f2
    :goto_f2
    if-ge v5, v1, :cond_107

    #@f4
    .line 1255
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@f6
    aget-object v8, v8, v5

    #@f8
    if-eqz v8, :cond_104

    #@fa
    if-lez v5, :cond_ff

    #@fc
    .line 1258
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@fe
    add-int/2addr v7, v9

    #@ff
    .line 1260
    :cond_ff
    invoke-direct {p0, v8, p4}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@102
    move-result v8

    #@103
    add-int/2addr v7, v8

    #@104
    :cond_104
    add-int/lit8 v5, v5, 0x1

    #@106
    goto :goto_f2

    #@107
    .line 1263
    :cond_107
    aput v6, p5, v0

    #@109
    .line 1264
    aput v7, p5, v3

    #@10b
    if-nez p3, :cond_115

    #@10d
    if-le v6, p4, :cond_59

    #@10f
    if-le v2, v3, :cond_59

    #@111
    add-int/lit8 v2, v2, -0x1

    #@113
    goto/16 :goto_5c

    #@115
    :cond_115
    if-le v7, p4, :cond_59

    #@117
    if-le v1, v3, :cond_59

    #@119
    add-int/lit8 v1, v1, -0x1

    #@11b
    goto/16 :goto_5c

    #@11d
    .line 1288
    :cond_11d
    iget-object p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mAlignedDimensions:[I

    #@11f
    aput v2, p1, v0

    #@121
    .line 1289
    aput v1, p1, v3

    #@123
    return-void
.end method

.method private measureChainWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 34

    #@0
    move-object/from16 v8, p0

    #@2
    move/from16 v9, p2

    #@4
    move/from16 v15, p4

    #@6
    if-nez v9, :cond_9

    #@8
    return-void

    #@9
    .line 797
    :cond_9
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@e
    .line 798
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@10
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18
    move-object v0, v10

    #@19
    move-object/from16 v1, p0

    #@1b
    move/from16 v2, p3

    #@1d
    move/from16 v7, p4

    #@1f
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@22
    .line 799
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    const/16 v20, 0x1

    #@29
    const/16 v21, 0x0

    #@2b
    if-nez p3, :cond_92

    #@2d
    move/from16 v0, v21

    #@2f
    move v1, v0

    #@30
    move v11, v1

    #@31
    :goto_31
    if-ge v11, v9, :cond_f7

    #@33
    .line 806
    aget-object v12, p1, v11

    #@35
    .line 807
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@38
    move-result v13

    #@39
    .line 808
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3c
    move-result-object v2

    #@3d
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3f
    if-ne v2, v3, :cond_43

    #@41
    add-int/lit8 v0, v0, 0x1

    #@43
    :cond_43
    move v14, v0

    #@44
    if-eq v1, v15, :cond_4c

    #@46
    .line 811
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@48
    add-int/2addr v0, v1

    #@49
    add-int/2addr v0, v13

    #@4a
    if-le v0, v15, :cond_55

    #@4c
    :cond_4c
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@4f
    move-result-object v0

    #@50
    if-eqz v0, :cond_55

    #@52
    move/from16 v0, v20

    #@54
    goto :goto_57

    #@55
    :cond_55
    move/from16 v0, v21

    #@57
    :goto_57
    if-nez v0, :cond_65

    #@59
    if-lez v11, :cond_65

    #@5b
    .line 812
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    #@5d
    if-lez v2, :cond_65

    #@5f
    rem-int v2, v11, v2

    #@61
    if-nez v2, :cond_65

    #@63
    move/from16 v0, v20

    #@65
    :cond_65
    if-eqz v0, :cond_85

    #@67
    .line 817
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@69
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6b
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6d
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6f
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@71
    move-object v0, v10

    #@72
    move-object/from16 v1, p0

    #@74
    move/from16 v2, p3

    #@76
    move/from16 v7, p4

    #@78
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@7b
    .line 818
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    #@7e
    .line 819
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@80
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@83
    :cond_83
    move v1, v13

    #@84
    goto :goto_8b

    #@85
    :cond_85
    if-lez v11, :cond_83

    #@87
    .line 822
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@89
    add-int/2addr v0, v13

    #@8a
    add-int/2addr v1, v0

    #@8b
    .line 827
    :goto_8b
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@8e
    add-int/lit8 v11, v11, 0x1

    #@90
    move v0, v14

    #@91
    goto :goto_31

    #@92
    :cond_92
    move/from16 v0, v21

    #@94
    move v1, v0

    #@95
    move v11, v1

    #@96
    :goto_96
    if-ge v11, v9, :cond_f7

    #@98
    .line 832
    aget-object v12, p1, v11

    #@9a
    .line 833
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@9d
    move-result v13

    #@9e
    .line 834
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a1
    move-result-object v2

    #@a2
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a4
    if-ne v2, v3, :cond_a8

    #@a6
    add-int/lit8 v0, v0, 0x1

    #@a8
    :cond_a8
    move v14, v0

    #@a9
    if-eq v1, v15, :cond_b1

    #@ab
    .line 837
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@ad
    add-int/2addr v0, v1

    #@ae
    add-int/2addr v0, v13

    #@af
    if-le v0, v15, :cond_ba

    #@b1
    :cond_b1
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@b4
    move-result-object v0

    #@b5
    if-eqz v0, :cond_ba

    #@b7
    move/from16 v0, v20

    #@b9
    goto :goto_bc

    #@ba
    :cond_ba
    move/from16 v0, v21

    #@bc
    :goto_bc
    if-nez v0, :cond_ca

    #@be
    if-lez v11, :cond_ca

    #@c0
    .line 838
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    #@c2
    if-lez v2, :cond_ca

    #@c4
    rem-int v2, v11, v2

    #@c6
    if-nez v2, :cond_ca

    #@c8
    move/from16 v0, v20

    #@ca
    :cond_ca
    if-eqz v0, :cond_ea

    #@cc
    .line 843
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@ce
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d0
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d2
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d4
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d6
    move-object v0, v10

    #@d7
    move-object/from16 v1, p0

    #@d9
    move/from16 v2, p3

    #@db
    move/from16 v7, p4

    #@dd
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@e0
    .line 844
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    #@e3
    .line 845
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@e5
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e8
    :cond_e8
    move v1, v13

    #@e9
    goto :goto_f0

    #@ea
    :cond_ea
    if-lez v11, :cond_e8

    #@ec
    .line 848
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@ee
    add-int/2addr v0, v13

    #@ef
    add-int/2addr v1, v0

    #@f0
    .line 853
    :goto_f0
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@f3
    add-int/lit8 v11, v11, 0x1

    #@f5
    move v0, v14

    #@f6
    goto :goto_96

    #@f7
    .line 856
    :cond_f7
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@f9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@fc
    move-result v1

    #@fd
    .line 858
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@ff
    .line 859
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@101
    .line 860
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@103
    .line 861
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@105
    .line 863
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingLeft()I

    #@108
    move-result v6

    #@109
    .line 864
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingTop()I

    #@10c
    move-result v7

    #@10d
    .line 865
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    #@110
    move-result v9

    #@111
    .line 866
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    #@114
    move-result v10

    #@115
    .line 872
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@118
    move-result-object v11

    #@119
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@11b
    if-eq v11, v12, :cond_129

    #@11d
    .line 873
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@120
    move-result-object v11

    #@121
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@123
    if-ne v11, v12, :cond_126

    #@125
    goto :goto_129

    #@126
    :cond_126
    move/from16 v11, v21

    #@128
    goto :goto_12b

    #@129
    :cond_129
    :goto_129
    move/from16 v11, v20

    #@12b
    :goto_12b
    if-lez v0, :cond_153

    #@12d
    if-eqz v11, :cond_153

    #@12f
    move/from16 v0, v21

    #@131
    :goto_131
    if-ge v0, v1, :cond_153

    #@133
    .line 878
    iget-object v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@135
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@138
    move-result-object v11

    #@139
    check-cast v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@13b
    if-nez p3, :cond_147

    #@13d
    .line 880
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    #@140
    move-result v12

    #@141
    sub-int v12, v15, v12

    #@143
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    #@146
    goto :goto_150

    #@147
    .line 882
    :cond_147
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    #@14a
    move-result v12

    #@14b
    sub-int v12, v15, v12

    #@14d
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    #@150
    :goto_150
    add-int/lit8 v0, v0, 0x1

    #@152
    goto :goto_131

    #@153
    :cond_153
    move/from16 v22, v7

    #@155
    move v0, v9

    #@156
    move/from16 v12, v21

    #@158
    move v13, v12

    #@159
    move v14, v13

    #@15a
    move v7, v6

    #@15b
    move-object v6, v3

    #@15c
    move-object v3, v2

    #@15d
    move v2, v10

    #@15e
    :goto_15e
    if-ge v14, v1, :cond_237

    #@160
    .line 888
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@162
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@165
    move-result-object v9

    #@166
    move-object/from16 v23, v9

    #@168
    check-cast v23, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@16a
    if-nez p3, :cond_1cf

    #@16c
    add-int/lit8 v2, v1, -0x1

    #@16e
    if-ge v14, v2, :cond_183

    #@170
    .line 891
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@172
    add-int/lit8 v5, v14, 0x1

    #@174
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@177
    move-result-object v2

    #@178
    check-cast v2, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@17a
    .line 892
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v2}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@17d
    move-result-object v2

    #@17e
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@180
    move/from16 v5, v21

    #@182
    goto :goto_189

    #@183
    .line 895
    :cond_183
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@185
    .line 896
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    #@188
    move-result v5

    #@189
    .line 898
    :goto_189
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@18c
    move-result-object v9

    #@18d
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18f
    move-object/from16 v9, v23

    #@191
    move/from16 v10, p3

    #@193
    move-object/from16 v24, v11

    #@195
    move-object v11, v3

    #@196
    move-object/from16 p1, v3

    #@198
    move v3, v12

    #@199
    move-object v12, v6

    #@19a
    move v6, v13

    #@19b
    move-object v13, v4

    #@19c
    move-object/from16 p2, v4

    #@19e
    move v4, v14

    #@19f
    move-object v14, v2

    #@1a0
    move v15, v7

    #@1a1
    move/from16 v16, v22

    #@1a3
    move/from16 v17, v0

    #@1a5
    move/from16 v18, v5

    #@1a7
    move/from16 v19, p4

    #@1a9
    .line 899
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    #@1ac
    .line 903
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    #@1af
    move-result v9

    #@1b0
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    #@1b3
    move-result v6

    #@1b4
    .line 904
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    #@1b7
    move-result v9

    #@1b8
    add-int v12, v3, v9

    #@1ba
    if-lez v4, :cond_1bf

    #@1bc
    .line 906
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@1be
    add-int/2addr v12, v3

    #@1bf
    :cond_1bf
    move-object/from16 v3, p1

    #@1c1
    move v13, v6

    #@1c2
    move/from16 v22, v21

    #@1c4
    move-object/from16 v6, v24

    #@1c6
    move-object/from16 v24, p2

    #@1c8
    move/from16 v27, v5

    #@1ca
    move-object v5, v2

    #@1cb
    move/from16 v2, v27

    #@1cd
    goto/16 :goto_22f

    #@1cf
    :cond_1cf
    move-object/from16 p1, v3

    #@1d1
    move v3, v12

    #@1d2
    move v0, v13

    #@1d3
    move v4, v14

    #@1d4
    add-int/lit8 v9, v1, -0x1

    #@1d6
    if-ge v4, v9, :cond_1ed

    #@1d8
    .line 910
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@1da
    add-int/lit8 v14, v4, 0x1

    #@1dc
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1df
    move-result-object v9

    #@1e0
    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@1e2
    .line 911
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1e5
    move-result-object v9

    #@1e6
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1e8
    move-object/from16 v24, v9

    #@1ea
    move/from16 v25, v21

    #@1ec
    goto :goto_1f7

    #@1ed
    .line 914
    :cond_1ed
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ef
    .line 915
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    #@1f2
    move-result v10

    #@1f3
    move-object/from16 v24, v9

    #@1f5
    move/from16 v25, v10

    #@1f7
    .line 917
    :goto_1f7
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1fa
    move-result-object v9

    #@1fb
    iget-object v15, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1fd
    move-object/from16 v9, v23

    #@1ff
    move/from16 v10, p3

    #@201
    move-object/from16 v11, p1

    #@203
    move-object v12, v6

    #@204
    move-object/from16 v13, v24

    #@206
    move-object v14, v5

    #@207
    move-object/from16 v26, v15

    #@209
    move v15, v7

    #@20a
    move/from16 v16, v22

    #@20c
    move/from16 v17, v25

    #@20e
    move/from16 v18, v2

    #@210
    move/from16 v19, p4

    #@212
    .line 918
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    #@215
    .line 922
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    #@218
    move-result v7

    #@219
    add-int v13, v0, v7

    #@21b
    .line 923
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    #@21e
    move-result v0

    #@21f
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@222
    move-result v0

    #@223
    if-lez v4, :cond_228

    #@225
    .line 925
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@227
    add-int/2addr v13, v3

    #@228
    :cond_228
    move v12, v0

    #@229
    move/from16 v7, v21

    #@22b
    move/from16 v0, v25

    #@22d
    move-object/from16 v3, v26

    #@22f
    :goto_22f
    add-int/lit8 v14, v4, 0x1

    #@231
    move/from16 v15, p4

    #@233
    move-object/from16 v4, v24

    #@235
    goto/16 :goto_15e

    #@237
    :cond_237
    move v3, v12

    #@238
    move v0, v13

    #@239
    .line 929
    aput v0, p5, v21

    #@23b
    .line 930
    aput v3, p5, v20

    #@23d
    return-void
.end method

.method private measureChainWrap_new([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 34

    #@0
    move-object/from16 v8, p0

    #@2
    move/from16 v9, p2

    #@4
    move/from16 v15, p4

    #@6
    if-nez v9, :cond_9

    #@8
    return-void

    #@9
    .line 949
    :cond_9
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@e
    .line 950
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@10
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@12
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18
    move-object v0, v10

    #@19
    move-object/from16 v1, p0

    #@1b
    move/from16 v2, p3

    #@1d
    move/from16 v7, p4

    #@1f
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@22
    .line 951
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@27
    const/16 v20, 0x1

    #@29
    const/16 v21, 0x0

    #@2b
    if-nez p3, :cond_9a

    #@2d
    move/from16 v0, v21

    #@2f
    move v1, v0

    #@30
    move v2, v1

    #@31
    move v11, v2

    #@32
    :goto_32
    if-ge v11, v9, :cond_fd

    #@34
    add-int/lit8 v12, v0, 0x1

    #@36
    .line 960
    aget-object v13, p1, v11

    #@38
    .line 961
    invoke-direct {v8, v13, v15}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@3b
    move-result v14

    #@3c
    .line 962
    invoke-virtual {v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@3f
    move-result-object v0

    #@40
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@42
    if-ne v0, v3, :cond_46

    #@44
    add-int/lit8 v1, v1, 0x1

    #@46
    :cond_46
    move/from16 v16, v1

    #@48
    if-eq v2, v15, :cond_50

    #@4a
    .line 965
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@4c
    add-int/2addr v0, v2

    #@4d
    add-int/2addr v0, v14

    #@4e
    if-le v0, v15, :cond_59

    #@50
    :cond_50
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@53
    move-result-object v0

    #@54
    if-eqz v0, :cond_59

    #@56
    move/from16 v0, v20

    #@58
    goto :goto_5b

    #@59
    :cond_59
    move/from16 v0, v21

    #@5b
    :goto_5b
    if-nez v0, :cond_67

    #@5d
    if-lez v11, :cond_67

    #@5f
    .line 966
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    #@61
    if-lez v1, :cond_67

    #@63
    if-le v12, v1, :cond_67

    #@65
    move/from16 v0, v20

    #@67
    :cond_67
    if-eqz v0, :cond_88

    #@69
    .line 971
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@6b
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6d
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@6f
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@71
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@73
    move-object v0, v10

    #@74
    move-object/from16 v1, p0

    #@76
    move/from16 v2, p3

    #@78
    move/from16 v7, p4

    #@7a
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@7d
    .line 972
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    #@80
    .line 973
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@85
    move v0, v12

    #@86
    move v2, v14

    #@87
    goto :goto_92

    #@88
    :cond_88
    if-lez v11, :cond_8f

    #@8a
    .line 977
    iget v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@8c
    add-int/2addr v0, v14

    #@8d
    add-int/2addr v2, v0

    #@8e
    goto :goto_90

    #@8f
    :cond_8f
    move v2, v14

    #@90
    :goto_90
    move/from16 v0, v21

    #@92
    .line 982
    :goto_92
    invoke-virtual {v10, v13}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@95
    add-int/lit8 v11, v11, 0x1

    #@97
    move/from16 v1, v16

    #@99
    goto :goto_32

    #@9a
    :cond_9a
    move/from16 v0, v21

    #@9c
    move v1, v0

    #@9d
    move v11, v1

    #@9e
    :goto_9e
    if-ge v11, v9, :cond_fd

    #@a0
    .line 988
    aget-object v12, p1, v11

    #@a2
    .line 989
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/core/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)I

    #@a5
    move-result v13

    #@a6
    .line 990
    invoke-virtual {v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a9
    move-result-object v2

    #@aa
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ac
    if-ne v2, v3, :cond_b0

    #@ae
    add-int/lit8 v1, v1, 0x1

    #@b0
    :cond_b0
    move v14, v1

    #@b1
    if-eq v0, v15, :cond_b9

    #@b3
    .line 993
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@b5
    add-int/2addr v1, v0

    #@b6
    add-int/2addr v1, v13

    #@b7
    if-le v1, v15, :cond_c2

    #@b9
    :cond_b9
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v10}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@bc
    move-result-object v1

    #@bd
    if-eqz v1, :cond_c2

    #@bf
    move/from16 v1, v20

    #@c1
    goto :goto_c4

    #@c2
    :cond_c2
    move/from16 v1, v21

    #@c4
    :goto_c4
    if-nez v1, :cond_d0

    #@c6
    if-lez v11, :cond_d0

    #@c8
    .line 994
    iget v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    #@ca
    if-lez v2, :cond_d0

    #@cc
    if-gez v2, :cond_d0

    #@ce
    move/from16 v1, v20

    #@d0
    :cond_d0
    if-eqz v1, :cond_f0

    #@d2
    .line 999
    new-instance v10, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@d4
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d6
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@d8
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@da
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@dc
    move-object v0, v10

    #@dd
    move-object/from16 v1, p0

    #@df
    move/from16 v2, p3

    #@e1
    move/from16 v7, p4

    #@e3
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@e6
    .line 1000
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setStartIndex(I)V

    #@e9
    .line 1001
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@eb
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ee
    :cond_ee
    move v0, v13

    #@ef
    goto :goto_f6

    #@f0
    :cond_f0
    if-lez v11, :cond_ee

    #@f2
    .line 1005
    iget v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@f4
    add-int/2addr v1, v13

    #@f5
    add-int/2addr v0, v1

    #@f6
    .line 1010
    :goto_f6
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@f9
    add-int/lit8 v11, v11, 0x1

    #@fb
    move v1, v14

    #@fc
    goto :goto_9e

    #@fd
    .line 1013
    :cond_fd
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@ff
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@102
    move-result v0

    #@103
    .line 1015
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@105
    .line 1016
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@107
    .line 1017
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@109
    .line 1018
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@10b
    .line 1020
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingLeft()I

    #@10e
    move-result v6

    #@10f
    .line 1021
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingTop()I

    #@112
    move-result v7

    #@113
    .line 1022
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    #@116
    move-result v9

    #@117
    .line 1023
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    #@11a
    move-result v10

    #@11b
    .line 1029
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@11e
    move-result-object v11

    #@11f
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@121
    if-eq v11, v12, :cond_12f

    #@123
    .line 1030
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@126
    move-result-object v11

    #@127
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@129
    if-ne v11, v12, :cond_12c

    #@12b
    goto :goto_12f

    #@12c
    :cond_12c
    move/from16 v11, v21

    #@12e
    goto :goto_131

    #@12f
    :cond_12f
    :goto_12f
    move/from16 v11, v20

    #@131
    :goto_131
    if-lez v1, :cond_159

    #@133
    if-eqz v11, :cond_159

    #@135
    move/from16 v1, v21

    #@137
    :goto_137
    if-ge v1, v0, :cond_159

    #@139
    .line 1035
    iget-object v11, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@13b
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13e
    move-result-object v11

    #@13f
    check-cast v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@141
    if-nez p3, :cond_14d

    #@143
    .line 1037
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    #@146
    move-result v12

    #@147
    sub-int v12, v15, v12

    #@149
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    #@14c
    goto :goto_156

    #@14d
    .line 1039
    :cond_14d
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    #@150
    move-result v12

    #@151
    sub-int v12, v15, v12

    #@153
    invoke-virtual {v11, v12}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    #@156
    :goto_156
    add-int/lit8 v1, v1, 0x1

    #@158
    goto :goto_137

    #@159
    :cond_159
    move/from16 v22, v7

    #@15b
    move v1, v9

    #@15c
    move/from16 v12, v21

    #@15e
    move v13, v12

    #@15f
    move v14, v13

    #@160
    move v7, v6

    #@161
    move-object v6, v3

    #@162
    move-object v3, v2

    #@163
    move v2, v10

    #@164
    :goto_164
    if-ge v14, v0, :cond_23d

    #@166
    .line 1045
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@168
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16b
    move-result-object v9

    #@16c
    move-object/from16 v23, v9

    #@16e
    check-cast v23, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@170
    if-nez p3, :cond_1d5

    #@172
    add-int/lit8 v2, v0, -0x1

    #@174
    if-ge v14, v2, :cond_189

    #@176
    .line 1048
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@178
    add-int/lit8 v5, v14, 0x1

    #@17a
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17d
    move-result-object v2

    #@17e
    check-cast v2, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@180
    .line 1049
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v2}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@183
    move-result-object v2

    #@184
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@186
    move/from16 v5, v21

    #@188
    goto :goto_18f

    #@189
    .line 1052
    :cond_189
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18b
    .line 1053
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    #@18e
    move-result v5

    #@18f
    .line 1055
    :goto_18f
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@192
    move-result-object v9

    #@193
    iget-object v11, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@195
    move-object/from16 v9, v23

    #@197
    move/from16 v10, p3

    #@199
    move-object/from16 v24, v11

    #@19b
    move-object v11, v3

    #@19c
    move-object/from16 p1, v3

    #@19e
    move v3, v12

    #@19f
    move-object v12, v6

    #@1a0
    move v6, v13

    #@1a1
    move-object v13, v4

    #@1a2
    move-object/from16 p2, v4

    #@1a4
    move v4, v14

    #@1a5
    move-object v14, v2

    #@1a6
    move v15, v7

    #@1a7
    move/from16 v16, v22

    #@1a9
    move/from16 v17, v1

    #@1ab
    move/from16 v18, v5

    #@1ad
    move/from16 v19, p4

    #@1af
    .line 1056
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    #@1b2
    .line 1060
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    #@1b5
    move-result v9

    #@1b6
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    #@1b9
    move-result v6

    #@1ba
    .line 1061
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    #@1bd
    move-result v9

    #@1be
    add-int v12, v3, v9

    #@1c0
    if-lez v4, :cond_1c5

    #@1c2
    .line 1063
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@1c4
    add-int/2addr v12, v3

    #@1c5
    :cond_1c5
    move-object/from16 v3, p1

    #@1c7
    move v13, v6

    #@1c8
    move/from16 v22, v21

    #@1ca
    move-object/from16 v6, v24

    #@1cc
    move-object/from16 v24, p2

    #@1ce
    move/from16 v27, v5

    #@1d0
    move-object v5, v2

    #@1d1
    move/from16 v2, v27

    #@1d3
    goto/16 :goto_235

    #@1d5
    :cond_1d5
    move-object/from16 p1, v3

    #@1d7
    move v3, v12

    #@1d8
    move v1, v13

    #@1d9
    move v4, v14

    #@1da
    add-int/lit8 v9, v0, -0x1

    #@1dc
    if-ge v4, v9, :cond_1f3

    #@1de
    .line 1067
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@1e0
    add-int/lit8 v14, v4, 0x1

    #@1e2
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e5
    move-result-object v9

    #@1e6
    check-cast v9, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@1e8
    .line 1068
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static {v9}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@1eb
    move-result-object v9

    #@1ec
    iget-object v9, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1ee
    move-object/from16 v24, v9

    #@1f0
    move/from16 v25, v21

    #@1f2
    goto :goto_1fd

    #@1f3
    .line 1071
    :cond_1f3
    iget-object v9, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1f5
    .line 1072
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    #@1f8
    move-result v10

    #@1f9
    move-object/from16 v24, v9

    #@1fb
    move/from16 v25, v10

    #@1fd
    .line 1074
    :goto_1fd
    # getter for: Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->biggest:Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@200
    move-result-object v9

    #@201
    iget-object v15, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@203
    move-object/from16 v9, v23

    #@205
    move/from16 v10, p3

    #@207
    move-object/from16 v11, p1

    #@209
    move-object v12, v6

    #@20a
    move-object/from16 v13, v24

    #@20c
    move-object v14, v5

    #@20d
    move-object/from16 v26, v15

    #@20f
    move v15, v7

    #@210
    move/from16 v16, v22

    #@212
    move/from16 v17, v25

    #@214
    move/from16 v18, v2

    #@216
    move/from16 v19, p4

    #@218
    .line 1075
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    #@21b
    .line 1079
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    #@21e
    move-result v7

    #@21f
    add-int v13, v1, v7

    #@221
    .line 1080
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    #@224
    move-result v1

    #@225
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    #@228
    move-result v1

    #@229
    if-lez v4, :cond_22e

    #@22b
    .line 1082
    iget v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@22d
    add-int/2addr v13, v3

    #@22e
    :cond_22e
    move v12, v1

    #@22f
    move/from16 v7, v21

    #@231
    move/from16 v1, v25

    #@233
    move-object/from16 v3, v26

    #@235
    :goto_235
    add-int/lit8 v14, v4, 0x1

    #@237
    move/from16 v15, p4

    #@239
    move-object/from16 v4, v24

    #@23b
    goto/16 :goto_164

    #@23d
    :cond_23d
    move v3, v12

    #@23e
    move v1, v13

    #@23f
    .line 1086
    aput v1, p5, v21

    #@241
    .line 1087
    aput v3, p5, v20

    #@243
    return-void
.end method

.method private measureNoWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V
    .registers 28

    #@0
    move-object/from16 v8, p0

    #@2
    move/from16 v9, p2

    #@4
    if-nez v9, :cond_7

    #@6
    return-void

    #@7
    .line 1107
    :cond_7
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    const/4 v10, 0x0

    #@e
    if-nez v0, :cond_2a

    #@10
    .line 1108
    new-instance v11, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@12
    iget-object v3, v8, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@14
    iget-object v4, v8, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@16
    iget-object v5, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@18
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@1a
    move-object v0, v11

    #@1b
    move-object/from16 v1, p0

    #@1d
    move/from16 v2, p3

    #@1f
    move/from16 v7, p4

    #@21
    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/core/widgets/Flow;ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;I)V

    #@24
    .line 1109
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@29
    goto :goto_57

    #@2a
    .line 1111
    :cond_2a
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@32
    .line 1112
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->clear()V

    #@35
    .line 1113
    iget-object v13, v8, Landroidx/constraintlayout/core/widgets/Flow;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@37
    iget-object v14, v8, Landroidx/constraintlayout/core/widgets/Flow;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@39
    iget-object v15, v8, Landroidx/constraintlayout/core/widgets/Flow;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3b
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/Flow;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    #@3d
    .line 1114
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingLeft()I

    #@40
    move-result v17

    #@41
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingTop()I

    #@44
    move-result v18

    #@45
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    #@48
    move-result v19

    #@49
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    #@4c
    move-result v20

    #@4d
    move-object v11, v0

    #@4e
    move/from16 v12, p3

    #@50
    move-object/from16 v16, v1

    #@52
    move/from16 v21, p4

    #@54
    .line 1113
    invoke-virtual/range {v11 .. v21}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;Landroidx/constraintlayout/core/widgets/ConstraintAnchor;IIIII)V

    #@57
    :goto_57
    move v0, v10

    #@58
    :goto_58
    if-ge v0, v9, :cond_62

    #@5a
    .line 1118
    aget-object v1, p1, v0

    #@5c
    .line 1119
    invoke-virtual {v11, v1}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    #@5f
    add-int/lit8 v0, v0, 0x1

    #@61
    goto :goto_58

    #@62
    .line 1122
    :cond_62
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getWidth()I

    #@65
    move-result v0

    #@66
    aput v0, p5, v10

    #@68
    .line 1123
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->getHeight()I

    #@6b
    move-result v0

    #@6c
    const/4 v1, 0x1

    #@6d
    aput v0, p5, v1

    #@6f
    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .registers 8

    #@0
    .line 1392
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    #@3
    .line 1394
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Flow;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@6
    move-result-object p1

    #@7
    const/4 p2, 0x0

    #@8
    const/4 v0, 0x1

    #@9
    if-eqz p1, :cond_19

    #@b
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Flow;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@e
    move-result-object p1

    #@f
    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    #@11
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->isRtl()Z

    #@14
    move-result p1

    #@15
    if-eqz p1, :cond_19

    #@17
    move p1, v0

    #@18
    goto :goto_1a

    #@19
    :cond_19
    move p1, p2

    #@1a
    .line 1395
    :goto_1a
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    #@1c
    if-eqz v1, :cond_67

    #@1e
    if-eq v1, v0, :cond_49

    #@20
    const/4 v2, 0x2

    #@21
    if-eq v1, v2, :cond_45

    #@23
    const/4 v2, 0x3

    #@24
    if-eq v1, v2, :cond_27

    #@26
    goto :goto_7a

    #@27
    .line 1415
    :cond_27
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2c
    move-result v1

    #@2d
    move v2, p2

    #@2e
    :goto_2e
    if-ge v2, v1, :cond_7a

    #@30
    .line 1417
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@32
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@38
    add-int/lit8 v4, v1, -0x1

    #@3a
    if-ne v2, v4, :cond_3e

    #@3c
    move v4, v0

    #@3d
    goto :goto_3f

    #@3e
    :cond_3e
    move v4, p2

    #@3f
    .line 1418
    :goto_3f
    invoke-virtual {v3, p1, v2, v4}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    #@42
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_2e

    #@45
    .line 1411
    :cond_45
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/Flow;->createAlignedConstraints(Z)V

    #@48
    goto :goto_7a

    #@49
    .line 1397
    :cond_49
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@4b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@4e
    move-result v1

    #@4f
    move v2, p2

    #@50
    :goto_50
    if-ge v2, v1, :cond_7a

    #@52
    .line 1399
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@57
    move-result-object v3

    #@58
    check-cast v3, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@5a
    add-int/lit8 v4, v1, -0x1

    #@5c
    if-ne v2, v4, :cond_60

    #@5e
    move v4, v0

    #@5f
    goto :goto_61

    #@60
    :cond_60
    move v4, p2

    #@61
    .line 1400
    :goto_61
    invoke-virtual {v3, p1, v2, v4}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    #@64
    add-int/lit8 v2, v2, 0x1

    #@66
    goto :goto_50

    #@67
    .line 1404
    :cond_67
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@69
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@6c
    move-result v1

    #@6d
    if-lez v1, :cond_7a

    #@6f
    .line 1405
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    #@71
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@74
    move-result-object v1

    #@75
    check-cast v1, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;

    #@77
    .line 1406
    invoke-virtual {v1, p1, p2, v0}, Landroidx/constraintlayout/core/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    #@7a
    .line 1422
    :cond_7a
    :goto_7a
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/widgets/Flow;->needsCallbackFromSolver(Z)V

    #@7d
    return-void
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 86
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    #@3
    .line 87
    check-cast p1, Landroidx/constraintlayout/core/widgets/Flow;

    #@5
    .line 89
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    #@7
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    #@9
    .line 90
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    #@b
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    #@d
    .line 91
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    #@f
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    #@11
    .line 92
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    #@13
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    #@15
    .line 93
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    #@17
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    #@19
    .line 94
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    #@1b
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    #@1d
    .line 96
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    #@1f
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    #@21
    .line 97
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    #@23
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    #@25
    .line 98
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    #@27
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    #@29
    .line 99
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    #@2b
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    #@2d
    .line 100
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    #@2f
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    #@31
    .line 101
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    #@33
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    #@35
    .line 103
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@37
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@39
    .line 104
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@3b
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@3d
    .line 106
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    #@3f
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    #@41
    .line 107
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    #@43
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    #@45
    .line 108
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    #@47
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    #@49
    .line 110
    iget p2, p1, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    #@4b
    iput p2, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    #@4d
    .line 112
    iget p1, p1, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    #@4f
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    #@51
    return-void
.end method

.method public getMaxElementsWrap()F
    .registers 2

    #@0
    .line 174
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    #@2
    int-to-float v0, v0

    #@3
    return v0
.end method

.method public measure(IIII)V
    .registers 23

    #@0
    move-object/from16 v6, p0

    #@2
    move/from16 v7, p1

    #@4
    move/from16 v8, p2

    #@6
    move/from16 v9, p3

    #@8
    move/from16 v10, p4

    #@a
    .line 231
    iget v0, v6, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    #@c
    const/4 v11, 0x0

    #@d
    if-lez v0, :cond_1c

    #@f
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->measureChildren()Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_1c

    #@15
    .line 232
    invoke-virtual {v6, v11, v11}, Landroidx/constraintlayout/core/widgets/Flow;->setMeasure(II)V

    #@18
    .line 233
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/widgets/Flow;->needsCallbackFromSolver(Z)V

    #@1b
    return-void

    #@1c
    .line 239
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingLeft()I

    #@1f
    move-result v12

    #@20
    .line 240
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingRight()I

    #@23
    move-result v13

    #@24
    .line 241
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingTop()I

    #@27
    move-result v14

    #@28
    .line 242
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/widgets/Flow;->getPaddingBottom()I

    #@2b
    move-result v15

    #@2c
    const/4 v0, 0x2

    #@2d
    new-array v5, v0, [I

    #@2f
    sub-int v1, v8, v12

    #@31
    sub-int/2addr v1, v13

    #@32
    .line 246
    iget v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    #@34
    const/4 v4, 0x1

    #@35
    if-ne v2, v4, :cond_3a

    #@37
    sub-int v1, v10, v14

    #@39
    sub-int/2addr v1, v15

    #@3a
    :cond_3a
    move/from16 v16, v1

    #@3c
    const/4 v1, -0x1

    #@3d
    if-nez v2, :cond_4c

    #@3f
    .line 251
    iget v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    #@41
    if-ne v2, v1, :cond_45

    #@43
    .line 252
    iput v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    #@45
    .line 254
    :cond_45
    iget v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    #@47
    if-ne v2, v1, :cond_58

    #@49
    .line 255
    iput v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    #@4b
    goto :goto_58

    #@4c
    .line 258
    :cond_4c
    iget v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    #@4e
    if-ne v2, v1, :cond_52

    #@50
    .line 259
    iput v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    #@52
    .line 261
    :cond_52
    iget v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    #@54
    if-ne v2, v1, :cond_58

    #@56
    .line 262
    iput v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    #@58
    .line 266
    :cond_58
    :goto_58
    iget-object v1, v6, Landroidx/constraintlayout/core/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@5a
    move v2, v11

    #@5b
    move v3, v2

    #@5c
    .line 269
    :goto_5c
    iget v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    #@5e
    const/16 v0, 0x8

    #@60
    if-ge v2, v11, :cond_72

    #@62
    .line 270
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@64
    aget-object v11, v11, v2

    #@66
    .line 271
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@69
    move-result v11

    #@6a
    if-ne v11, v0, :cond_6e

    #@6c
    add-int/lit8 v3, v3, 0x1

    #@6e
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    #@70
    const/4 v0, 0x2

    #@71
    goto :goto_5c

    #@72
    .line 275
    :cond_72
    iget v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    #@74
    if-lez v3, :cond_94

    #@76
    .line 277
    iget v1, v6, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    #@78
    sub-int/2addr v1, v3

    #@79
    new-array v1, v1, [Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@7b
    const/4 v2, 0x0

    #@7c
    const/4 v3, 0x0

    #@7d
    .line 279
    :goto_7d
    iget v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    #@7f
    if-ge v2, v11, :cond_93

    #@81
    .line 280
    iget-object v11, v6, Landroidx/constraintlayout/core/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@83
    aget-object v11, v11, v2

    #@85
    .line 281
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    #@88
    move-result v4

    #@89
    if-eq v4, v0, :cond_8f

    #@8b
    .line 282
    aput-object v11, v1, v3

    #@8d
    add-int/lit8 v3, v3, 0x1

    #@8f
    :cond_8f
    add-int/lit8 v2, v2, 0x1

    #@91
    const/4 v4, 0x1

    #@92
    goto :goto_7d

    #@93
    :cond_93
    move v2, v3

    #@94
    .line 288
    :cond_94
    iput-object v1, v6, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    #@96
    .line 289
    iput v2, v6, Landroidx/constraintlayout/core/widgets/Flow;->mDisplayedWidgetsCount:I

    #@98
    .line 290
    iget v0, v6, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    #@9a
    if-eqz v0, :cond_d1

    #@9c
    const/4 v4, 0x1

    #@9d
    if-eq v0, v4, :cond_c4

    #@9f
    const/4 v3, 0x2

    #@a0
    if-eq v0, v3, :cond_b7

    #@a2
    const/4 v3, 0x3

    #@a3
    if-eq v0, v3, :cond_aa

    #@a5
    move v11, v4

    #@a6
    move-object/from16 v17, v5

    #@a8
    :goto_a8
    const/4 v0, 0x0

    #@a9
    goto :goto_de

    #@aa
    .line 304
    :cond_aa
    iget v3, v6, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    #@ac
    move-object/from16 v0, p0

    #@ae
    move v11, v4

    #@af
    move/from16 v4, v16

    #@b1
    move-object/from16 v17, v5

    #@b3
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureChainWrap_new([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    #@b6
    goto :goto_a8

    #@b7
    :cond_b7
    move v11, v4

    #@b8
    move-object/from16 v17, v5

    #@ba
    .line 292
    iget v3, v6, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    #@bc
    move-object/from16 v0, p0

    #@be
    move/from16 v4, v16

    #@c0
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureAligned([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    #@c3
    goto :goto_a8

    #@c4
    :cond_c4
    move v11, v4

    #@c5
    move-object/from16 v17, v5

    #@c7
    .line 296
    iget v3, v6, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    #@c9
    move-object/from16 v0, p0

    #@cb
    move/from16 v4, v16

    #@cd
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureChainWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    #@d0
    goto :goto_a8

    #@d1
    :cond_d1
    move-object/from16 v17, v5

    #@d3
    const/4 v11, 0x1

    #@d4
    .line 300
    iget v3, v6, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    #@d6
    move-object/from16 v0, p0

    #@d8
    move/from16 v4, v16

    #@da
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/Flow;->measureNoWrap([Landroidx/constraintlayout/core/widgets/ConstraintWidget;III[I)V

    #@dd
    goto :goto_a8

    #@de
    :goto_de
    aget v1, v17, v0

    #@e0
    add-int/2addr v1, v12

    #@e1
    add-int/2addr v1, v13

    #@e2
    aget v2, v17, v11

    #@e4
    add-int/2addr v2, v14

    #@e5
    add-int/2addr v2, v15

    #@e6
    const/high16 v3, -0x80000000

    #@e8
    const/high16 v4, 0x40000000    # 2.0f

    #@ea
    if-ne v7, v4, :cond_ee

    #@ec
    move v1, v8

    #@ed
    goto :goto_f9

    #@ee
    :cond_ee
    if-ne v7, v3, :cond_f5

    #@f0
    .line 319
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    #@f3
    move-result v1

    #@f4
    goto :goto_f9

    #@f5
    :cond_f5
    if-nez v7, :cond_f8

    #@f7
    goto :goto_f9

    #@f8
    :cond_f8
    move v1, v0

    #@f9
    :goto_f9
    if-ne v9, v4, :cond_fd

    #@fb
    move v2, v10

    #@fc
    goto :goto_108

    #@fd
    :cond_fd
    if-ne v9, v3, :cond_104

    #@ff
    .line 327
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    #@102
    move-result v2

    #@103
    goto :goto_108

    #@104
    :cond_104
    if-nez v9, :cond_107

    #@106
    goto :goto_108

    #@107
    :cond_107
    move v2, v0

    #@108
    .line 332
    :goto_108
    invoke-virtual {v6, v1, v2}, Landroidx/constraintlayout/core/widgets/Flow;->setMeasure(II)V

    #@10b
    .line 333
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/core/widgets/Flow;->setWidth(I)V

    #@10e
    .line 334
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/core/widgets/Flow;->setHeight(I)V

    #@111
    .line 335
    iget v1, v6, Landroidx/constraintlayout/core/widgets/Flow;->mWidgetsCount:I

    #@113
    if-lez v1, :cond_116

    #@115
    goto :goto_117

    #@116
    :cond_116
    move v11, v0

    #@117
    :goto_117
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/widgets/Flow;->needsCallbackFromSolver(Z)V

    #@11a
    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .registers 2

    #@0
    .line 147
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalBias:F

    #@2
    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .registers 2

    #@0
    .line 123
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstHorizontalStyle:I

    #@2
    return-void
.end method

.method public setFirstVerticalBias(F)V
    .registers 2

    #@0
    .line 149
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalBias:F

    #@2
    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .registers 2

    #@0
    .line 125
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mFirstVerticalStyle:I

    #@2
    return-void
.end method

.method public setHorizontalAlign(I)V
    .registers 2

    #@0
    .line 156
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalAlign:I

    #@2
    return-void
.end method

.method public setHorizontalBias(F)V
    .registers 2

    #@0
    .line 140
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalBias:F

    #@2
    return-void
.end method

.method public setHorizontalGap(I)V
    .registers 2

    #@0
    .line 167
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalGap:I

    #@2
    return-void
.end method

.method public setHorizontalStyle(I)V
    .registers 2

    #@0
    .line 132
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mHorizontalStyle:I

    #@2
    return-void
.end method

.method public setLastHorizontalBias(F)V
    .registers 2

    #@0
    .line 151
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalBias:F

    #@2
    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .registers 2

    #@0
    .line 127
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastHorizontalStyle:I

    #@2
    return-void
.end method

.method public setLastVerticalBias(F)V
    .registers 2

    #@0
    .line 153
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalBias:F

    #@2
    return-void
.end method

.method public setLastVerticalStyle(I)V
    .registers 2

    #@0
    .line 129
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mLastVerticalStyle:I

    #@2
    return-void
.end method

.method public setMaxElementsWrap(I)V
    .registers 2

    #@0
    .line 171
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mMaxElementsWrap:I

    #@2
    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    #@0
    .line 120
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mOrientation:I

    #@2
    return-void
.end method

.method public setVerticalAlign(I)V
    .registers 2

    #@0
    .line 160
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalAlign:I

    #@2
    return-void
.end method

.method public setVerticalBias(F)V
    .registers 2

    #@0
    .line 144
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalBias:F

    #@2
    return-void
.end method

.method public setVerticalGap(I)V
    .registers 2

    #@0
    .line 169
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalGap:I

    #@2
    return-void
.end method

.method public setVerticalStyle(I)V
    .registers 2

    #@0
    .line 136
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mVerticalStyle:I

    #@2
    return-void
.end method

.method public setWrapMode(I)V
    .registers 2

    #@0
    .line 164
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Flow;->mWrapMode:I

    #@2
    return-void
.end method
