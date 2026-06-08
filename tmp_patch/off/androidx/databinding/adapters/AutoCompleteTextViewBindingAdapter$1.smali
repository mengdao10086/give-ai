.class Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewBindingAdapter.java"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$Validator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter;->setValidator(Landroid/widget/AutoCompleteTextView;Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fixText:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;

.field final synthetic val$isValid:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;


# direct methods
.method constructor <init>(Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;)V
    .registers 3

    #@0
    .line 46
    iput-object p1, p0, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;->val$isValid:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;

    #@2
    iput-object p2, p0, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;->val$fixText:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 58
    iget-object v0, p0, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;->val$fixText:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 59
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@7
    move-result-object p1

    #@8
    :cond_8
    return-object p1
.end method

.method public isValid(Ljava/lang/CharSequence;)Z
    .registers 3

    #@0
    .line 49
    iget-object v0, p0, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;->val$isValid:Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 50
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;->isValid(Ljava/lang/CharSequence;)Z

    #@7
    move-result p1

    #@8
    return p1

    #@9
    :cond_9
    const/4 p1, 0x1

    #@a
    return p1
.end method
