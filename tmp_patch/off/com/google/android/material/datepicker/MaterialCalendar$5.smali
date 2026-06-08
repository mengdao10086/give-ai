.class Lcom/google/android/material/datepicker/MaterialCalendar$5;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final endItem:Ljava/util/Calendar;

.field private final startItem:Ljava/util/Calendar;

.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .registers 2

    #@0
    .line 267
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    #@5
    .line 269
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@8
    move-result-object p1

    #@9
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->startItem:Ljava/util/Calendar;

    #@b
    .line 270
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@e
    move-result-object p1

    #@f
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->endItem:Ljava/util/Calendar;

    #@11
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 23

    #@0
    move-object/from16 v0, p0

    #@2
    .line 275
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@5
    move-result-object v1

    #@6
    instance-of v1, v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    #@8
    if-eqz v1, :cond_f0

    #@a
    .line 276
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@d
    move-result-object v1

    #@e
    instance-of v1, v1, Landroidx/recyclerview/widget/GridLayoutManager;

    #@10
    if-nez v1, :cond_14

    #@12
    goto/16 :goto_f0

    #@14
    .line 279
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/google/android/material/datepicker/YearGridAdapter;

    #@1a
    .line 280
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager;

    #@20
    .line 282
    iget-object v3, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@22
    # getter for: Lcom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    invoke-static {v3}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$200(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/DateSelector;

    #@25
    move-result-object v3

    #@26
    invoke-interface {v3}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    #@29
    move-result-object v3

    #@2a
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v3

    #@2e
    :cond_2e
    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v4

    #@32
    if-eqz v4, :cond_f0

    #@34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Landroidx/core/util/Pair;

    #@3a
    .line 283
    iget-object v5, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@3c
    if-eqz v5, :cond_2e

    #@3e
    iget-object v5, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@40
    if-nez v5, :cond_43

    #@42
    goto :goto_2e

    #@43
    .line 286
    :cond_43
    iget-object v5, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->startItem:Ljava/util/Calendar;

    #@45
    iget-object v6, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@47
    check-cast v6, Ljava/lang/Long;

    #@49
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@4c
    move-result-wide v6

    #@4d
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@50
    .line 287
    iget-object v5, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->endItem:Ljava/util/Calendar;

    #@52
    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@54
    check-cast v4, Ljava/lang/Long;

    #@56
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    #@59
    move-result-wide v6

    #@5a
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@5d
    .line 289
    iget-object v4, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->startItem:Ljava/util/Calendar;

    #@5f
    const/4 v5, 0x1

    #@60
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    #@63
    move-result v4

    #@64
    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    #@67
    move-result v4

    #@68
    .line 290
    iget-object v6, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->endItem:Ljava/util/Calendar;

    #@6a
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    #@6d
    move-result v5

    #@6e
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    #@71
    move-result v5

    #@72
    .line 291
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    #@75
    move-result-object v6

    #@76
    .line 292
    invoke-virtual {v2, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    #@79
    move-result-object v7

    #@7a
    .line 294
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    #@7d
    move-result v8

    #@7e
    div-int/2addr v4, v8

    #@7f
    .line 295
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    #@82
    move-result v8

    #@83
    div-int/2addr v5, v8

    #@84
    move v8, v4

    #@85
    :goto_85
    if-gt v8, v5, :cond_2e

    #@87
    .line 298
    invoke-virtual {v2}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    #@8a
    move-result v9

    #@8b
    mul-int/2addr v9, v8

    #@8c
    .line 299
    invoke-virtual {v2, v9}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    #@8f
    move-result-object v9

    #@90
    if-nez v9, :cond_93

    #@92
    goto :goto_ed

    #@93
    .line 303
    :cond_93
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    #@96
    move-result v10

    #@97
    iget-object v11, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@99
    # getter for: Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;
    invoke-static {v11}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    #@9c
    move-result-object v11

    #@9d
    iget-object v11, v11, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@9f
    invoke-virtual {v11}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    #@a2
    move-result v11

    #@a3
    add-int/2addr v10, v11

    #@a4
    .line 304
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    #@a7
    move-result v9

    #@a8
    iget-object v11, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@aa
    # getter for: Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;
    invoke-static {v11}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    #@ad
    move-result-object v11

    #@ae
    iget-object v11, v11, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@b0
    invoke-virtual {v11}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    #@b3
    move-result v11

    #@b4
    sub-int/2addr v9, v11

    #@b5
    if-ne v8, v4, :cond_c3

    #@b7
    .line 305
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    #@ba
    move-result v11

    #@bb
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    #@be
    move-result v12

    #@bf
    div-int/lit8 v12, v12, 0x2

    #@c1
    add-int/2addr v11, v12

    #@c2
    goto :goto_c4

    #@c3
    :cond_c3
    const/4 v11, 0x0

    #@c4
    :goto_c4
    if-ne v8, v5, :cond_d2

    #@c6
    .line 308
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    #@c9
    move-result v12

    #@ca
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    #@cd
    move-result v13

    #@ce
    div-int/lit8 v13, v13, 0x2

    #@d0
    add-int/2addr v12, v13

    #@d1
    goto :goto_d6

    #@d2
    .line 309
    :cond_d2
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    #@d5
    move-result v12

    #@d6
    :goto_d6
    int-to-float v14, v11

    #@d7
    int-to-float v15, v10

    #@d8
    int-to-float v10, v12

    #@d9
    int-to-float v9, v9

    #@da
    .line 310
    iget-object v11, v0, Lcom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    #@dc
    # getter for: Lcom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;
    invoke-static {v11}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    #@df
    move-result-object v11

    #@e0
    iget-object v11, v11, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    #@e2
    move-object/from16 v13, p1

    #@e4
    move/from16 v16, v10

    #@e6
    move/from16 v17, v9

    #@e8
    move-object/from16 v18, v11

    #@ea
    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@ed
    :goto_ed
    add-int/lit8 v8, v8, 0x1

    #@ef
    goto :goto_85

    #@f0
    :cond_f0
    :goto_f0
    return-void
.end method
