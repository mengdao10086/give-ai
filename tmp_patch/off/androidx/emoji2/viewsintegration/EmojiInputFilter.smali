.class final Landroidx/emoji2/viewsintegration/EmojiInputFilter;
.super Ljava/lang/Object;
.source "EmojiInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;
    }
.end annotation


# instance fields
.field private mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    #@5
    return-void
.end method

.method private getInitCallback()Landroidx/emoji2/text/EmojiCompat$InitCallback;
    .registers 3

    #@0
    .line 93
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    #@2
    if-nez v0, :cond_d

    #@4
    .line 94
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;

    #@6
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    #@8
    invoke-direct {v0, v1, p0}, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;-><init>(Landroid/widget/TextView;Landroidx/emoji2/viewsintegration/EmojiInputFilter;)V

    #@b
    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    #@d
    .line 96
    :cond_d
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    #@f
    return-object v0
.end method

.method static updateSelection(Landroid/text/Spannable;II)V
    .registers 3

    #@0
    if-ltz p1, :cond_8

    #@2
    if-ltz p2, :cond_8

    #@4
    .line 164
    invoke-static {p0, p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    #@7
    goto :goto_13

    #@8
    :cond_8
    if-ltz p1, :cond_e

    #@a
    .line 166
    invoke-static {p0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@d
    goto :goto_13

    #@e
    :cond_e
    if-ltz p2, :cond_13

    #@10
    .line 168
    invoke-static {p0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@13
    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 9

    #@0
    .line 56
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->isInEditMode()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_9

    #@8
    return-object p1

    #@9
    .line 60
    :cond_9
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_4c

    #@13
    const/4 v1, 0x1

    #@14
    if-eq v0, v1, :cond_1a

    #@16
    const/4 p2, 0x3

    #@17
    if-eq v0, p2, :cond_4c

    #@19
    return-object p1

    #@1a
    :cond_1a
    const/4 v0, 0x0

    #@1b
    if-nez p6, :cond_2e

    #@1d
    if-nez p5, :cond_2e

    #@1f
    .line 63
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    #@22
    move-result p4

    #@23
    if-nez p4, :cond_2e

    #@25
    .line 64
    iget-object p4, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->mTextView:Landroid/widget/TextView;

    #@27
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@2a
    move-result-object p4

    #@2b
    if-ne p1, p4, :cond_2e

    #@2d
    move v1, v0

    #@2e
    :cond_2e
    if-eqz v1, :cond_4b

    #@30
    if-eqz p1, :cond_4b

    #@32
    if-nez p2, :cond_3b

    #@34
    .line 72
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@37
    move-result p4

    #@38
    if-ne p3, p4, :cond_3b

    #@3a
    goto :goto_3f

    #@3b
    .line 75
    :cond_3b
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@3e
    move-result-object p1

    #@3f
    .line 77
    :goto_3f
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@42
    move-result-object p2

    #@43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@46
    move-result p3

    #@47
    invoke-virtual {p2, p1, v0, p3}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    #@4a
    move-result-object p1

    #@4b
    :cond_4b
    return-object p1

    #@4c
    .line 83
    :cond_4c
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@4f
    move-result-object p2

    #@50
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->getInitCallback()Landroidx/emoji2/text/EmojiCompat$InitCallback;

    #@53
    move-result-object p3

    #@54
    invoke-virtual {p2, p3}, Landroidx/emoji2/text/EmojiCompat;->registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    #@57
    return-object p1
.end method
