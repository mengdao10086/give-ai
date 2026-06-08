.class public Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewBindingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;,
        Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static setOnItemSelectedListener(Landroid/widget/AutoCompleteTextView;Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    if-nez p1, :cond_9

    #@3
    if-nez p2, :cond_9

    #@5
    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@8
    goto :goto_11

    #@9
    .line 75
    :cond_9
    new-instance v1, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;

    #@b
    invoke-direct {v1, p1, p2, v0}, Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelectedComponentListener;-><init>(Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnItemSelected;Landroidx/databinding/adapters/AdapterViewBindingAdapter$OnNothingSelected;Landroidx/databinding/InverseBindingListener;)V

    #@e
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    #@11
    :goto_11
    return-void
.end method

.method public static setValidator(Landroid/widget/AutoCompleteTextView;Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;)V
    .registers 4

    #@0
    if-nez p1, :cond_9

    #@2
    if-nez p2, :cond_9

    #@4
    const/4 p1, 0x0

    #@5
    .line 44
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    #@8
    goto :goto_11

    #@9
    .line 46
    :cond_9
    new-instance v0, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;

    #@b
    invoke-direct {v0, p2, p1}, Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$1;-><init>(Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$IsValid;Landroidx/databinding/adapters/AutoCompleteTextViewBindingAdapter$FixText;)V

    #@e
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    #@11
    :goto_11
    return-void
.end method
