.class final Landroidx/emoji2/viewsintegration/EmojiInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "EmojiInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;
    }
.end annotation


# instance fields
.field private final mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 5

    #@0
    .line 49
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    #@2
    invoke-direct {v0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;-><init>()V

    #@5
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;-><init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;)V

    #@8
    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;)V
    .registers 6

    #@0
    const/4 v0, 0x0

    #@1
    .line 58
    invoke-direct {p0, p2, v0}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    #@4
    .line 59
    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mTextView:Landroid/widget/TextView;

    #@6
    .line 60
    iput-object p4, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    #@8
    .line 61
    invoke-virtual {p4, p3}, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;->updateEditorInfoAttrs(Landroid/view/inputmethod/EditorInfo;)V

    #@b
    return-void
.end method

.method private getEditable()Landroid/text/Editable;
    .registers 2

    #@0
    .line 80
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mTextView:Landroid/widget/TextView;

    #@2
    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .registers 9

    #@0
    .line 66
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    #@2
    .line 67
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->getEditable()Landroid/text/Editable;

    #@5
    move-result-object v2

    #@6
    const/4 v5, 0x0

    #@7
    move-object v1, p0

    #@8
    move v3, p1

    #@9
    move v4, p2

    #@a
    .line 66
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_19

    #@10
    .line 68
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    #@13
    move-result p1

    #@14
    if-eqz p1, :cond_17

    #@16
    goto :goto_19

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    goto :goto_1a

    #@19
    :cond_19
    :goto_19
    const/4 p1, 0x1

    #@1a
    :goto_1a
    return p1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .registers 9

    #@0
    .line 74
    iget-object v0, p0, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->mEmojiCompatDeleteHelper:Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;

    #@2
    .line 75
    invoke-direct {p0}, Landroidx/emoji2/viewsintegration/EmojiInputConnection;->getEditable()Landroid/text/Editable;

    #@5
    move-result-object v2

    #@6
    const/4 v5, 0x1

    #@7
    move-object v1, p0

    #@8
    move v3, p1

    #@9
    move v4, p2

    #@a
    .line 74
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/viewsintegration/EmojiInputConnection$EmojiCompatDeleteHelper;->handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_19

    #@10
    .line 76
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingTextInCodePoints(II)Z

    #@13
    move-result p1

    #@14
    if-eqz p1, :cond_17

    #@16
    goto :goto_19

    #@17
    :cond_17
    const/4 p1, 0x0

    #@18
    goto :goto_1a

    #@19
    :cond_19
    :goto_19
    const/4 p1, 0x1

    #@1a
    :goto_1a
    return p1
.end method
