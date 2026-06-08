.class Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;
.super Ljava/lang/Object;
.source "AppCompatEmojiEditTextHelper.java"


# instance fields
.field private final mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

.field private final mView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .registers 4

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mView:Landroid/widget/EditText;

    #@5
    .line 52
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, p1, v1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;-><init>(Landroid/widget/EditText;Z)V

    #@b
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    #@d
    return-void
.end method


# virtual methods
.method getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;
    .registers 3

    #@0
    .line 123
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->isEmojiCapableKeyListener(Landroid/text/method/KeyListener;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_c

    #@6
    .line 124
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    #@8
    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    #@b
    move-result-object p1

    #@c
    :cond_c
    return-object p1
.end method

.method isEmojiCapableKeyListener(Landroid/text/method/KeyListener;)Z
    .registers 2

    #@0
    .line 86
    instance-of p1, p1, Landroid/text/method/NumberKeyListener;

    #@2
    xor-int/lit8 p1, p1, 0x1

    #@4
    return p1
.end method

.method isEnabled()Z
    .registers 2

    #@0
    .line 103
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    #@2
    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->isEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    .line 63
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mView:Landroid/widget/EditText;

    #@2
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 64
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@c
    move-result-object p1

    #@d
    .line 68
    :try_start_d
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_emojiCompatEnabled:I

    #@f
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@12
    move-result p2

    #@13
    const/4 v0, 0x1

    #@14
    if-eqz p2, :cond_1c

    #@16
    .line 69
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_emojiCompatEnabled:I

    #@18
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b
    move-result v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_23

    #@1c
    .line 72
    :cond_1c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@1f
    .line 74
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->setEnabled(Z)V

    #@22
    return-void

    #@23
    :catchall_23
    move-exception p2

    #@24
    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@27
    .line 73
    throw p2
.end method

.method onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    #@0
    .line 148
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    #@2
    invoke-virtual {v0, p1, p2}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method setEnabled(Z)V
    .registers 3

    #@0
    .line 96
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiEditTextHelper;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->setEnabled(Z)V

    #@5
    return-void
.end method
