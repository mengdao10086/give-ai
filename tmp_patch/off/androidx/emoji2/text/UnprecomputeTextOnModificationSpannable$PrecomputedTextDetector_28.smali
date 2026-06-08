.class Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector_28;
.super Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;
.source "UnprecomputeTextOnModificationSpannable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PrecomputedTextDetector_28"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 173
    invoke-direct {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable$PrecomputedTextDetector;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method isPrecomputedText(Ljava/lang/CharSequence;)Z
    .registers 3

    #@0
    .line 177
    instance-of v0, p1, Landroid/text/PrecomputedText;

    #@2
    if-nez v0, :cond_b

    #@4
    instance-of p1, p1, Landroidx/core/text/PrecomputedTextCompat;

    #@6
    if-eqz p1, :cond_9

    #@8
    goto :goto_b

    #@9
    :cond_9
    const/4 p1, 0x0

    #@a
    goto :goto_c

    #@b
    :cond_b
    :goto_b
    const/4 p1, 0x1

    #@c
    :goto_c
    return p1
.end method
