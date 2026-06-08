.class Lcom/google/android/material/textfield/EndCompoundLayout$2;
.super Ljava/lang/Object;
.source "EndCompoundLayout.java"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/EndCompoundLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/EndCompoundLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .registers 2

    #@0
    .line 128
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 4

    #@0
    .line 131
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    # getter for: Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@9
    move-result-object v1

    #@a
    if-ne v0, v1, :cond_d

    #@c
    return-void

    #@d
    .line 134
    :cond_d
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@f
    # getter for: Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_44

    #@15
    .line 135
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@17
    # getter for: Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    #@1a
    move-result-object v0

    #@1b
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@1d
    # getter for: Lcom/google/android/material/textfield/EndCompoundLayout;->editTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$100(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/text/TextWatcher;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    #@24
    .line 136
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@26
    # getter for: Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    #@2d
    move-result-object v0

    #@2e
    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@30
    .line 137
    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    #@37
    move-result-object v1

    #@38
    if-ne v0, v1, :cond_44

    #@3a
    .line 138
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@3c
    # getter for: Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    #@3f
    move-result-object v0

    #@40
    const/4 v1, 0x0

    #@41
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    #@44
    .line 141
    :cond_44
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@46
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    #@49
    move-result-object p1

    #@4a
    # setter for: Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;
    invoke-static {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$002(Lcom/google/android/material/textfield/EndCompoundLayout;Landroid/widget/EditText;)Landroid/widget/EditText;

    #@4d
    .line 142
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@4f
    # getter for: Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    #@52
    move-result-object p1

    #@53
    if-eqz p1, :cond_64

    #@55
    .line 143
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@57
    # getter for: Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    #@5a
    move-result-object p1

    #@5b
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@5d
    # getter for: Lcom/google/android/material/textfield/EndCompoundLayout;->editTextWatcher:Landroid/text/TextWatcher;
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$100(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/text/TextWatcher;

    #@60
    move-result-object v0

    #@61
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    #@64
    .line 145
    :cond_64
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@66
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    #@69
    move-result-object p1

    #@6a
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@6c
    # getter for: Lcom/google/android/material/textfield/EndCompoundLayout;->editText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/EndIconDelegate;->onEditTextAttached(Landroid/widget/EditText;)V

    #@73
    .line 146
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@75
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    #@78
    move-result-object v0

    #@79
    # invokes: Lcom/google/android/material/textfield/EndCompoundLayout;->setOnFocusChangeListenersIfNeeded(Lcom/google/android/material/textfield/EndIconDelegate;)V
    invoke-static {p1, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$200(Lcom/google/android/material/textfield/EndCompoundLayout;Lcom/google/android/material/textfield/EndIconDelegate;)V

    #@7c
    return-void
.end method
