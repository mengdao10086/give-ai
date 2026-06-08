.class final Landroidx/core/widget/TextViewOnReceiveContentListener$ApiImpl;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/TextViewOnReceiveContentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApiImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static coerce(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 131
    invoke-virtual {p1, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    #@3
    move-result-object p0

    #@4
    and-int/lit8 p1, p2, 0x1

    #@6
    if-eqz p1, :cond_10

    #@8
    .line 132
    instance-of p1, p0, Landroid/text/Spanned;

    #@a
    if-eqz p1, :cond_10

    #@c
    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@f
    move-result-object p0

    #@10
    :cond_10
    return-object p0
.end method
