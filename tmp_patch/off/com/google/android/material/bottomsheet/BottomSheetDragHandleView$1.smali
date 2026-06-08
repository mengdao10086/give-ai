.class Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "BottomSheetDragHandleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;)V
    .registers 2

    #@0
    .line 70
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    #@2
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

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
    .line 74
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView$1;->this$0:Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;

    #@2
    # invokes: Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->onBottomSheetStateChanged(I)V
    invoke-static {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;->access$000(Lcom/google/android/material/bottomsheet/BottomSheetDragHandleView;I)V

    #@5
    return-void
.end method
