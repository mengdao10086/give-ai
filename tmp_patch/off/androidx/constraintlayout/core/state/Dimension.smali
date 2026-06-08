.class public Landroidx/constraintlayout/core/state/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/Dimension$Type;
    }
.end annotation


# static fields
.field public static final FIXED_DIMENSION:Ljava/lang/Object;

.field public static final PARENT_DIMENSION:Ljava/lang/Object;

.field public static final PERCENT_DIMENSION:Ljava/lang/Object;

.field public static final RATIO_DIMENSION:Ljava/lang/Object;

.field public static final SPREAD_DIMENSION:Ljava/lang/Object;

.field public static final WRAP_DIMENSION:Ljava/lang/Object;


# instance fields
.field private final WRAP_CONTENT:I

.field mInitialValue:Ljava/lang/Object;

.field mIsSuggested:Z

.field mMax:I

.field mMin:I

.field mPercent:F

.field mRatioString:Ljava/lang/String;

.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 28
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    #@7
    .line 29
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    #@e
    .line 30
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    #@15
    .line 31
    new-instance v0, Ljava/lang/Object;

    #@17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1a
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    #@1c
    .line 32
    new-instance v0, Ljava/lang/Object;

    #@1e
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@21
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    #@23
    .line 33
    new-instance v0, Ljava/lang/Object;

    #@25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@28
    sput-object v0, Landroidx/constraintlayout/core/state/Dimension;->RATIO_DIMENSION:Ljava/lang/Object;

    #@2a
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x2

    #@4
    .line 35
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_CONTENT:I

    #@6
    const/4 v0, 0x0

    #@7
    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    #@9
    const v1, 0x7fffffff

    #@c
    .line 38
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    #@e
    const/high16 v1, 0x3f800000    # 1.0f

    #@10
    .line 39
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    #@12
    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    #@14
    const/4 v1, 0x0

    #@15
    .line 41
    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    #@17
    .line 42
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    #@19
    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@1b
    .line 43
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    #@1d
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 4

    #@0
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, -0x2

    #@4
    .line 35
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_CONTENT:I

    #@6
    const/4 v0, 0x0

    #@7
    .line 37
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    #@9
    const v1, 0x7fffffff

    #@c
    .line 38
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    #@e
    const/high16 v1, 0x3f800000    # 1.0f

    #@10
    .line 39
    iput v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    #@12
    .line 40
    iput v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    #@14
    const/4 v1, 0x0

    #@15
    .line 41
    iput-object v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    #@17
    .line 43
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    #@19
    .line 68
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@1b
    return-void
.end method

