.class public final synthetic Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:[Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>([Landroid/widget/EditText;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;->f$0:[Landroid/widget/EditText;

    #@5
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4

    #@0
    iget-object v0, p0, Lcom/google/android/material/datepicker/DateSelector$$ExternalSyntheticLambda0;->f$0:[Landroid/widget/EditText;

    #@2
    invoke-static {v0, p1, p2}, Lcom/google/android/material/datepicker/DateSelector;->lambda$showKeyboardWithAutoHideBehavior$0([Landroid/widget/EditText;Landroid/view/View;Z)V

    #@5
    return-void
.end method
