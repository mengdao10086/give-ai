.class Landroidx/appcompat/widget/AppCompatHintHelper;
.super Ljava/lang/Object;
.source "AppCompatHintHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)Landroid/view/inputmethod/InputConnection;
    .registers 4

    #@0
    if-eqz p0, :cond_20

    #@2
    .line 28
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@4
    if-nez v0, :cond_20

    #@6
    .line 31
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@9
    move-result-object p2

    #@a
    .line 32
    :goto_a
    instance-of v0, p2, Landroid/view/View;

    #@c
    if-eqz v0, :cond_20

    #@e
    .line 33
    instance-of v0, p2, Landroidx/appcompat/widget/WithHint;

    #@10
    if-eqz v0, :cond_1b

    #@12
    .line 34
    check-cast p2, Landroidx/appcompat/widget/WithHint;

    #@14
    invoke-interface {p2}, Landroidx/appcompat/widget/WithHint;->getHint()Ljava/lang/CharSequence;

    #@17
    move-result-object p2

    #@18
    iput-object p2, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    #@1a
    goto :goto_20

    #@1b
    .line 37
    :cond_1b
    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    #@1e
    move-result-object p2

    #@1f
    goto :goto_a

    #@20
    :cond_20
    :goto_20
    return-object p0
.end method
