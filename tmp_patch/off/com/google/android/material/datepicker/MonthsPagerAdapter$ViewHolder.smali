.class public Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MonthsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/MonthsPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

.field final monthTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/LinearLayout;Z)V
    .registers 5

    #@0
    .line 82
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    #@3
    .line 83
    sget v0, Lcom/google/android/material/R$id;->month_title:I

    #@5
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/widget/TextView;

    #@b
    iput-object v0, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthTitle:Landroid/widget/TextView;

    #@d
    const/4 v1, 0x1

    #@e
    .line 84
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityHeading(Landroid/view/View;Z)V

    #@11
    .line 85
    sget v1, Lcom/google/android/material/R$id;->month_grid:I

    #@13
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    #@19
    iput-object p1, p0, Lcom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthGrid:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    #@1b
    if-nez p2, :cond_22

    #@1d
    const/16 p1, 0x8

    #@1f
    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    #@22
    :cond_22
    return-void
.end method
