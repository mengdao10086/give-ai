.class final Landroidx/core/widget/TextViewOnReceiveContentListener$Api16Impl;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewOnReceiveContentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static coerce(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;
    .registers 3

    #@0
    and-int/lit8 p2, p2, 0x1

    #@2
    if-eqz p2, :cond_11

    #@4
    .line 118
    invoke-virtual {p1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    #@7
    move-result-object p0

    #@8
    .line 119
    instance-of p1, p0, Landroid/text/Spanned;

    #@a
    if-eqz p1, :cond_10

    #@c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    :cond_10
    return-object p0

    #@11
    .line 121
    :cond_11
    invoke-virtual {p1, p0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    #@14
    move-result-object p0

    #@15
    return-object p0
.end method
