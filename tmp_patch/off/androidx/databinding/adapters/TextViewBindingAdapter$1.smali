.class Landroidx/databinding/adapters/TextViewBindingAdapter$1;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/TextViewBindingAdapter;->setTextWatcher(Landroid/widget/TextView;Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;Landroidx/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$after:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

.field final synthetic val$before:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

.field final synthetic val$on:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

.field final synthetic val$textAttrChanged:Landroidx/databinding/InverseBindingListener;


# direct methods
.method constructor <init>(Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;Landroidx/databinding/InverseBindingListener;Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;)V
    .registers 5

    #@0
    .line 359
    iput-object p1, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    #@2
    iput-object p2, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    #@4
    iput-object p3, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$textAttrChanged:Landroidx/databinding/InverseBindingListener;

    #@6
    iput-object p4, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    #@0
    .line 379
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$after:Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 380
    invoke-interface {v0, p1}, Landroidx/databinding/adapters/TextViewBindingAdapter$AfterTextChanged;->afterTextChanged(Landroid/text/Editable;)V

    #@7
    :cond_7
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    #@0
    .line 362
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$before:Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 363
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/databinding/adapters/TextViewBindingAdapter$BeforeTextChanged;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    #@7
    :cond_7
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    #@0
    .line 369
    iget-object v0, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$on:Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 370
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/databinding/adapters/TextViewBindingAdapter$OnTextChanged;->onTextChanged(Ljava/lang/CharSequence;III)V

    #@7
    .line 372
    :cond_7
    iget-object p1, p0, Landroidx/databinding/adapters/TextViewBindingAdapter$1;->val$textAttrChanged:Landroidx/databinding/InverseBindingListener;

    #@9
    if-eqz p1, :cond_e

    #@b
    .line 373
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    #@e
    :cond_e
    return-void
.end method
