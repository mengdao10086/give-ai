.class final Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Api16Impl;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;ILandroid/widget/TextView;Landroid/text/TextPaint;)Landroid/text/StaticLayout;
    .registers 13

    #@0
    .line 975
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    #@3
    move-result v5

    #@4
    .line 976
    invoke-virtual {p3}, Landroid/widget/TextView;->getLineSpacingExtra()F

    #@7
    move-result v6

    #@8
    .line 977
    invoke-virtual {p3}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    #@b
    move-result v7

    #@c
    .line 981
    new-instance p3, Landroid/text/StaticLayout;

    #@e
    move-object v0, p3

    #@f
    move-object v1, p0

    #@10
    move-object v2, p4

    #@11
    move v3, p2

    #@12
    move-object v4, p1

    #@13
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    #@16
    return-object p3
.end method

.method static getMaxLines(Landroid/widget/TextView;)I
    .registers 1

    #@0
    .line 963
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    #@3
    move-result p0

    #@4
    return p0
.end method
