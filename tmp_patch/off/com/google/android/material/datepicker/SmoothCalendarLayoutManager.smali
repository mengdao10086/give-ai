.class Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SmoothCalendarLayoutManager.java"


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 100.0f


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .registers 4

    #@0
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    #@3
    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .registers 4

    #@0
    .line 40
    new-instance p2, Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager$1;

    #@2
    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    #@5
    move-result-object p1

    #@6
    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager$1;-><init>(Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;Landroid/content/Context;)V

    #@9
    .line 48
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    #@c
    .line 49
    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/SmoothCalendarLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    #@f
    return-void
.end method
