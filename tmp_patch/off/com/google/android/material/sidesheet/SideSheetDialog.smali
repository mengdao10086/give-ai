.class public Lcom/google/android/material/sidesheet/SideSheetDialog;
.super Lcom/google/android/material/sidesheet/SheetDialog;
.source "SideSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/sidesheet/SheetDialog<",
        "Lcom/google/android/material/sidesheet/SideSheetCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

.field private static final SIDE_SHEET_DIALOG_THEME_ATTR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 35
    sget v0, Lcom/google/android/material/R$attr;->sideSheetDialogTheme:I

    #@2
    sput v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_THEME_ATTR:I

    #@4
    .line 36
    sget v0, Lcom/google/android/material/R$style;->Theme_Material3_Light_SideSheetDialog:I

    #@6
    sput v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

    #@8
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 40
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/sidesheet/SideSheetDialog;-><init>(Landroid/content/Context;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    #@0
    .line 61
    sget v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_THEME_ATTR:I

    #@2
    sget v1, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/material/sidesheet/SheetDialog;-><init>(Landroid/content/Context;III)V

    #@7
    const/4 p1, 0x1

    #@8
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetDialog;->supportRequestWindowFeature(I)Z

    #@b
    return-void
.end method


# virtual methods
.method addSheetCancelOnHideCallback(Lcom/google/android/material/sidesheet/Sheet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "Lcom/google/android/material/sidesheet/SideSheetCallback;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 46
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetDialog$1;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetDialog$1;-><init>(Lcom/google/android/material/sidesheet/SideSheetDialog;)V

    #@5
    invoke-interface {p1, v0}, Lcom/google/android/material/sidesheet/Sheet;->addCallback(Lcom/google/android/material/sidesheet/SheetCallback;)V

    #@8
    return-void
.end method

.method public bridge synthetic cancel()V
    .registers 1

    #@0
    .line 33
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->cancel()V

    #@3
    return-void
.end method

.method public bridge synthetic getBehavior()Lcom/google/android/material/sidesheet/Sheet;
    .registers 2

    #@0
    .line 33
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetDialog;->getBehavior()Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getBehavior()Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    #@0
    .line 99
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getBehavior()Lcom/google/android/material/sidesheet/Sheet;

    #@3
    move-result-object v0

    #@4
    .line 100
    instance-of v1, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@6
    if-eqz v1, :cond_b

    #@8
    .line 103
    check-cast v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@a
    return-object v0

    #@b
    .line 101
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    const-string v1, "The view is not associated with SideSheetBehavior"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method getBehaviorFromSheet(Landroid/widget/FrameLayout;)Lcom/google/android/material/sidesheet/Sheet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            ")",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "Lcom/google/android/material/sidesheet/SideSheetCallback;",
            ">;"
        }
    .end annotation

    #@0
    .line 82
    invoke-static {p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/sidesheet/SideSheetBehavior;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method getDialogId()I
    .registers 2

    #@0
    .line 76
    sget v0, Lcom/google/android/material/R$id;->m3_side_sheet:I

    #@2
    return v0
.end method

.method getLayoutResId()I
    .registers 2

    #@0
    .line 70
    sget v0, Lcom/google/android/material/R$layout;->m3_side_sheet_dialog:I

    #@2
    return v0
.end method

.method getStateOnStart()I
    .registers 2

    #@0
    const/4 v0, 0x3

    #@1
    return v0
.end method

.method public bridge synthetic isDismissWithSheetAnimationEnabled()Z
    .registers 2

    #@0
    .line 33
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->isDismissWithSheetAnimationEnabled()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic setCancelable(Z)V
    .registers 2

    #@0
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setCancelable(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setCanceledOnTouchOutside(Z)V
    .registers 2

    #@0
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setCanceledOnTouchOutside(Z)V

    #@3
    return-void
.end method

.method public bridge synthetic setContentView(I)V
    .registers 2

    #@0
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(I)V

    #@3
    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .registers 2

    #@0
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(Landroid/view/View;)V

    #@3
    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    #@0
    .line 33
    invoke-super {p0, p1, p2}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@3
    return-void
.end method

.method public bridge synthetic setDismissWithSheetAnimationEnabled(Z)V
    .registers 2

    #@0
    .line 33
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setDismissWithSheetAnimationEnabled(Z)V

    #@3
    return-void
.end method
