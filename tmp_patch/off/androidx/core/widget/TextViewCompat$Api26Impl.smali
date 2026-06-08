.class Landroidx/core/widget/TextViewCompat$Api26Impl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 1154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getAutoSizeMaxTextSize(Landroid/widget/TextView;)I
    .registers 1

    #@0
    .line 1194
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getAutoSizeMinTextSize(Landroid/widget/TextView;)I
    .registers 1

    #@0
    .line 1189
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getAutoSizeStepGranularity(Landroid/widget/TextView;)I
    .registers 1

    #@0
    .line 1184
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static getAutoSizeTextAvailableSizes(Landroid/widget/TextView;)[I
    .registers 1

    #@0
    .line 1199
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextAvailableSizes()[I

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method static getAutoSizeTextType(Landroid/widget/TextView;)I
    .registers 1

    #@0
    .line 1179
    invoke-virtual {p0}, Landroid/widget/TextView;->getAutoSizeTextType()I

    #@3
    move-result p0

    #@4
    return p0
.end method

.method static setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V
    .registers 5

    #@0
    .line 1167
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    #@3
    return-void
.end method

.method static setAutoSizeTextTypeUniformWithPresetSizes(Landroid/widget/TextView;[II)V
    .registers 3

    #@0
    .line 1174
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    #@3
    return-void
.end method

.method static setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V
    .registers 2

    #@0
    .line 1160
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAutoSizeTextTypeWithDefaults(I)V

    #@3
    return-void
.end method
