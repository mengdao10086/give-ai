.class Lcom/google/android/material/datepicker/MaterialDatePicker$4;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;->enableEdgeToEdgeIfNeeded(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

.field final synthetic val$headerLayout:Landroid/view/View;

.field final synthetic val$originalHeaderHeight:I

.field final synthetic val$originalPaddingTop:I


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;ILandroid/view/View;I)V
    .registers 5

    #@0
    .line 402
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    #@2
    iput p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$originalHeaderHeight:I

    #@4
    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    #@6
    iput p4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$originalPaddingTop:I

    #@8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@b
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .registers 7

    #@0
    .line 405
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    #@3
    move-result p1

    #@4
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    #@7
    move-result-object p1

    #@8
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    #@a
    .line 406
    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$originalHeaderHeight:I

    #@c
    if-ltz v0, :cond_22

    #@e
    .line 407
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    #@10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13
    move-result-object v0

    #@14
    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$originalHeaderHeight:I

    #@16
    add-int/2addr v1, p1

    #@17
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@19
    .line 408
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    #@1b
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@22
    .line 410
    :cond_22
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    #@24
    .line 411
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    #@27
    move-result v1

    #@28
    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$originalPaddingTop:I

    #@2a
    add-int/2addr v2, p1

    #@2b
    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    #@2d
    .line 413
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    #@30
    move-result p1

    #@31
    iget-object v3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->val$headerLayout:Landroid/view/View;

    #@33
    .line 414
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    #@36
    move-result v3

    #@37
    .line 410
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    #@3a
    return-object p2
.end method
