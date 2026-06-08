.class final Landroidx/emoji2/viewsintegration/EmojiTextWatcher;
.super Ljava/lang/Object;
.source "EmojiTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;
    }
.end annotation


# instance fields
.field private final mEditText:Landroid/widget/EditText;

.field private mEmojiReplaceStrategy:I

.field private mEnabled:Z

.field private final mExpectInitializedEmojiCompat:Z

.field private mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

.field private mMaxEmojiCount:I


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .registers 4

    #@0
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const v0, 0x7fffffff

    #@6
    .line 44
    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mMaxEmojiCount:I

    #@8
    const/4 v0, 0x0

    #@9
    .line 45
    iput v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEmojiReplaceStrategy:I

    #@b
    .line 50
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    #@d
    .line 51
    iput-boolean p2, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mExpectInitializedEmojiCompat:Z

    #@f
    const/4 p1, 0x1

    #@10
    .line 52
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    #@12
    return-void
.end method

.method private getInitCallback()Landroidx/emoji2/text/EmojiCompat$InitCallback;
    .registers 3

    #@0
    .line 112
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    #@2
    if-nez v0, :cond_d

    #@4
    .line 113
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;

    #@6
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    #@8
    invoke-direct {v0, v1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;-><init>(Landroid/widget/EditText;)V

    #@b
    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    #@d
    .line 115
    :cond_d
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    #@f
    return-object v0
.end method

.method static processTextOnEnablingEvent(Landroid/widget/EditText;I)V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p1, v0, :cond_21

    #@3
    if-eqz p0, :cond_21

    #@5
    .line 152
    invoke-virtual {p0}, Landroid/widget/EditText;->isAttachedToWindow()Z

    #@8
    move-result p1

    #@9
    if-eqz p1, :cond_21

    #@b
    .line 153
    invoke-virtual {p0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    #@e
    move-result-object p0

    #@f
    .line 155
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@12
    move-result p1

    #@13
    .line 156
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@16
    move-result v0

    #@17
    .line 158
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@1e
    .line 160
    invoke-static {p0, p1, v0}, Landroidx/emoji2/viewsintegration/EmojiInputFilter;->updateSelection(Landroid/text/Spannable;II)V

    #@21
    :cond_21
    return-void
.end method

.method private shouldSkipForDisabledOrNotConfigured()Z
    .registers 2

    #@0
    .line 98
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    #@2
    if-eqz v0, :cond_11

    #@4
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mExpectInitializedEmojiCompat:Z

    #@6
    if-nez v0, :cond_f

    #@8
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_f

    #@e
    goto :goto_11

    #@f
    :cond_f
    const/4 v0, 0x0

    #@10
    goto :goto_12

    #@11
    :cond_11
    :goto_11
    const/4 v0, 0x1

    #@12
    :goto_12
    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    #@0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    #@0
    return-void
.end method

.method getEmojiReplaceStrategy()I
    .registers 2

    #@0
    .line 64
    iget v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEmojiReplaceStrategy:I

    #@2
    return v0
.end method

.method getMaxEmojiCount()I
    .registers 2

    #@0
    .line 60
    iget v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mMaxEmojiCount:I

    #@2
    return v0
.end method

.method public isEnabled()Z
    .registers 2

    #@0
    .line 119
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    #@2
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 11

    #@0
    .line 74
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Landroid/widget/EditText;->isInEditMode()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_43

    #@8
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->shouldSkipForDisabledOrNotConfigured()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_f

    #@e
    goto :goto_43

    #@f
    :cond_f
    if-gt p3, p4, :cond_43

    #@11
    .line 79
    instance-of p3, p1, Landroid/text/Spannable;

    #@13
    if-eqz p3, :cond_43

    #@15
    .line 80
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@18
    move-result-object p3

    #@19
    invoke-virtual {p3}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    #@1c
    move-result p3

    #@1d
    if-eqz p3, :cond_38

    #@1f
    const/4 v0, 0x1

    #@20
    if-eq p3, v0, :cond_26

    #@22
    const/4 p1, 0x3

    #@23
    if-eq p3, p1, :cond_38

    #@25
    goto :goto_43

    #@26
    .line 82
    :cond_26
    move-object v1, p1

    #@27
    check-cast v1, Landroid/text/Spannable;

    #@29
    .line 83
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@2c
    move-result-object v0

    #@2d
    add-int v3, p2, p4

    #@2f
    iget v4, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mMaxEmojiCount:I

    #@31
    iget v5, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEmojiReplaceStrategy:I

    #@33
    move v2, p2

    #@34
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/EmojiCompat;->process(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    #@37
    goto :goto_43

    #@38
    .line 88
    :cond_38
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@3b
    move-result-object p1

    #@3c
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->getInitCallback()Landroidx/emoji2/text/EmojiCompat$InitCallback;

    #@3f
    move-result-object p2

    #@40
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/EmojiCompat;->registerInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    #@43
    :cond_43
    :goto_43
    return-void
.end method

.method setEmojiReplaceStrategy(I)V
    .registers 2

    #@0
    .line 68
    iput p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEmojiReplaceStrategy:I

    #@2
    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    #@0
    .line 123
    iget-boolean v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    #@2
    if-eq v0, p1, :cond_22

    #@4
    .line 124
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    #@6
    if-eqz v0, :cond_11

    #@8
    .line 125
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mInitCallback:Landroidx/emoji2/text/EmojiCompat$InitCallback;

    #@e
    invoke-virtual {v0, v1}, Landroidx/emoji2/text/EmojiCompat;->unregisterInitCallback(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V

    #@11
    .line 127
    :cond_11
    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    #@13
    if-eqz p1, :cond_22

    #@15
    .line 129
    iget-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    #@17
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->getLoadState()I

    #@1e
    move-result v0

    #@1f
    invoke-static {p1, v0}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->processTextOnEnablingEvent(Landroid/widget/EditText;I)V

    #@22
    :cond_22
    return-void
.end method

.method setMaxEmojiCount(I)V
    .registers 2

    #@0
    .line 56
    iput p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mMaxEmojiCount:I

    #@2
    return-void
.end method
