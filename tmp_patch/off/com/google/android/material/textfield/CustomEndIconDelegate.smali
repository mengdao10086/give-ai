.class Lcom/google/android/material/textfield/CustomEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "CustomEndIconDelegate.java"


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .registers 2

    #@0
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    #@3
    return-void
.end method


# virtual methods
.method setUp()V
    .registers 3

    #@0
    .line 36
    iget-object v0, p0, Lcom/google/android/material/textfield/CustomEndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    #@6
    return-void
.end method
