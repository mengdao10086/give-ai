.class Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;
.super Landroidx/emoji2/text/EmojiCompat$InitCallback;
.source "EmojiInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitCallbackImpl"
.end annotation


# instance fields
.field private final mEmojiInputFilterReference:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroidx/emoji2/viewsintegration/EmojiInputFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroidx/emoji2/viewsintegration/EmojiInputFilter;)V
    .registers 4

    #@0
    .line 105
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;-><init>()V

    #@3
    .line 106
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@5
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@8
    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mViewRef:Ljava/lang/ref/Reference;

    #@a
    .line 107
    new-instance p1, Ljava/lang/ref/WeakReference;

    #@c
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@f
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mEmojiInputFilterReference:Ljava/lang/ref/Reference;

    #@11
    return-void
.end method

.method private isInputFilterCurrentlyRegisteredOnTextView(Landroid/widget/TextView;Landroid/text/InputFilter;)Z
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    if-eqz p2, :cond_1a

    #@3
    if-nez p1, :cond_6

    #@5
    goto :goto_1a

    #@6
    .line 148
    :cond_6
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    #@9
    move-result-object p1

    #@a
    if-nez p1, :cond_d

    #@c
    return v0

    #@d
    :cond_d
    move v1, v0

    #@e
    .line 153
    :goto_e
    array-length v2, p1

    #@f
    if-ge v1, v2, :cond_1a

    #@11
    .line 154
    aget-object v2, p1, v1

    #@13
    if-ne v2, p2, :cond_17

    #@15
    const/4 p1, 0x1

    #@16
    return p1

    #@17
    :cond_17
    add-int/lit8 v1, v1, 0x1

    #@19
    goto :goto_e

    #@1a
    :cond_1a
    :goto_1a
    return v0
.end method


# virtual methods
.method public onInitialized()V
    .registers 5

    #@0
    .line 112
    invoke-super {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;->onInitialized()V

    #@3
    .line 113
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mViewRef:Ljava/lang/ref/Reference;

    #@5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/widget/TextView;

    #@b
    .line 114
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->mEmojiInputFilterReference:Ljava/lang/ref/Reference;

    #@d
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid/text/InputFilter;

    #@13
    .line 115
    invoke-direct {p0, v0, v1}, Landroidx/emoji2/viewsintegration/EmojiInputFilter$InitCallbackImpl;->isInputFilterCurrentlyRegisteredOnTextView(Landroid/widget/TextView;Landroid/text/InputFilter;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_1a

    #@19
    return-void

    #@1a
    .line 116
    :cond_1a
    invoke-virtual {v0}, Landroid/widget/TextView;->isAttachedToWindow()Z

    #@1d
    move-result v1

    #@1e
    if-eqz v1, :cond_43

    #@20
    .line 117
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@23
    move-result-object v1

    #@24
    .line 118
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v1}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@2b
    move-result-object v2

    #@2c
    if-ne v1, v2, :cond_2f

    #@2e
    return-void

    #@2f
    .line 131
    :cond_2f
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@32
    move-result v1

    #@33
    .line 132
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@36
    move-result v3

    #@37
    .line 134
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3a
    .line 136
    instance-of v0, v2, Landroid/text/Spannable;

    #@3c
    if-eqz v0, :cond_43

    #@3e
    .line 137
    check-cast v2, Landroid/text/Spannable;

    #@40
    invoke-static {v2, v1, v3}, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->updateSelection(Landroid/text/Spannable;II)V

    #@43
    :cond_43
    return-void
.end method
