.class public final Landroidx/core/widget/TextViewOnReceiveContentListener;
.super Ljava/lang/Object;
.source "TextViewOnReceiveContentListener.java"

# interfaces
.implements Landroidx/core/view/OnReceiveContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/TextViewOnReceiveContentListener$ApiImpl;,
        Landroidx/core/widget/TextViewOnReceiveContentListener$Api16Impl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ReceiveContent"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 95
    invoke-static {p0, p1, p2}, Landroidx/core/widget/TextViewOnReceiveContentListener$Api16Impl;->coerce(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method

.method private static replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V
    .registers 6

    #@0
    .line 103
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    .line 104
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@7
    move-result v1

    #@8
    .line 105
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@b
    move-result v2

    #@c
    const/4 v3, 0x0

    #@d
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v2

    #@11
    .line 106
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v0

    #@15
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    #@18
    move-result v0

    #@19
    .line 107
    invoke-static {p0, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@1c
    .line 108
    invoke-interface {p0, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    #@1f
    return-void
.end method


# virtual methods
.method public onReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    .registers 10

    #@0
    const/4 v0, 0x3

    #@1
    const-string v1, "ReceiveContent"

    #@3
    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1b

    #@9
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    const-string v2, "onReceive: "

    #@d
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 59
    :cond_1b
    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat;->getSource()I

    #@1e
    move-result v0

    #@1f
    const/4 v1, 0x2

    #@20
    if-ne v0, v1, :cond_23

    #@22
    return-object p2

    #@23
    .line 71
    :cond_23
    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat;->getClip()Landroid/content/ClipData;

    #@26
    move-result-object v0

    #@27
    .line 72
    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat;->getFlags()I

    #@2a
    move-result p2

    #@2b
    .line 73
    check-cast p1, Landroid/widget/TextView;

    #@2d
    .line 74
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Landroid/text/Editable;

    #@33
    .line 75
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@36
    move-result-object p1

    #@37
    const/4 v2, 0x0

    #@38
    move v3, v2

    #@39
    .line 77
    :goto_39
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    #@3c
    move-result v4

    #@3d
    if-ge v2, v4, :cond_63

    #@3f
    .line 78
    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@42
    move-result-object v4

    #@43
    invoke-static {p1, v4, p2}, Landroidx/core/widget/TextViewOnReceiveContentListener;->coerceToText(Landroid/content/Context;Landroid/content/ClipData$Item;I)Ljava/lang/CharSequence;

    #@46
    move-result-object v4

    #@47
    if-eqz v4, :cond_60

    #@49
    if-nez v3, :cond_50

    #@4b
    .line 81
    invoke-static {v1, v4}, Landroidx/core/widget/TextViewOnReceiveContentListener;->replaceSelection(Landroid/text/Editable;Ljava/lang/CharSequence;)V

    #@4e
    const/4 v3, 0x1

    #@4f
    goto :goto_60

    #@50
    .line 84
    :cond_50
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@53
    move-result v5

    #@54
    const-string v6, "\n"

    #@56
    invoke-interface {v1, v5, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    #@59
    .line 85
    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@5c
    move-result v5

    #@5d
    invoke-interface {v1, v5, v4}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    #@60
    :cond_60
    :goto_60
    add-int/lit8 v2, v2, 0x1

    #@62
    goto :goto_39

    #@63
    :cond_63
    const/4 p1, 0x0

    #@64
    return-object p1
.end method
