.class Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "SmoothCalendarLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;Landroid/content/Context;)V
    .registers 3

    #@0
    .line 41
    iput-object p1, p0, Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager$1;->this$0:Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;

    #@2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    #@5
    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 3

    #@0
    .line 45
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@2
    int-to-float p1, p1

    #@3
    const/high16 v0, 0x42c80000    # 100.0f

    #@5
    div-float/2addr v0, p1

    #@6
    return v0
.end method
