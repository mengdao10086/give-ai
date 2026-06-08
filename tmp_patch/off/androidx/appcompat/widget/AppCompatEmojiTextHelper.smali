.class Landroidx/appcompat/widget/AppCompatEmojiTextHelper;
.super Ljava/lang/Object;
.source "AppCompatEmojiTextHelper.java"


# instance fields
.field private final mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 4

    #@0
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mView:Landroid/widget/TextView;

    #@5
    .line 43
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, p1, v1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;-><init>(Landroid/widget/TextView;Z)V

    #@b
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    #@d
    return-void
.end method


# virtual methods
.method getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .registers 3

    #@0
    .line 99
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->getFilters([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public isEnabled()Z
    .registers 2

    #@0
    .line 84
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    #@2
    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->isEnabled()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 6

    #@0
    .line 52
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    #@5
    move-result-object v0

    #@6
    .line 53
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@c
    move-result-object p1

    #@d
    .line 57
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
    .line 58
    sget p2, Landroidx/appcompat/R$styleable;->AppCompatTextView_emojiCompatEnabled:I

    #@18
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@1b
    move-result v0
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_23

    #@1c
    .line 61
    :cond_1c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@1f
    .line 63
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->setEnabled(Z)V

    #@22
    return-void

    #@23
    :catchall_23
    move-exception p2

    #@24
    .line 61
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    #@27
    .line 62
    throw p2
.end method

.method setAllCaps(Z)V
    .registers 3

    #@0
    .line 109
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->setAllCaps(Z)V

    #@5
    return-void
.end method

.method setEnabled(Z)V
    .registers 3

    #@0
    .line 77
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->setEnabled(Z)V

    #@5
    return-void
.end method

.method public wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .registers 3

    #@0
    .line 122
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatEmojiTextHelper;->mEmojiTextViewHelper:Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;

    #@2
    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiTextViewHelper;->wrapTransformationMethod(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method