.method public static Fixed(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3

    #@0
    .line 83
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    #@2
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    #@4
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    #@7
    .line 84
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->fixed(I)Landroidx/constraintlayout/core/state/Dimension;

    #@a
    return-object v0
.end method

.method public static Fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3

    #@0
    .line 89
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    #@2
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->FIXED_DIMENSION:Ljava/lang/Object;

    #@4
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    #@7
    .line 90
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    #@a
    return-object v0
.end method

.method public static Parent()Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    #@0
    .line 101
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    #@2
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    #@4
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    #@7
    return-object v0
.end method

.method public static Percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;
    .registers 4

    #@0
    .line 95
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    #@2
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    #@4
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    #@7
    .line 96
    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/state/Dimension;->percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;

    #@a
    return-object v0
.end method

.method public static Ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3

    #@0
    .line 113
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    #@2
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->RATIO_DIMENSION:Ljava/lang/Object;

    #@4
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    #@7
    .line 114
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    #@a
    return-object v0
.end method

.method public static Spread()Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    #@0
    .line 109
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    #@2
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->SPREAD_DIMENSION:Ljava/lang/Object;

    #@4
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    #@7
    return-object v0
.end method

.method public static Suggested(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    #@0
    .line 71
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Dimension;-><init>()V

    #@5
    .line 72
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(I)Landroidx/constraintlayout/core/state/Dimension;

    #@8
    return-object v0
.end method

.method public static Suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    #@0
    .line 77
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    #@2
    invoke-direct {v0}, Landroidx/constraintlayout/core/state/Dimension;-><init>()V

    #@5
    .line 78
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/state/Dimension;->suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;

    #@8
    return-object v0
.end method

.method public static Wrap()Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    #@0
    .line 105
    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    #@2
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    #@4
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/Object;)V

    #@7
    return-object v0
.end method


# virtual methods
.method public apply(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)V
    .registers 7

    #@0
    .line 200
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    #@2
    if-eqz p1, :cond_7

    #@4
    .line 201
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    #@7
    :cond_7
    const/4 p1, 0x2

    #@8
    const/4 v0, 0x1

    #@9
    const v1, 0x7fffffff

    #@c
    const/4 v2, 0x0

    #@d
    if-nez p3, :cond_63

    #@f
    .line 204
    iget-boolean p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    #@11
    if-eqz p3, :cond_31

    #@13
    .line 205
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@15
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@18
    .line 207
    iget-object p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@1a
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    #@1c
    if-ne p3, v1, :cond_20

    #@1e
    move p1, v0

    #@1f
    goto :goto_26

    #@20
    .line 209
    :cond_20
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    #@22
    if-ne p3, v0, :cond_25

    #@24
    goto :goto_26

    #@25
    :cond_25
    move p1, v2

    #@26
    .line 212
    :goto_26
    iget p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    #@28
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    #@2a
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    #@2c
    invoke-virtual {p2, p1, p3, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    #@2f
    goto/16 :goto_b4

    #@31
    .line 214
    :cond_31
    iget p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    #@33
    if-lez p1, :cond_38

    #@35
    .line 215
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinWidth(I)V

    #@38
    .line 217
    :cond_38
    iget p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    #@3a
    if-ge p1, v1, :cond_3f

    #@3c
    .line 218
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMaxWidth(I)V

    #@3f
    .line 220
    :cond_3f
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@41
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    #@43
    if-ne p1, p3, :cond_4c

    #@45
    .line 221
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@47
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@4a
    goto/16 :goto_b4

    #@4c
    .line 222
    :cond_4c
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    #@4e
    if-ne p1, p3, :cond_56

    #@50
    .line 223
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@52
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@55
    goto :goto_b4

    #@56
    :cond_56
    if-nez p1, :cond_b4

    #@58
    .line 225
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@5a
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@5d
    .line 226
    iget p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    #@5f
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    #@62
    goto :goto_b4

    #@63
    .line 230
    :cond_63
    iget-boolean p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    #@65
    if-eqz p3, :cond_84

    #@67
    .line 231
    sget-object p3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@69
    invoke-virtual {p2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@6c
    .line 233
    iget-object p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@6e
    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    #@70
    if-ne p3, v1, :cond_74

    #@72
    move p1, v0

    #@73
    goto :goto_7a

    #@74
    .line 235
    :cond_74
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->PERCENT_DIMENSION:Ljava/lang/Object;

    #@76
    if-ne p3, v0, :cond_79

    #@78
    goto :goto_7a

    #@79
    :cond_79
    move p1, v2

    #@7a
    .line 238
    :goto_7a
    iget p3, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    #@7c
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    #@7e
    iget v1, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    #@80
    invoke-virtual {p2, p1, p3, v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    #@83
    goto :goto_b4

    #@84
    .line 240
    :cond_84
    iget p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    #@86
    if-lez p1, :cond_8b

    #@88
    .line 241
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMinHeight(I)V

    #@8b
    .line 243
    :cond_8b
    iget p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    #@8d
    if-ge p1, v1, :cond_92

    #@8f
    .line 244
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setMaxHeight(I)V

    #@92
    .line 246
    :cond_92
    iget-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@94
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    #@96
    if-ne p1, p3, :cond_9e

    #@98
    .line 247
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@9a
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@9d
    goto :goto_b4

    #@9e
    .line 248
    :cond_9e
    sget-object p3, Landroidx/constraintlayout/core/state/Dimension;->PARENT_DIMENSION:Ljava/lang/Object;

    #@a0
    if-ne p1, p3, :cond_a8

    #@a2
    .line 249
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@a4
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@a7
    goto :goto_b4

    #@a8
    :cond_a8
    if-nez p1, :cond_b4

    #@aa
    .line 251
    sget-object p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    #@ac
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;)V

    #@af
    .line 252
    iget p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    #@b1
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    #@b4
    :cond_b4
    :goto_b4
    return-void
.end method

.method public equalsFixedValue(I)Z
    .registers 3

    #@0
    .line 53
    iget-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_a

    #@4
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    #@6
    if-ne v0, p1, :cond_a

    #@8
    const/4 p1, 0x1

    #@9
    return p1

    #@a
    :cond_a
    const/4 p1, 0x0

    #@b
    return p1
.end method

.method public fixed(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 176
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@3
    .line 177
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    #@5
    return-object p0
.end method

.method public fixed(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3

    #@0
    .line 167
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@2
    .line 168
    instance-of v0, p1, Ljava/lang/Integer;

    #@4
    if-eqz v0, :cond_11

    #@6
    .line 169
    check-cast p1, Ljava/lang/Integer;

    #@8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@b
    move-result p1

    #@c
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    #@e
    const/4 p1, 0x0

    #@f
    .line 170
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@11
    :cond_11
    return-object p0
.end method

.method getValue()I
    .registers 2

    #@0
    .line 192
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    #@2
    return v0
.end method

.method public max(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3

    #@0
    .line 138
    iget v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    #@2
    if-ltz v0, :cond_6

    #@4
    .line 139
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    #@6
    :cond_6
    return-object p0
.end method

.method public max(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3

    #@0
    .line 145
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    #@2
    if-ne p1, v0, :cond_f

    #@4
    iget-boolean p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    #@6
    if-eqz p1, :cond_f

    #@8
    .line 146
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@a
    const p1, 0x7fffffff

    #@d
    .line 147
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    #@f
    :cond_f
    return-object p0
.end method

.method public min(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    #@0
    if-ltz p1, :cond_4

    #@2
    .line 125
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    #@4
    :cond_4
    return-object p0
.end method

.method public min(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3

    #@0
    .line 131
    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->WRAP_DIMENSION:Ljava/lang/Object;

    #@2
    if-ne p1, v0, :cond_7

    #@4
    const/4 p1, -0x2

    #@5
    .line 132
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMin:I

    #@7
    :cond_7
    return-object p0
.end method

.method public percent(Ljava/lang/Object;F)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3

    #@0
    .line 119
    iput p2, p0, Landroidx/constraintlayout/core/state/Dimension;->mPercent:F

    #@2
    return-object p0
.end method

.method public ratio(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    #@0
    .line 182
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mRatioString:Ljava/lang/String;

    #@2
    return-object p0
.end method

.method setValue(I)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 187
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    #@3
    const/4 v0, 0x0

    #@4
    .line 188
    iput-object v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@6
    .line 189
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mValue:I

    #@8
    return-void
.end method

.method public suggested(I)Landroidx/constraintlayout/core/state/Dimension;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 153
    iput-boolean v0, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    #@3
    if-ltz p1, :cond_7

    #@5
    .line 155
    iput p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mMax:I

    #@7
    :cond_7
    return-object p0
.end method

.method public suggested(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/Dimension;
    .registers 2

    #@0
    .line 161
    iput-object p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mInitialValue:Ljava/lang/Object;

    #@2
    const/4 p1, 0x1

    #@3
    .line 162
    iput-boolean p1, p0, Landroidx/constraintlayout/core/state/Dimension;->mIsSuggested:Z

    #@5
    return-object p0
.end method
