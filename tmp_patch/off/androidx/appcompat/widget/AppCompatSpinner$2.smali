.class Landroidx/appcompat/widget/AppCompatSpinner$2;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/AppCompatSpinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatSpinner;)V
    .registers 2

    #@0
    .line 639
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    #@0
    .line 642
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getInternalPopup()Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Landroidx/appcompat/widget/AppCompatSpinner$SpinnerPopup;->isShowing()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_11

    #@c
    .line 643
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@e
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->showPopup()V

    #@11
    .line 645
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSpinner$2;->this$0:Landroidx/appcompat/widget/AppCompatSpinner;

    #@13
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_1c

    #@19
    .line 648
    invoke-static {v0, p0}, Landroidx/appcompat/widget/AppCompatSpinner$Api16Impl;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    #@1c
    :cond_1c
    return-void
.end method
