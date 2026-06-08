.class Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;
.super Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelperInternal19"
.end annotation


# instance fields
.field private final mEditText:Landroid/widget/EditText;

.field private final mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Z)V
    .registers 4

    #@0
    .line 265
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal;-><init>()V

    #@3
    .line 266
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    #@5
    .line 267
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    #@7
    invoke-direct {v0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;-><init>(Landroid/widget/EditText;Z)V

    #@a
    iput-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    #@c
    .line 268
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@f
    .line 269
    invoke-static {}, Landroidx/emoji2/viewsintegration/EmojiEditableFactory;->getInstance()Landroid/text/Editable$Factory;

    #@12
    move-result-object p2

    #@13
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setEditableFactory(Landroid/text/Editable$Factory;)V

    #@16
    return-void
.end method


# virtual methods
.method getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .registers 3

    #@0
    .line 284
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object p1

    #@5
    :cond_5
    if-nez p1, :cond_9

    #@7
    const/4 p1, 0x0

    #@8
    return-object p1

    #@9
    .line 293
    :cond_9
    instance-of v0, p1, Landroid/text/method/NumberKeyListener;

    #@b
    if-eqz v0, :cond_e

    #@d
    return-object p1

    #@e
    .line 299
    :cond_e
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiKeyListener;

    #@10
    invoke-direct {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiKeyListener;-><init>(Landroid/text/method/KeyListener;)V

    #@13
    return-object v0
.end method

.method isEnabled()Z
    .registers 2

    #@0
    .line 324
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    #@2
    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->isEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 5

    #@0
    .line 305
    instance-of v0, p1, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object p1

    #@5
    .line 310
    :cond_5
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;

    #@7
    iget-object v1, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mEditText:Landroid/widget/EditText;

    #@9
    invoke-direct {v0, v1, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    #@c
    return-object v0
.end method

.method setEmojiReplaceStrategy(I)V
    .registers 3

    #@0
    .line 279
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    #@2
    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->setEmojiReplaceStrategy(I)V

    #@5
    return-void
.end method

.method setEnabled(Z)V
    .registers 3

    #@0
    .line 315
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    #@2
    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->setEnabled(Z)V

    #@5
    return-void
.end method

.method setMaxEmojiCount(I)V
    .registers 3

    #@0
    .line 274
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper$HelperInternal19;->mTextWatcher:Landroidx/emoji2/viewsintegration/EmojiTextWatcher;

    #@2
    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->setMaxEmojiCount(I)V

    #@5
    return-void
.end method
