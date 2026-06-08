.class Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Api16Impl;,
        Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Api18Impl;,
        Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Api23Impl;,
        Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl29;,
        Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;,
        Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTO_SIZE_GRANULARITY_IN_PX:I = 0x1

.field private static final DEFAULT_AUTO_SIZE_MAX_TEXT_SIZE_IN_SP:I = 0x70

.field private static final DEFAULT_AUTO_SIZE_MIN_TEXT_SIZE_IN_SP:I = 0xc

.field private static final TAG:Ljava/lang/String; = "ACTVAutoSizeHelper"

.field private static final TEMP_RECTF:Landroid/graphics/RectF;

.field static final UNSET_AUTO_SIZE_UNIFORM_CONFIGURATION_VALUE:F = -1.0f

.field private static final VERY_WIDE:I = 0x100000

.field private static sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoSizeMaxTextSizeInPx:F

.field private mAutoSizeMinTextSizeInPx:F

.field private mAutoSizeStepGranularityInPx:F

.field private mAutoSizeTextSizesInPx:[I

.field private mAutoSizeTextType:I

.field private final mContext:Landroid/content/Context;

.field private mHasPresetAutoSizeValues:Z

.field private final mImpl:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

.field private mNeedsAutoSizeText:Z

.field private mTempTextPaint:Landroid/text/TextPaint;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 66
    new-instance v0, Landroid/graphics/RectF;

    #@2
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    #@5
    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    #@7
    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@c
    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    #@e
    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@13
    sput-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    #@15
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    #@0
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 89
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    #@6
    .line 91
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    #@8
    const/high16 v1, -0x40800000    # -1.0f

    #@a
    .line 93
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    #@c
    .line 95
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    #@e
    .line 97
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    #@10
    new-array v1, v0, [I

    #@12
    .line 100
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    #@14
    .line 104
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    #@16
    .line 155
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@18
    .line 156
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@1b
    move-result-object p1

    #@1c
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    #@1e
    .line 157
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@20
    const/16 v0, 0x1d

    #@22
    if-lt p1, v0, :cond_2c

    #@24
    .line 158
    new-instance p1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl29;

    #@26
    invoke-direct {p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl29;-><init>()V

    #@29
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mImpl:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

    #@2b
    goto :goto_33

    #@2c
    .line 160
    :cond_2c
    new-instance p1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;

    #@2e
    invoke-direct {p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;-><init>()V

    #@31
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mImpl:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

    #@33
    :goto_33
    return-void
.end method

.method private static accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    #@0
    .line 831
    :try_start_0
    invoke-static {p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getTextViewField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-object p2

    #@7
    .line 836
    :cond_7
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object p0
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_c

    #@b
    return-object p0

    #@c
    :catch_c
    move-exception p0

    #@d
    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    const-string v1, "Failed to access TextView#"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object p1

    #@18
    const-string v0, " member"

    #@1a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object p1

    #@1e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object p1

    #@22
    const-string v0, "ACTVAutoSizeHelper"

    #@24
    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    return-object p2
.end method

.method private cleanupAutoSizePresetSizes([I)[I
    .registers 8

    #@0
    .line 512
    array-length v0, p1

    #@1
    if-nez v0, :cond_4

    #@3
    return-object p1

    #@4
    .line 516
    :cond_4
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    #@7
    .line 518
    new-instance v1, Ljava/util/ArrayList;

    #@9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@c
    const/4 v2, 0x0

    #@d
    move v3, v2

    #@e
    :goto_e
    if-ge v3, v0, :cond_28

    #@10
    .line 520
    aget v4, p1, v3

    #@12
    if-lez v4, :cond_25

    #@14
    .line 523
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v5

    #@18
    invoke-static {v1, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@1b
    move-result v5

    #@1c
    if-gez v5, :cond_25

    #@1e
    .line 524
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v4

    #@22
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    :cond_25
    add-int/lit8 v3, v3, 0x1

    #@27
    goto :goto_e

    #@28
    .line 528
    :cond_28
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@2b
    move-result v3

    #@2c
    if-ne v0, v3, :cond_2f

    #@2e
    return-object p1

    #@2f
    .line 531
    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@32
    move-result p1

    #@33
    .line 532
    new-array v0, p1, [I

    #@35
    :goto_35
    if-ge v2, p1, :cond_46

    #@37
    .line 534
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v3

    #@3b
    check-cast v3, Ljava/lang/Integer;

    #@3d
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    #@40
    move-result v3

    #@41
    aput v3, v0, v2

    #@43
    add-int/lit8 v2, v2, 0x1

    #@45
    goto :goto_35

    #@46
    :cond_46
    return-object v0
.end method

.method private clearAutoSizeConfiguration()V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 642
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    #@3
    const/high16 v1, -0x40800000    # -1.0f

    #@5
    .line 643
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    #@7
    .line 644
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    #@9
    .line 645
    iput v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    #@b
    new-array v1, v0, [I

    #@d
    .line 646
    iput-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    #@f
    .line 647
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    #@11
    return-void
.end method

.method private createStaticLayoutForMeasuringPre16(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;I)Landroid/text/StaticLayout;
    .registers 13

    #@0
    .line 789
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@2
    const/high16 v1, 0x3f800000    # 1.0f

    #@4
    .line 790
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7
    move-result-object v1

    #@8
    const-string v2, "mSpacingMult"

    #@a
    .line 789
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Float;

    #@10
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@13
    move-result v6

    #@14
    .line 791
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@16
    const/4 v1, 0x0

    #@17
    .line 792
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1a
    move-result-object v1

    #@1b
    const-string v2, "mSpacingAdd"

    #@1d
    .line 791
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Ljava/lang/Float;

    #@23
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@26
    move-result v7

    #@27
    .line 793
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@29
    const/4 v1, 0x1

    #@2a
    .line 794
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2d
    move-result-object v1

    #@2e
    const-string v2, "mIncludePad"

    #@30
    .line 793
    invoke-static {v0, v2, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->accessAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Ljava/lang/Boolean;

    #@36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@39
    move-result v8

    #@3a
    .line 796
    new-instance v0, Landroid/text/StaticLayout;

    #@3c
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    #@3e
    move-object v1, v0

    #@3f
    move-object v2, p1

    #@40
    move v4, p3

    #@41
    move-object v5, p2

    #@42
    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    #@45
    return-object v0
.end method

.method private findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I
    .registers 7

    #@0
    .line 699
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    #@2
    array-length v0, v0

    #@3
    if-eqz v0, :cond_27

    #@5
    const/4 v1, 0x1

    #@6
    sub-int/2addr v0, v1

    #@7
    const/4 v2, 0x0

    #@8
    :goto_8
    if-gt v1, v0, :cond_22

    #@a
    add-int v2, v1, v0

    #@c
    .line 709
    div-int/lit8 v2, v2, 0x2

    #@e
    .line 710
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    #@10
    aget v3, v3, v2

    #@12
    invoke-direct {p0, v3, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1e

    #@18
    add-int/lit8 v2, v2, 0x1

    #@1a
    move v4, v2

    #@1b
    move v2, v1

    #@1c
    move v1, v4

    #@1d
    goto :goto_8

    #@1e
    :cond_1e
    add-int/lit8 v2, v2, -0x1

    #@20
    move v0, v2

    #@21
    goto :goto_8

    #@22
    .line 719
    :cond_22
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    #@24
    aget p1, p1, v2

    #@26
    return p1

    #@27
    .line 701
    :cond_27
    new-instance p1, Ljava/lang/IllegalStateException;

    #@29
    const-string v0, "No available text sizes to choose from."

    #@2b
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2e
    throw p1
.end method

.method private static getTextViewField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4

    #@0
    .line 866
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/reflect/Field;

    #@8
    if-nez v0, :cond_1b

    #@a
    .line 868
    const-class v0, Landroid/widget/TextView;

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@f
    move-result-object v0

    #@10
    if-eqz v0, :cond_1b

    #@12
    const/4 v1, 0x1

    #@13
    .line 870
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@16
    .line 871
    sget-object v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewFieldByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    #@18
    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_1b} :catch_1c

    #@1b
    :cond_1b
    return-object v0

    #@1c
    :catch_1c
    move-exception v0

    #@1d
    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    const-string v2, "Failed to access TextView#"

    #@21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object p0

    #@28
    const-string v1, " member"

    #@2a
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object p0

    #@2e
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object p0

    #@32
    const-string v1, "ACTVAutoSizeHelper"

    #@34
    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    const/4 p0, 0x0

    #@38
    return-object p0
.end method

.method private static getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 4

    #@0
    .line 846
    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/reflect/Method;

    #@8
    if-nez v0, :cond_1e

    #@a
    .line 848
    const-class v0, Landroid/widget/TextView;

    #@c
    const/4 v1, 0x0

    #@d
    new-array v1, v1, [Ljava/lang/Class;

    #@f
    invoke-virtual {v0, p0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_1e

    #@15
    const/4 v1, 0x1

    #@16
    .line 850
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@19
    .line 852
    sget-object v1, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->sTextViewMethodByNameCache:Ljava/util/concurrent/ConcurrentHashMap;

    #@1b
    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    #@1e
    :cond_1e
    return-object v0

    #@1f
    :catch_1f
    move-exception v0

    #@20
    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    const-string v2, "Failed to retrieve TextView#"

    #@24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p0

    #@2b
    const-string v1, "() method"

    #@2d
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object p0

    #@31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object p0

    #@35
    const-string v1, "ACTVAutoSizeHelper"

    #@37
    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    const/4 p0, 0x0

    #@3b
    return-object p0
.end method

.method static invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    #@0
    const-string v0, "Failed to invoke TextView#"

    #@2
    .line 813
    :try_start_2
    invoke-static {p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x0

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    .line 814
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object p2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_10
    .catchall {:try_start_2 .. :try_end_d} :catchall_e

    #@d
    goto :goto_29

    #@e
    :catchall_e
    move-exception p0

    #@f
    goto :goto_2a

    #@10
    :catch_10
    move-exception p0

    #@11
    :try_start_11
    const-string v1, "ACTVAutoSizeHelper"

    #@13
    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object p1

    #@1c
    const-string v0, "() method"

    #@1e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object p1

    #@22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object p1

    #@26
    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_e

    #@29
    :goto_29
    return-object p2

    #@2a
    .line 822
    :goto_2a
    throw p0
.end method

.method private setRawTextSize(F)V
    .registers 5

    #@0
    .line 661
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    #@9
    move-result v0

    #@a
    cmpl-float v0, p1, v0

    #@c
    if-eqz v0, :cond_52

    #@e
    .line 662
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@10
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    #@17
    .line 666
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@19
    invoke-static {p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Api18Impl;->isInLayout(Landroid/view/View;)Z

    #@1c
    move-result p1

    #@1d
    .line 669
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@1f
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    #@22
    move-result-object v0

    #@23
    if-eqz v0, :cond_52

    #@25
    const/4 v0, 0x0

    #@26
    .line 671
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    #@28
    :try_start_28
    const-string v1, "nullLayouts"

    #@2a
    .line 675
    invoke-static {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getTextViewMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    #@2d
    move-result-object v1

    #@2e
    if-eqz v1, :cond_40

    #@30
    .line 677
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@32
    new-array v0, v0, [Ljava/lang/Object;

    #@34
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_37} :catch_38

    #@37
    goto :goto_40

    #@38
    :catch_38
    move-exception v0

    #@39
    const-string v1, "ACTVAutoSizeHelper"

    #@3b
    const-string v2, "Failed to invoke TextView#nullLayouts() method"

    #@3d
    .line 680
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@40
    :cond_40
    :goto_40
    if-nez p1, :cond_48

    #@42
    .line 684
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@44
    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    #@47
    goto :goto_4d

    #@48
    .line 686
    :cond_48
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@4a
    invoke-virtual {p1}, Landroid/widget/TextView;->forceLayout()V

    #@4d
    .line 689
    :goto_4d
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@4f
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    #@52
    :cond_52
    return-void
.end method

.method private setupAutoSizeText()Z
    .registers 8

    #@0
    .line 575
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-eqz v0, :cond_41

    #@7
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    #@9
    const/4 v2, 0x1

    #@a
    if-ne v0, v2, :cond_41

    #@c
    .line 579
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    #@e
    if-eqz v0, :cond_15

    #@10
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    #@12
    array-length v0, v0

    #@13
    if-nez v0, :cond_3e

    #@15
    .line 581
    :cond_15
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    #@17
    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    #@19
    sub-float/2addr v0, v3

    #@1a
    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    #@1c
    div-float/2addr v0, v3

    #@1d
    float-to-double v3, v0

    #@1e
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    #@21
    move-result-wide v3

    #@22
    double-to-int v0, v3

    #@23
    add-int/2addr v0, v2

    #@24
    .line 583
    new-array v3, v0, [I

    #@26
    :goto_26
    if-ge v1, v0, :cond_38

    #@28
    .line 585
    iget v4, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    #@2a
    int-to-float v5, v1

    #@2b
    iget v6, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    #@2d
    mul-float/2addr v5, v6

    #@2e
    add-float/2addr v4, v5

    #@2f
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@32
    move-result v4

    #@33
    aput v4, v3, v1

    #@35
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_26

    #@38
    .line 588
    :cond_38
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    #@3b
    move-result-object v0

    #@3c
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    #@3e
    .line 590
    :cond_3e
    iput-boolean v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    #@40
    goto :goto_43

    #@41
    .line 592
    :cond_41
    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    #@43
    .line 595
    :goto_43
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    #@45
    return v0
.end method

.method private setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V
    .registers 6

    #@0
    .line 486
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    #@3
    move-result v0

    #@4
    .line 487
    new-array v1, v0, [I

    #@6
    if-lez v0, :cond_1e

    #@8
    const/4 v2, 0x0

    #@9
    :goto_9
    if-ge v2, v0, :cond_15

    #@b
    const/4 v3, -0x1

    #@c
    .line 491
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@f
    move-result v3

    #@10
    aput v3, v1, v2

    #@12
    add-int/lit8 v2, v2, 0x1

    #@14
    goto :goto_9

    #@15
    .line 493
    :cond_15
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    #@18
    move-result-object p1

    #@19
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    #@1b
    .line 494
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    #@1e
    :cond_1e
    return-void
.end method

.method private setupAutoSizeUniformPresetSizesConfiguration()Z
    .registers 6

    #@0
    .line 499
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    #@2
    array-length v1, v0

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x1

    #@5
    if-lez v1, :cond_9

    #@7
    move v4, v3

    #@8
    goto :goto_a

    #@9
    :cond_9
    move v4, v2

    #@a
    .line 500
    :goto_a
    iput-boolean v4, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    #@c
    if-eqz v4, :cond_1f

    #@e
    .line 502
    iput v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    #@10
    .line 503
    aget v2, v0, v2

    #@12
    int-to-float v2, v2

    #@13
    iput v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    #@15
    sub-int/2addr v1, v3

    #@16
    .line 504
    aget v0, v0, v1

    #@18
    int-to-float v0, v0

    #@19
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    #@1b
    const/high16 v0, -0x40800000    # -1.0f

    #@1d
    .line 505
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    #@1f
    :cond_1f
    return v4
.end method

.method private suggestedSizeFitsInSpace(ILandroid/graphics/RectF;)Z
    .registers 8

    #@0
    .line 753
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    .line 754
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    #@b
    move-result-object v1

    #@c
    if-eqz v1, :cond_17

    #@e
    .line 756
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@10
    invoke-interface {v1, v0, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    #@13
    move-result-object v1

    #@14
    if-eqz v1, :cond_17

    #@16
    move-object v0, v1

    #@17
    .line 762
    :cond_17
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@19
    invoke-static {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Api16Impl;->getMaxLines(Landroid/widget/TextView;)I

    #@1c
    move-result v1

    #@1d
    .line 763
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->initTempTextPaint(I)V

    #@20
    .line 766
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@22
    const-string v2, "getLayoutAlignment"

    #@24
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@26
    invoke-static {p1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object p1

    #@2a
    check-cast p1, Landroid/text/Layout$Alignment;

    #@2c
    .line 768
    iget v2, p2, Landroid/graphics/RectF;->right:F

    #@2e
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    #@31
    move-result v2

    #@32
    invoke-virtual {p0, v0, p1, v2, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->createLayout(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;

    #@35
    move-result-object p1

    #@36
    const/4 v2, -0x1

    #@37
    const/4 v3, 0x0

    #@38
    const/4 v4, 0x1

    #@39
    if-eq v1, v2, :cond_51

    #@3b
    .line 771
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    #@3e
    move-result v2

    #@3f
    if-gt v2, v1, :cond_50

    #@41
    .line 772
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    #@44
    move-result v1

    #@45
    sub-int/2addr v1, v4

    #@46
    invoke-virtual {p1, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    #@49
    move-result v1

    #@4a
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@4d
    move-result v0

    #@4e
    if-eq v1, v0, :cond_51

    #@50
    :cond_50
    return v3

    #@51
    .line 777
    :cond_51
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getHeight()I

    #@54
    move-result p1

    #@55
    int-to-float p1, p1

    #@56
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    #@58
    cmpl-float p1, p1, p2

    #@5a
    if-lez p1, :cond_5d

    #@5c
    return v3

    #@5d
    :cond_5d
    return v4
.end method

.method private supportsAutoSizeText()Z
    .registers 2

    #@0
    .line 899
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@2
    instance-of v0, v0, Landroidx/appcompat/widget/AppCompatEditText;

    #@4
    xor-int/lit8 v0, v0, 0x1

    #@6
    return v0
.end method

.method private validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    cmpg-float v1, p1, v0

    #@3
    const-string v2, "px) is less or equal to (0px)"

    #@5
    if-lez v1, :cond_5a

    #@7
    cmpg-float v1, p2, p1

    #@9
    if-lez v1, :cond_35

    #@b
    cmpg-float v0, p3, v0

    #@d
    if-lez v0, :cond_1c

    #@f
    const/4 v0, 0x1

    #@10
    .line 567
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    #@12
    .line 568
    iput p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    #@14
    .line 569
    iput p2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    #@16
    .line 570
    iput p3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    #@18
    const/4 p1, 0x0

    #@19
    .line 571
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    #@1b
    return-void

    #@1c
    .line 562
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance p2, Ljava/lang/StringBuilder;

    #@20
    const-string v0, "The auto-size step granularity ("

    #@22
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@25
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@28
    move-result-object p2

    #@29
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object p2

    #@2d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object p2

    #@31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw p1

    #@35
    .line 556
    :cond_35
    new-instance p3, Ljava/lang/IllegalArgumentException;

    #@37
    new-instance v0, Ljava/lang/StringBuilder;

    #@39
    const-string v1, "Maximum auto-size text size ("

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3e
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@41
    move-result-object p2

    #@42
    const-string v0, "px) is less or equal to minimum auto-size text size ("

    #@44
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object p2

    #@48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@4b
    move-result-object p1

    #@4c
    const-string p2, "px)"

    #@4e
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object p1

    #@52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object p1

    #@56
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@59
    throw p3

    #@5a
    .line 551
    :cond_5a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@5c
    new-instance p3, Ljava/lang/StringBuilder;

    #@5e
    const-string v0, "Minimum auto-size text size ("

    #@60
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@63
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@66
    move-result-object p1

    #@67
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object p1

    #@6b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object p1

    #@6f
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@72
    throw p2
.end method


# virtual methods
.method autoSizeText()V
    .registers 4

    #@0
    .line 605
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_7

    #@6
    return-void

    #@7
    .line 609
    :cond_7
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    #@9
    if-eqz v0, :cond_7b

    #@b
    .line 610
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@d
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    #@10
    move-result v0

    #@11
    if-lez v0, :cond_7a

    #@13
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@15
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@18
    move-result v0

    #@19
    if-gtz v0, :cond_1c

    #@1b
    goto :goto_7a

    #@1c
    .line 614
    :cond_1c
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mImpl:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

    #@1e
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@20
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;->isHorizontallyScrollable(Landroid/widget/TextView;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_29

    #@26
    const/high16 v0, 0x100000

    #@28
    goto :goto_3d

    #@29
    .line 618
    :cond_29
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@2b
    .line 617
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    #@2e
    move-result v0

    #@2f
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@31
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    #@34
    move-result v1

    #@35
    sub-int/2addr v0, v1

    #@36
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@38
    .line 618
    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    #@3b
    move-result v1

    #@3c
    sub-int/2addr v0, v1

    #@3d
    .line 619
    :goto_3d
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@3f
    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    #@42
    move-result v1

    #@43
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@45
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    #@48
    move-result v2

    #@49
    sub-int/2addr v1, v2

    #@4a
    iget-object v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@4c
    .line 620
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    #@4f
    move-result v2

    #@50
    sub-int/2addr v1, v2

    #@51
    if-lez v0, :cond_7a

    #@53
    if-gtz v1, :cond_56

    #@55
    goto :goto_7a

    #@56
    .line 626
    :cond_56
    sget-object v2, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->TEMP_RECTF:Landroid/graphics/RectF;

    #@58
    monitor-enter v2

    #@59
    .line 627
    :try_start_59
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    #@5c
    int-to-float v0, v0

    #@5d
    .line 628
    iput v0, v2, Landroid/graphics/RectF;->right:F

    #@5f
    int-to-float v0, v1

    #@60
    .line 629
    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    #@62
    .line 630
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->findLargestTextSizeWhichFits(Landroid/graphics/RectF;)I

    #@65
    move-result v0

    #@66
    int-to-float v0, v0

    #@67
    .line 631
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@69
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    #@6c
    move-result v1

    #@6d
    cmpl-float v1, v0, v1

    #@6f
    if-eqz v1, :cond_75

    #@71
    const/4 v1, 0x0

    #@72
    .line 632
    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    #@75
    .line 634
    :cond_75
    monitor-exit v2

    #@76
    goto :goto_7b

    #@77
    :catchall_77
    move-exception v0

    #@78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_59 .. :try_end_79} :catchall_77

    #@79
    throw v0

    #@7a
    :cond_7a
    :goto_7a
    return-void

    #@7b
    :cond_7b
    :goto_7b
    const/4 v0, 0x1

    #@7c
    .line 638
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mNeedsAutoSizeText:Z

    #@7e
    return-void
.end method

.method createLayout(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;II)Landroid/text/StaticLayout;
    .registers 12

    #@0
    .line 742
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@2
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    #@4
    iget-object v6, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mImpl:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;

    #@6
    move-object v0, p1

    #@7
    move-object v1, p2

    #@8
    move v2, p3

    #@9
    move v3, p4

    #@a
    invoke-static/range {v0 .. v6}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Api23Impl;->createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;IILandroid/widget/TextView;Landroid/text/TextPaint;Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;)Landroid/text/StaticLayout;

    #@d
    move-result-object p1

    #@e
    return-object p1
.end method

.method getAutoSizeMaxTextSize()I
    .registers 2

    #@0
    .line 469
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMaxTextSizeInPx:F

    #@2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getAutoSizeMinTextSize()I
    .registers 2

    #@0
    .line 453
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeMinTextSizeInPx:F

    #@2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getAutoSizeStepGranularity()I
    .registers 2

    #@0
    .line 437
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeStepGranularityInPx:F

    #@2
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .registers 2

    #@0
    .line 482
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    #@2
    return-object v0
.end method

.method getAutoSizeTextType()I
    .registers 2

    #@0
    .line 423
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    #@2
    return v0
.end method

.method initTempTextPaint(I)V
    .registers 4

    #@0
    .line 724
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    #@2
    if-nez v0, :cond_c

    #@4
    .line 725
    new-instance v0, Landroid/text/TextPaint;

    #@6
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    #@9
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    #@b
    goto :goto_f

    #@c
    .line 727
    :cond_c
    invoke-virtual {v0}, Landroid/text/TextPaint;->reset()V

    #@f
    .line 729
    :goto_f
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    #@11
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@13
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@1a
    .line 730
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTempTextPaint:Landroid/text/TextPaint;

    #@1c
    int-to-float p1, p1

    #@1d
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    #@20
    return-void
.end method

.method isAutoSizeEnabled()Z
    .registers 2

    #@0
    .line 890
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 v0, 0x1

    #@b
    goto :goto_d

    #@c
    :cond_c
    const/4 v0, 0x0

    #@d
    :goto_d
    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 13

    #@0
    .line 171
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    #@2
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@8
    move-result-object v0

    #@9
    .line 173
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mTextView:Landroid/widget/TextView;

    #@b
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@e
    move-result-object v4

    #@f
    sget-object v5, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    #@11
    const/4 v9, 0x0

    #@12
    move-object v6, p1

    #@13
    move-object v7, v0

    #@14
    move v8, p2

    #@15
    invoke-static/range {v3 .. v9}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    #@18
    .line 176
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    #@1a
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@1d
    move-result p1

    #@1e
    if-eqz p1, :cond_28

    #@20
    .line 177
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    #@22
    invoke-virtual {v0, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@25
    move-result p1

    #@26
    iput p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    #@28
    .line 180
    :cond_28
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    #@2a
    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@2d
    move-result p1

    #@2e
    const/high16 p2, -0x40800000    # -1.0f

    #@30
    if-eqz p1, :cond_39

    #@32
    .line 181
    sget p1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    #@34
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@37
    move-result p1

    #@38
    goto :goto_3a

    #@39
    :cond_39
    move p1, p2

    #@3a
    .line 185
    :goto_3a
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    #@3c
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_49

    #@42
    .line 186
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    #@44
    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@47
    move-result v1

    #@48
    goto :goto_4a

    #@49
    :cond_49
    move v1, p2

    #@4a
    .line 190
    :goto_4a
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    #@4c
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@4f
    move-result v3

    #@50
    if-eqz v3, :cond_59

    #@52
    .line 191
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    #@54
    invoke-virtual {v0, v3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    #@57
    move-result v3

    #@58
    goto :goto_5a

    #@59
    :cond_59
    move v3, p2

    #@5a
    .line 195
    :goto_5a
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    #@5c
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_78

    #@62
    .line 196
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    #@64
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@67
    move-result v4

    #@68
    if-lez v4, :cond_78

    #@6a
    .line 199
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    #@6d
    move-result-object v5

    #@6e
    .line 200
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    #@71
    move-result-object v4

    #@72
    .line 201
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizes(Landroid/content/res/TypedArray;)V

    #@75
    .line 202
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    #@78
    .line 205
    :cond_78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@7b
    .line 207
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    #@7e
    move-result v0

    #@7f
    if-eqz v0, :cond_b6

    #@81
    .line 208
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    #@83
    const/4 v2, 0x1

    #@84
    if-ne v0, v2, :cond_b8

    #@86
    .line 212
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    #@88
    if-nez v0, :cond_b2

    #@8a
    .line 213
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    #@8c
    .line 214
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8f
    move-result-object v0

    #@90
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@93
    move-result-object v0

    #@94
    cmpl-float v2, v1, p2

    #@96
    const/4 v4, 0x2

    #@97
    if-nez v2, :cond_9f

    #@99
    const/high16 v1, 0x41400000    # 12.0f

    #@9b
    .line 217
    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@9e
    move-result v1

    #@9f
    :cond_9f
    cmpl-float v2, v3, p2

    #@a1
    if-nez v2, :cond_a9

    #@a3
    const/high16 v2, 0x42e00000    # 112.0f

    #@a5
    .line 224
    invoke-static {v4, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@a8
    move-result v3

    #@a9
    :cond_a9
    cmpl-float p2, p1, p2

    #@ab
    if-nez p2, :cond_af

    #@ad
    const/high16 p1, 0x3f800000    # 1.0f

    #@af
    .line 235
    :cond_af
    invoke-direct {p0, v1, v3, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    #@b2
    .line 240
    :cond_b2
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    #@b5
    goto :goto_b8

    #@b6
    .line 243
    :cond_b6
    iput v2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextType:I

    #@b8
    :cond_b8
    :goto_b8
    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .line 330
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_2b

    #@6
    .line 331
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@f
    move-result-object v0

    #@10
    int-to-float p1, p1

    #@11
    .line 332
    invoke-static {p4, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@14
    move-result p1

    #@15
    int-to-float p2, p2

    #@16
    .line 334
    invoke-static {p4, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@19
    move-result p2

    #@1a
    int-to-float p3, p3

    #@1b
    .line 336
    invoke-static {p4, p3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@1e
    move-result p3

    #@1f
    .line 339
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    #@22
    .line 342
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    #@25
    move-result p1

    #@26
    if-eqz p1, :cond_2b

    #@28
    .line 343
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    #@2b
    :cond_2b
    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .line 373
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_60

    #@6
    .line 374
    array-length v0, p1

    #@7
    const/4 v1, 0x0

    #@8
    if-lez v0, :cond_55

    #@a
    .line 376
    new-array v2, v0, [I

    #@c
    if-nez p2, :cond_13

    #@e
    .line 379
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    #@11
    move-result-object v2

    #@12
    goto :goto_2f

    #@13
    .line 381
    :cond_13
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    #@15
    .line 382
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1c
    move-result-object v3

    #@1d
    :goto_1d
    if-ge v1, v0, :cond_2f

    #@1f
    .line 385
    aget v4, p1, v1

    #@21
    int-to-float v4, v4

    #@22
    invoke-static {p2, v4, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@25
    move-result v4

    #@26
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    #@29
    move-result v4

    #@2a
    aput v4, v2, v1

    #@2c
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_1d

    #@2f
    .line 390
    :cond_2f
    :goto_2f
    invoke-direct {p0, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->cleanupAutoSizePresetSizes([I)[I

    #@32
    move-result-object p2

    #@33
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mAutoSizeTextSizesInPx:[I

    #@35
    .line 391
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeUniformPresetSizesConfiguration()Z

    #@38
    move-result p2

    #@39
    if-eqz p2, :cond_3c

    #@3b
    goto :goto_57

    #@3c
    .line 392
    :cond_3c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@3e
    new-instance v0, Ljava/lang/StringBuilder;

    #@40
    const-string v1, "None of the preset sizes is valid: "

    #@42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@45
    .line 393
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@48
    move-result-object p1

    #@49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object p1

    #@4d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object p1

    #@51
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@54
    throw p2

    #@55
    .line 396
    :cond_55
    iput-boolean v1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mHasPresetAutoSizeValues:Z

    #@57
    .line 399
    :goto_57
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    #@5a
    move-result p1

    #@5b
    if-eqz p1, :cond_60

    #@5d
    .line 400
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    #@60
    :cond_60
    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .registers 5

    #@0
    .line 263
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->supportsAutoSizeText()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_49

    #@6
    if-eqz p1, :cond_46

    #@8
    const/4 v0, 0x1

    #@9
    if-ne p1, v0, :cond_31

    #@b
    .line 269
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    #@d
    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10
    move-result-object p1

    #@11
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@14
    move-result-object p1

    #@15
    const/high16 v0, 0x41400000    # 12.0f

    #@17
    const/4 v1, 0x2

    #@18
    .line 271
    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@1b
    move-result v0

    #@1c
    const/high16 v2, 0x42e00000    # 112.0f

    #@1e
    .line 275
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@21
    move-result p1

    #@22
    const/high16 v1, 0x3f800000    # 1.0f

    #@24
    .line 280
    invoke-direct {p0, v0, p1, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->validateAndSetAutoSizeTextTypeUniformConfiguration(FFF)V

    #@27
    .line 284
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setupAutoSizeText()Z

    #@2a
    move-result p1

    #@2b
    if-eqz p1, :cond_49

    #@2d
    .line 285
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    #@30
    goto :goto_49

    #@31
    .line 289
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@33
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    const-string v2, "Unknown auto-size text type: "

    #@37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p1

    #@3e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object p1

    #@42
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@45
    throw v0

    #@46
    .line 266
    :cond_46
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->clearAutoSizeConfiguration()V

    #@49
    :cond_49
    :goto_49
    return-void
.end method

.method setTextSizeInternal(IF)V
    .registers 4

    #@0
    .line 653
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->mContext:Landroid/content/Context;

    #@2
    if-nez v0, :cond_9

    #@4
    .line 654
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@7
    move-result-object v0

    #@8
    goto :goto_d

    #@9
    .line 655
    :cond_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c
    move-result-object v0

    #@d
    .line 657
    :goto_d
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@10
    move-result-object v0

    #@11
    invoke-static {p1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    #@14
    move-result p1

    #@15
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setRawTextSize(F)V

    #@18
    return-void
.end method
