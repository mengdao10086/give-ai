.class Lcom/google/android/material/timepicker/ClockFaceView$1;
.super Ljava/lang/Object;
.source "ClockFaceView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/timepicker/ClockFaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/timepicker/ClockFaceView;


# direct methods
.method constructor <init>(Lcom/google/android/material/timepicker/ClockFaceView;)V
    .registers 2

    #@0
    .line 139
    iput-object p1, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    #@0
    .line 142
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@2
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->isShown()Z

    #@5
    move-result v0

    #@6
    const/4 v1, 0x1

    #@7
    if-nez v0, :cond_a

    #@9
    return v1

    #@a
    .line 145
    :cond_a
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@c
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    #@13
    .line 146
    iget-object v0, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@15
    .line 147
    invoke-virtual {v0}, Lcom/google/android/material/timepicker/ClockFaceView;->getHeight()I

    #@18
    move-result v0

    #@19
    div-int/lit8 v0, v0, 0x2

    #@1b
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@1d
    # getter for: Lcom/google/android/material/timepicker/ClockFaceView;->clockHandView:Lcom/google/android/material/timepicker/ClockHandView;
    invoke-static {v2}, Lcom/google/android/material/timepicker/ClockFaceView;->access$000(Lcom/google/android/material/timepicker/ClockFaceView;)Lcom/google/android/material/timepicker/ClockHandView;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Lcom/google/android/material/timepicker/ClockHandView;->getSelectorRadius()I

    #@24
    move-result v2

    #@25
    sub-int/2addr v0, v2

    #@26
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@28
    # getter for: Lcom/google/android/material/timepicker/ClockFaceView;->clockHandPadding:I
    invoke-static {v2}, Lcom/google/android/material/timepicker/ClockFaceView;->access$100(Lcom/google/android/material/timepicker/ClockFaceView;)I

    #@2b
    move-result v2

    #@2c
    sub-int/2addr v0, v2

    #@2d
    .line 148
    iget-object v2, p0, Lcom/google/android/material/timepicker/ClockFaceView$1;->this$0:Lcom/google/android/material/timepicker/ClockFaceView;

    #@2f
    invoke-virtual {v2, v0}, Lcom/google/android/material/timepicker/ClockFaceView;->setRadius(I)V

    #@32
    return v1
.end method
