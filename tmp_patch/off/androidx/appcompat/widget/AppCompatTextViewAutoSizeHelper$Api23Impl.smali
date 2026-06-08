.class final Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Api23Impl;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static createStaticLayoutForMeasuring(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;IILandroid/widget/TextView;Landroid/text/TextPaint;Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;)Landroid/text/StaticLayout;
    .registers 9

    #@0
    const/4 v0, 0x0

    #@1
    .line 920
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v1

    #@5
    .line 919
    invoke-static {p0, v0, v1, p5, p2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    #@8
    move-result-object p0

    #@9
    .line 922
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    #@c
    move-result-object p1

    #@d
    .line 924
    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingExtra()F

    #@10
    move-result p2

    #@11
    .line 925
    invoke-virtual {p4}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    #@14
    move-result p5

    #@15
    .line 923
    invoke-virtual {p1, p2, p5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    #@18
    move-result-object p1

    #@19
    .line 926
    invoke-virtual {p4}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    #@1c
    move-result p2

    #@1d
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    #@20
    move-result-object p1

    #@21
    .line 927
    invoke-virtual {p4}, Landroid/widget/TextView;->getBreakStrategy()I

    #@24
    move-result p2

    #@25
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    #@28
    move-result-object p1

    #@29
    .line 928
    invoke-virtual {p4}, Landroid/widget/TextView;->getHyphenationFrequency()I

    #@2c
    move-result p2

    #@2d
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    #@30
    move-result-object p1

    #@31
    const/4 p2, -0x1

    #@32
    if-ne p3, p2, :cond_37

    #@34
    const p3, 0x7fffffff

    #@37
    .line 929
    :cond_37
    invoke-virtual {p1, p3}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    #@3a
    .line 934
    :try_start_3a
    invoke-virtual {p6, p0, p4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;->computeAndSetTextDirection(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    :try_end_3d
    .catch Ljava/lang/ClassCastException; {:try_start_3a .. :try_end_3d} :catch_3e

    #@3d
    goto :goto_45

    #@3e
    :catch_3e
    const-string p1, "ACTVAutoSizeHelper"

    #@40
    const-string p2, "Failed to obtain TextDirectionHeuristic, auto size may be incorrect"

    #@42
    .line 937
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 939
    :goto_45
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    #@48
    move-result-object p0

    #@49
    return-object p0
.end method
