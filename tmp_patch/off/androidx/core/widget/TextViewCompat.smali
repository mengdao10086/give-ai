.class public final Landroidx/core/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/TextViewCompat$Api24Impl;,
        Landroidx/core/widget/TextViewCompat$Api23Impl;,
        Landroidx/core/widget/TextViewCompat$Api28Impl;,
        Landroidx/core/widget/TextViewCompat$Api26Impl;,
        Landroidx/core/widget/TextViewCompat$Api16Impl;,
        Landroidx/core/widget/TextViewCompat$Api17Impl;,
        Landroidx/core/widget/TextViewCompat$OreoCallback;,
        Landroidx/core/widget/TextViewCompat$AutoSizeTextType;
    }
.end annotation


# static fields
.field public static final AUTO_SIZE_TEXT_TYPE_NONE:I = 0x0

.field public static final AUTO_SIZE_TEXT_TYPE_UNIFORM:I = 0x1

.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompat"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .registers 3

    #@0
    .line 461
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1b

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 462
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api26Impl;->getAutoSizeMaxTextSize(Landroid/widget/TextView;)I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 464
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 465
    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    #@11
    invoke-interface {p0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeMaxTextSize()I

    #@14
    move-result p0

    #@15
    return p0

    #@16
    :cond_16
    const/4 p0, -0x1

    #@17
    return p0
.end method

.method public static getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .registers 3

    #@0
    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1b

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 445
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api26Impl;->getAutoSizeMinTextSize(Landroid/widget/TextView;)I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 447
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 448
    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    #@11
    invoke-interface {p0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeMinTextSize()I

    #@14
    move-result p0

    #@15
    return p0

    #@16
    :cond_16
    const/4 p0, -0x1

    #@17
    return p0
.end method

.method public static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .registers 3

    #@0
    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1b

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 428
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api26Impl;->getAutoSizeStepGranularity(Landroid/widget/TextView;)I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 430
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 431
    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    #@11
    invoke-interface {p0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeStepGranularity()I

    #@14
    move-result p0

    #@15
    return p0

    #@16
    :cond_16
    const/4 p0, -0x1

    #@17
    return p0
.end method

.method public static getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .registers 3

    #@0
    .line 478
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1b

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 479
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api26Impl;->getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 481
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 482
    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    #@11
    invoke-interface {p0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeTextAvailableSizes()[I

    #@14
    move-result-object p0

    #@15
    return-object p0

    #@16
    :cond_16
    const/4 p0, 0x0

    #@17
    new-array p0, p0, [I

    #@19
    return-object p0
.end method

.method public static getAutoSizeTextType(Landroid/widget/TextView;)I
    .registers 3

    #@0
    .line 411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1b

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 412
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api26Impl;->getAutoSizeTextType(Landroid/widget/TextView;)I

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 414
    :cond_b
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    #@d
    if-eqz v0, :cond_16

    #@f
    .line 415
    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    #@11
    invoke-interface {p0}, Landroidx/core/widget/AutoSizeableTextView;->getAutoSizeTextType()I

    #@14
    move-result p0

    #@15
    return p0

    #@16
    :cond_16
    const/4 p0, 0x0

    #@17
    return p0
.end method

.method public static getCompoundDrawableTintList(Landroid/widget/TextView;)Landroid/content/res/ColorStateList;
    .registers 1

    #@0
    .line 1036
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1038
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api23Impl;->getCompoundDrawableTintList(Landroid/widget/TextView;)Landroid/content/res/ColorStateList;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method

.method public static getCompoundDrawableTintMode(Landroid/widget/TextView;)Landroid/graphics/PorterDuff$Mode;
    .registers 1

    #@0
    .line 1071
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1073
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api23Impl;->getCompoundDrawableTintMode(Landroid/widget/TextView;)Landroid/graphics/PorterDuff$Mode;

    #@6
    move-result-object p0

    #@7
    return-object p0
.end method

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 1

    #@0
    .line 301
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api17Impl;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method public static getFirstBaselineToTopHeight(Landroid/widget/TextView;)I
    .registers 2

    #@0
    .line 794
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    #@b
    move-result-object p0

    #@c
    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@e
    sub-int/2addr v0, p0

    #@f
    return v0
.end method

.method public static getLastBaselineToBottomHeight(Landroid/widget/TextView;)I
    .registers 2

    #@0
    .line 804
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@7
    move-result-object p0

    #@8
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    #@b
    move-result-object p0

    #@c
    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@e
    add-int/2addr v0, p0

    #@f
    return v0
.end method

.method public static getMaxLines(Landroid/widget/TextView;)I
    .registers 1

    #@0
    .line 232
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api16Impl;->getMaxLines(Landroid/widget/TextView;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method public static getMinLines(Landroid/widget/TextView;)I
    .registers 1

    #@0
    .line 258
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api16Impl;->getMinLines(Landroid/widget/TextView;)I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method private static getTextDirection(Landroid/text/TextDirectionHeuristic;)I
    .registers 3

    #@0
    .line 990
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    #@2
    const/4 v1, 0x1

    #@3
    if-ne p0, v0, :cond_6

    #@5
    return v1

    #@6
    .line 992
    :cond_6
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@8
    if-ne p0, v0, :cond_b

    #@a
    return v1

    #@b
    .line 994
    :cond_b
    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    #@d
    if-ne p0, v0, :cond_11

    #@f
    const/4 p0, 0x2

    #@10
    return p0

    #@11
    .line 996
    :cond_11
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@13
    if-ne p0, v0, :cond_17

    #@15
    const/4 p0, 0x3

    #@16
    return p0

    #@17
    .line 998
    :cond_17
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@19
    if-ne p0, v0, :cond_1d

    #@1b
    const/4 p0, 0x4

    #@1c
    return p0

    #@1d
    .line 1000
    :cond_1d
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    #@1f
    if-ne p0, v0, :cond_23

    #@21
    const/4 p0, 0x5

    #@22
    return p0

    #@23
    .line 1002
    :cond_23
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@25
    if-ne p0, v0, :cond_29

    #@27
    const/4 p0, 0x6

    #@28
    return p0

    #@29
    .line 1004
    :cond_29
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    #@2b
    if-ne p0, v0, :cond_2f

    #@2d
    const/4 p0, 0x7

    #@2e
    return p0

    #@2f
    :cond_2f
    return v1
.end method

.method private static getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;
    .registers 5

    #@0
    .line 933
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    #@3
    move-result-object v0

    #@4
    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    #@6
    if-eqz v0, :cond_b

    #@8
    .line 935
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@a
    return-object p0

    #@b
    .line 938
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@d
    const/16 v1, 0x1c

    #@f
    const/4 v2, 0x0

    #@10
    const/4 v3, 0x1

    #@11
    if-lt v0, v1, :cond_3e

    #@13
    .line 939
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    #@16
    move-result v0

    #@17
    and-int/lit8 v0, v0, 0xf

    #@19
    const/4 v1, 0x3

    #@1a
    if-ne v0, v1, :cond_3e

    #@1c
    .line 945
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api17Impl;->getTextLocale(Landroid/widget/TextView;)Ljava/util/Locale;

    #@1f
    move-result-object p0

    #@20
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api24Impl;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    #@23
    move-result-object p0

    #@24
    .line 946
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api28Impl;->getDigitStrings(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;

    #@27
    move-result-object p0

    #@28
    aget-object p0, p0, v2

    #@2a
    .line 949
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    #@2d
    move-result p0

    #@2e
    .line 950
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    #@31
    move-result p0

    #@32
    if-eq p0, v3, :cond_3b

    #@34
    const/4 v0, 0x2

    #@35
    if-ne p0, v0, :cond_38

    #@37
    goto :goto_3b

    #@38
    .line 955
    :cond_38
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@3a
    return-object p0

    #@3b
    .line 953
    :cond_3b
    :goto_3b
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@3d
    return-object p0

    #@3e
    .line 962
    :cond_3e
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    #@41
    move-result v0

    #@42
    if-ne v0, v3, :cond_45

    #@44
    move v2, v3

    #@45
    .line 965
    :cond_45
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api17Impl;->getTextDirection(Landroid/view/View;)I

    #@48
    move-result p0

    #@49
    packed-switch p0, :pswitch_data_66

    #@4c
    if-eqz v2, :cond_63

    #@4e
    .line 968
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    #@50
    goto :goto_65

    #@51
    .line 981
    :pswitch_51
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    #@53
    return-object p0

    #@54
    .line 979
    :pswitch_54
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@56
    return-object p0

    #@57
    .line 977
    :pswitch_57
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    #@59
    return-object p0

    #@5a
    .line 975
    :pswitch_5a
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@5c
    return-object p0

    #@5d
    .line 973
    :pswitch_5d
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@5f
    return-object p0

    #@60
    .line 971
    :pswitch_60
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    #@62
    return-object p0

    #@63
    .line 969
    :cond_63
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@65
    :goto_65
    return-object p0

    #@66
    :pswitch_data_66
    .packed-switch 0x2
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
    .end packed-switch
.end method

.method public static getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;
    .registers 4

    #@0
    .line 841
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_10

    #@6
    .line 842
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$Params;

    #@8
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api28Impl;->getTextMetricsParams(Landroid/widget/TextView;)Landroid/text/PrecomputedText$Params;

    #@b
    move-result-object p0

    #@c
    invoke-direct {v0, p0}, Landroidx/core/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/PrecomputedText$Params;)V

    #@f
    return-object v0

    #@10
    .line 844
    :cond_10
    new-instance v0, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    #@12
    new-instance v1, Landroid/text/TextPaint;

    #@14
    .line 845
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    #@1b
    invoke-direct {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    #@1e
    .line 847
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api23Impl;->getBreakStrategy(Landroid/widget/TextView;)I

    #@21
    move-result v1

    #@22
    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setBreakStrategy(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    #@25
    .line 848
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api23Impl;->getHyphenationFrequency(Landroid/widget/TextView;)I

    #@28
    move-result v1

    #@29
    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setHyphenationFrequency(I)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    #@2c
    .line 851
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getTextDirectionHeuristic(Landroid/widget/TextView;)Landroid/text/TextDirectionHeuristic;

    #@2f
    move-result-object p0

    #@30
    invoke-virtual {v0, p0}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroidx/core/text/PrecomputedTextCompat$Params$Builder;

    #@33
    .line 853
    invoke-virtual {v0}, Landroidx/core/text/PrecomputedTextCompat$Params$Builder;->build()Landroidx/core/text/PrecomputedTextCompat$Params;

    #@36
    move-result-object p0

    #@37
    return-object p0
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 119
    :try_start_1
    const-class v1, Landroid/widget/TextView;

    #@3
    invoke-virtual {v1, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x1

    #@8
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_b} :catch_c

    #@b
    goto :goto_26

    #@c
    .line 122
    :catch_c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, "Could not retrieve "

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p0

    #@17
    const-string v1, " field."

    #@19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p0

    #@1d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p0

    #@21
    const-string v1, "TextViewCompat"

    #@23
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    :goto_26
    return-object v0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .registers 3

    #@0
    .line 129
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    #@3
    move-result p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_5

    #@4
    return p0

    #@5
    .line 131
    :catch_5
    new-instance p1, Ljava/lang/StringBuilder;

    #@7
    const-string v0, "Could not retrieve value of "

    #@9
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object p0

    #@14
    const-string p1, " field."

    #@16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object p0

    #@1a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p0

    #@1e
    const-string p1, "TextViewCompat"

    #@20
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    const/4 p0, -0x1

    #@24
    return p0
.end method

.method public static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .line 366
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1b

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 367
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/widget/TextViewCompat$Api26Impl;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    #@9
    goto :goto_13

    #@a
    .line 369
    :cond_a
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    #@c
    if-eqz v0, :cond_13

    #@e
    .line 370
    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    #@10
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    #@13
    :cond_13
    :goto_13
    return-void
.end method

.method public static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1b

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 393
    invoke-static {p0, p1, p2}, Landroidx/core/widget/TextViewCompat$Api26Impl;->setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V

    #@9
    goto :goto_13

    #@a
    .line 394
    :cond_a
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    #@c
    if-eqz v0, :cond_13

    #@e
    .line 395
    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    #@10
    invoke-interface {p0, p1, p2}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    #@13
    :cond_13
    :goto_13
    return-void
.end method

.method public static setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .registers 4

    #@0
    .line 331
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1b

    #@4
    if-lt v0, v1, :cond_a

    #@6
    .line 332
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat$Api26Impl;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    #@9
    goto :goto_13

    #@a
    .line 333
    :cond_a
    instance-of v0, p0, Landroidx/core/widget/AutoSizeableTextView;

    #@c
    if-eqz v0, :cond_13

    #@e
    .line 334
    check-cast p0, Landroidx/core/widget/AutoSizeableTextView;

    #@10
    invoke-interface {p0, p1}, Landroidx/core/widget/AutoSizeableTextView;->setAutoSizeTextTypeWithDefaults(I)V

    #@13
    :cond_13
    :goto_13
    return-void
.end method

.method public static setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .registers 2

    #@0
    .line 1020
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1022
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat$Api23Impl;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    #@6
    return-void
.end method

.method public static setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V
    .registers 2

    #@0
    .line 1054
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1056
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat$Api23Impl;->setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    #@6
    return-void
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    .line 155
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/widget/TextViewCompat$Api17Impl;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 5

    #@0
    .line 215
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/widget/TextViewCompat$Api17Impl;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V

    #@3
    return-void
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    #@0
    .line 182
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/widget/TextViewCompat$Api17Impl;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    #@3
    return-void
.end method

.method public static setCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)V
    .registers 2

    #@0
    .line 512
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    #@3
    move-result-object p1

    #@4
    .line 511
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    #@7
    return-void
.end method

.method public static setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V
    .registers 5

    #@0
    .line 719
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    #@3
    .line 720
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@5
    const/16 v1, 0x1c

    #@7
    if-lt v0, v1, :cond_d

    #@9
    .line 721
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat$Api28Impl;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    #@c
    return-void

    #@d
    .line 725
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    #@14
    move-result-object v0

    #@15
    .line 730
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api16Impl;->getIncludeFontPadding(Landroid/widget/TextView;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1e

    #@1b
    .line 731
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@1d
    goto :goto_20

    #@1e
    .line 733
    :cond_1e
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@20
    .line 739
    :goto_20
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@23
    move-result v1

    #@24
    if-le p1, v1, :cond_36

    #@26
    add-int/2addr p1, v0

    #@27
    .line 741
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    #@2a
    move-result v0

    #@2b
    .line 742
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    #@2e
    move-result v1

    #@2f
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    #@32
    move-result v2

    #@33
    .line 741
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    #@36
    :cond_36
    return-void
.end method

.method public static setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V
    .registers 5

    #@0
    .line 764
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    #@3
    .line 766
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    #@a
    move-result-object v0

    #@b
    .line 771
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat$Api16Impl;->getIncludeFontPadding(Landroid/widget/TextView;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_14

    #@11
    .line 772
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@13
    goto :goto_16

    #@14
    .line 774
    :cond_14
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@16
    .line 780
    :goto_16
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@19
    move-result v1

    #@1a
    if-le p1, v1, :cond_2c

    #@1c
    sub-int/2addr p1, v0

    #@1d
    .line 782
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    #@20
    move-result v0

    #@21
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    #@24
    move-result v1

    #@25
    .line 783
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    #@28
    move-result v2

    #@29
    .line 782
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    #@2c
    :cond_2c
    return-void
.end method

.method public static setLineHeight(Landroid/widget/TextView;I)V
    .registers 4

    #@0
    .line 822
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    #@3
    .line 824
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@6
    move-result-object v0

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@b
    move-result v0

    #@c
    if-eq p1, v0, :cond_15

    #@e
    sub-int/2addr p1, v0

    #@f
    int-to-float p1, p1

    #@10
    const/high16 v0, 0x3f800000    # 1.0f

    #@12
    .line 828
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    #@15
    :cond_15
    return-void
.end method

.method public static setPrecomputedText(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat;)V
    .registers 4

    #@0
    .line 910
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_e

    #@6
    .line 913
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat;->getPrecomputedText()Landroid/text/PrecomputedText;

    #@9
    move-result-object p1

    #@a
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@d
    goto :goto_1f

    #@e
    .line 915
    :cond_e
    invoke-static {p0}, Landroidx/core/widget/TextViewCompat;->getTextMetricsParams(Landroid/widget/TextView;)Landroidx/core/text/PrecomputedTextCompat$Params;

    #@11
    move-result-object v0

    #@12
    .line 916
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat;->getParams()Landroidx/core/text/PrecomputedTextCompat$Params;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v0, v1}, Landroidx/core/text/PrecomputedTextCompat$Params;->equalsWithoutTextDirection(Landroidx/core/text/PrecomputedTextCompat$Params;)Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_20

    #@1c
    .line 919
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@1f
    :goto_1f
    return-void

    #@20
    .line 917
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@22
    const-string p1, "Given text can not be applied to TextView."

    #@24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw p0
.end method

.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .registers 2

    #@0
    .line 289
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    #@3
    return-void
.end method

.method public static setTextMetricsParams(Landroid/widget/TextView;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .registers 4

    #@0
    .line 869
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroidx/core/widget/TextViewCompat;->getTextDirection(Landroid/text/TextDirectionHeuristic;)I

    #@7
    move-result v0

    #@8
    invoke-static {p0, v0}, Landroidx/core/widget/TextViewCompat$Api17Impl;->setTextDirection(Landroid/view/View;I)V

    #@b
    .line 888
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@16
    .line 892
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    #@19
    move-result v0

    #@1a
    invoke-static {p0, v0}, Landroidx/core/widget/TextViewCompat$Api23Impl;->setBreakStrategy(Landroid/widget/TextView;I)V

    #@1d
    .line 893
    invoke-virtual {p1}, Landroidx/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    #@20
    move-result p1

    #@21
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat$Api23Impl;->setHyphenationFrequency(Landroid/widget/TextView;I)V

    #@24
    return-void
.end method

.method public static unwrapCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 2

    #@0
    .line 546
    instance-of v0, p0, Landroidx/core/widget/TextViewCompat$OreoCallback;

    #@2
    if-eqz v0, :cond_a

    #@4
    .line 547
    check-cast p0, Landroidx/core/widget/TextViewCompat$OreoCallback;

    #@6
    invoke-virtual {p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;->getWrappedCallback()Landroid/view/ActionMode$Callback;

    #@9
    move-result-object p0

    #@a
    :cond_a
    return-object p0
.end method

.method public static wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 4

    #@0
    .line 524
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1b

    #@4
    if-gt v0, v1, :cond_13

    #@6
    instance-of v0, p1, Landroidx/core/widget/TextViewCompat$OreoCallback;

    #@8
    if-nez v0, :cond_13

    #@a
    if-nez p1, :cond_d

    #@c
    goto :goto_13

    #@d
    .line 534
    :cond_d
    new-instance v0, Landroidx/core/widget/TextViewCompat$OreoCallback;

    #@f
    invoke-direct {v0, p1, p0}, Landroidx/core/widget/TextViewCompat$OreoCallback;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    #@12
    return-object v0

    #@13
    :cond_13
    :goto_13
    return-object p1
.end method
