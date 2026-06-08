.class Lcom/google/android/material/sidesheet/SideSheetDialog$1;
.super Lcom/google/android/material/sidesheet/SideSheetCallback;
.source "SideSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/sidesheet/SideSheetDialog;->addSheetCancelOnHideCallback(Lcom/google/android/material/sidesheet/Sheet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/sidesheet/SideSheetDialog;


# direct methods
.method constructor <init>(Lcom/google/android/material/sidesheet/SideSheetDialog;)V
    .registers 2

    #@0
    .line 47
    iput-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetDialog;

    #@2
    invoke-direct {p0}, Lcom/google/android/material/sidesheet/SideSheetCallback;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 3

    #@0
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 3

    #@0
    const/4 p1, 0x5

    #@1
    if-ne p2, p1, :cond_8

    #@3
    .line 51
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetDialog$1;->this$0:Lcom/google/android/material/sidesheet/SideSheetDialog;

    #@5
    invoke-virtual {p1}, Lcom/google/android/material/sidesheet/SideSheetDialog;->cancel()V

    #@8
    :cond_8
    return-void
.end method
