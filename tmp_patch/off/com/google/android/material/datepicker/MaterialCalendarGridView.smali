.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;
.source "MaterialCalendarGridView.java"


# instance fields
.field private final dayCompute:Ljava/util/Calendar;

.field private final nestedScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    #@0
    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@3
    .line 43
    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    #@6
    move-result-object p1

    #@7
    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    #@9
    .line 56
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    #@c
    move-result-object p1

    #@d
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    #@10
    move-result p1

    #@11
    if-eqz p1, :cond_1d

    #@13
    .line 57
    sget p1, Lcom/google/android/material/R$id;->cancel_button:I

    #@15
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusLeftId(I)V

    #@18
    .line 58
    sget p1, Lcom/google/android/material/R$id;->confirm_button:I

    #@1a
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusRightId(I)V

    #@1d
    .line 60
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    #@20
    move-result-object p1

    #@21
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isNestedScrollable(Landroid/content/Context;)Z

    #@24
    move-result p1

    #@25
    iput-boolean p1, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    #@27
    .line 61
    new-instance p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;

    #@29
    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    #@2c
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    #@2f
    return-void
.end method

.method private gainFocus(ILandroid/graphics/Rect;)V
    .registers 4

    #@0
    const/16 v0, 0x21

    #@2
    if-ne p1, v0, :cond_10

    #@4
    .line 230
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    #@b
    move-result p1

    #@c
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    #@f
    goto :goto_24

    #@10
    :cond_10
    const/16 v0, 0x82

    #@12
    if-ne p1, v0, :cond_20

    #@14
    .line 232
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    #@17
    move-result-object p1

    #@18
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@1b
    move-result p1

    #@1c
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    #@1f
    goto :goto_24

    #@20
    :cond_20
    const/4 v0, 0x1

    #@21
    .line 234
    invoke-super {p0, v0, p1, p2}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@24
    :goto_24
    return-void
.end method

.method private getChildAtPosition(I)Landroid/view/View;
    .registers 3

    #@0
    .line 239
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getFirstVisiblePosition()I

    #@3
    move-result v0

    #@4
    sub-int/2addr p1, v0

    #@5
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method private static horizontalMidPoint(Landroid/view/View;)I
    .registers 2

    #@0
    .line 254
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    #@7
    move-result p0

    #@8
    div-int/lit8 p0, p0, 0x2

    #@a
    add-int/2addr v0, p0

    #@b
    return v0
.end method

.method private static skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    if-eqz p0, :cond_24

    #@3
    if-eqz p1, :cond_24

    #@5
    if-eqz p2, :cond_24

    #@7
    if-nez p3, :cond_a

    #@9
    goto :goto_24

    #@a
    .line 250
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    #@d
    move-result-wide v1

    #@e
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    #@11
    move-result-wide p1

    #@12
    cmp-long p1, v1, p1

    #@14
    if-gtz p1, :cond_24

    #@16
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    #@19
    move-result-wide p1

    #@1a
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    #@1d
    move-result-wide v1

    #@1e
    cmp-long p0, p1, v1

    #@20
    if-gez p0, :cond_23

    #@22
    goto :goto_24

    #@23
    :cond_23
    const/4 v0, 0x0

    #@24
    :cond_24
    :goto_24
    return v0
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .registers 2

    #@0
    .line 41
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    #@0
    .line 41
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;
    .registers 2

    #@0
    .line 109
    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    #@6
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    #@0
    .line 76
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    #@3
    .line 77
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->notifyDataSetChanged()V

    #@a
    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .registers 28

    #@0
    move-object/from16 v0, p0

    #@2
    .line 126
    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    #@5
    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    #@8
    move-result-object v1

    #@9
    .line 128
    iget-object v2, v1, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    #@b
    .line 129
    iget-object v3, v1, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    #@d
    .line 133
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@10
    move-result v4

    #@11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getFirstVisiblePosition()I

    #@14
    move-result v5

    #@15
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@18
    move-result v4

    #@19
    .line 135
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    #@1c
    move-result v5

    #@1d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getLastVisiblePosition()I

    #@20
    move-result v6

    #@21
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@24
    move-result v5

    #@25
    .line 137
    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    #@28
    move-result-object v6

    #@29
    .line 138
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    #@2c
    move-result-object v7

    #@2d
    .line 140
    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    #@30
    move-result-object v2

    #@31
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v2

    #@35
    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v8

    #@39
    if-eqz v8, :cond_176

    #@3b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v8

    #@3f
    check-cast v8, Landroidx/core/util/Pair;

    #@41
    .line 141
    iget-object v9, v8, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@43
    if-eqz v9, :cond_172

    #@45
    iget-object v9, v8, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@47
    if-nez v9, :cond_4a

    #@49
    goto :goto_35

    #@4a
    .line 144
    :cond_4a
    iget-object v9, v8, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    #@4c
    check-cast v9, Ljava/lang/Long;

    #@4e
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    #@51
    move-result-wide v9

    #@52
    .line 145
    iget-object v8, v8, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    #@54
    check-cast v8, Ljava/lang/Long;

    #@56
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    #@59
    move-result-wide v11

    #@5a
    .line 147
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5d
    move-result-object v8

    #@5e
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@61
    move-result-object v13

    #@62
    invoke-static {v6, v7, v8, v13}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    #@65
    move-result v8

    #@66
    if-eqz v8, :cond_69

    #@68
    goto :goto_35

    #@69
    .line 150
    :cond_69
    invoke-static/range {p0 .. p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    #@6c
    move-result v8

    #@6d
    .line 153
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    #@70
    move-result-wide v13

    #@71
    cmp-long v13, v9, v13

    #@73
    const/4 v14, 0x5

    #@74
    if-gez v13, :cond_98

    #@76
    .line 156
    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/MonthAdapter;->isFirstInRow(I)Z

    #@79
    move-result v9

    #@7a
    if-eqz v9, :cond_7e

    #@7c
    const/4 v9, 0x0

    #@7d
    goto :goto_95

    #@7e
    :cond_7e
    if-nez v8, :cond_8b

    #@80
    add-int/lit8 v9, v4, -0x1

    #@82
    .line 159
    invoke-direct {v0, v9}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    #@85
    move-result-object v9

    #@86
    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    #@89
    move-result v9

    #@8a
    goto :goto_95

    #@8b
    :cond_8b
    add-int/lit8 v9, v4, -0x1

    #@8d
    .line 160
    invoke-direct {v0, v9}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    #@90
    move-result-object v9

    #@91
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    #@94
    move-result v9

    #@95
    :goto_95
    move v10, v9

    #@96
    move v9, v4

    #@97
    goto :goto_af

    #@98
    .line 162
    :cond_98
    iget-object v13, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    #@9a
    invoke-virtual {v13, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@9d
    .line 163
    iget-object v9, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    #@9f
    invoke-virtual {v9, v14}, Ljava/util/Calendar;->get(I)I

    #@a2
    move-result v9

    #@a3
    invoke-virtual {v1, v9}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    #@a6
    move-result v9

    #@a7
    .line 164
    invoke-direct {v0, v9}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    #@aa
    move-result-object v10

    #@ab
    invoke-static {v10}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    #@ae
    move-result v10

    #@af
    .line 169
    :goto_af
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    #@b2
    move-result-wide v16

    #@b3
    cmp-long v13, v11, v16

    #@b5
    if-lez v13, :cond_d8

    #@b7
    .line 172
    invoke-virtual {v1, v5}, Lcom/google/android/material/datepicker/MonthAdapter;->isLastInRow(I)Z

    #@ba
    move-result v11

    #@bb
    if-eqz v11, :cond_c2

    #@bd
    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    #@c0
    move-result v11

    #@c1
    goto :goto_d5

    #@c2
    :cond_c2
    if-nez v8, :cond_cd

    #@c4
    .line 175
    invoke-direct {v0, v5}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    #@c7
    move-result-object v11

    #@c8
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    #@cb
    move-result v11

    #@cc
    goto :goto_d5

    #@cd
    .line 176
    :cond_cd
    invoke-direct {v0, v5}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    #@d0
    move-result-object v11

    #@d1
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    #@d4
    move-result v11

    #@d5
    :goto_d5
    move v12, v11

    #@d6
    move v11, v5

    #@d7
    goto :goto_ef

    #@d8
    .line 178
    :cond_d8
    iget-object v13, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    #@da
    invoke-virtual {v13, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@dd
    .line 179
    iget-object v11, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    #@df
    invoke-virtual {v11, v14}, Ljava/util/Calendar;->get(I)I

    #@e2
    move-result v11

    #@e3
    invoke-virtual {v1, v11}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    #@e6
    move-result v11

    #@e7
    .line 180
    invoke-direct {v0, v11}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    #@ea
    move-result-object v12

    #@eb
    invoke-static {v12}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    #@ee
    move-result v12

    #@ef
    .line 183
    :goto_ef
    invoke-virtual {v1, v9}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    #@f2
    move-result-wide v13

    #@f3
    long-to-int v13, v13

    #@f4
    move v14, v4

    #@f5
    move/from16 v16, v5

    #@f7
    .line 184
    invoke-virtual {v1, v11}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    #@fa
    move-result-wide v4

    #@fb
    long-to-int v4, v4

    #@fc
    :goto_fc
    if-gt v13, v4, :cond_16b

    #@fe
    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    #@101
    move-result v5

    #@102
    mul-int/2addr v5, v13

    #@103
    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    #@106
    move-result v17

    #@107
    add-int v17, v5, v17

    #@109
    add-int/lit8 v15, v17, -0x1

    #@10b
    .line 188
    invoke-direct {v0, v5}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    #@10e
    move-result-object v17

    #@10f
    .line 189
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    #@112
    move-result v18

    #@113
    iget-object v0, v3, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@115
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    #@118
    move-result v0

    #@119
    add-int v0, v18, v0

    #@11b
    .line 190
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    #@11e
    move-result v17

    #@11f
    move-object/from16 v18, v1

    #@121
    iget-object v1, v3, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    #@123
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    #@126
    move-result v1

    #@127
    sub-int v1, v17, v1

    #@129
    if-nez v8, :cond_139

    #@12b
    if-le v5, v9, :cond_12f

    #@12d
    const/4 v5, 0x0

    #@12e
    goto :goto_130

    #@12f
    :cond_12f
    move v5, v10

    #@130
    :goto_130
    if-le v11, v15, :cond_137

    #@132
    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    #@135
    move-result v15

    #@136
    goto :goto_14b

    #@137
    :cond_137
    move v15, v12

    #@138
    goto :goto_14b

    #@139
    :cond_139
    if-le v11, v15, :cond_13d

    #@13b
    const/4 v15, 0x0

    #@13c
    goto :goto_13e

    #@13d
    :cond_13d
    move v15, v12

    #@13e
    :goto_13e
    if-le v5, v9, :cond_145

    #@140
    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    #@143
    move-result v5

    #@144
    goto :goto_146

    #@145
    :cond_145
    move v5, v10

    #@146
    :goto_146
    move/from16 v25, v15

    #@148
    move v15, v5

    #@149
    move/from16 v5, v25

    #@14b
    :goto_14b
    int-to-float v5, v5

    #@14c
    int-to-float v0, v0

    #@14d
    int-to-float v15, v15

    #@14e
    int-to-float v1, v1

    #@14f
    move-object/from16 v17, v2

    #@151
    .line 200
    iget-object v2, v3, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    #@153
    move-object/from16 v19, p1

    #@155
    move/from16 v20, v5

    #@157
    move/from16 v21, v0

    #@159
    move/from16 v22, v15

    #@15b
    move/from16 v23, v1

    #@15d
    move-object/from16 v24, v2

    #@15f
    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@162
    add-int/lit8 v13, v13, 0x1

    #@164
    move-object/from16 v0, p0

    #@166
    move-object/from16 v2, v17

    #@168
    move-object/from16 v1, v18

    #@16a
    goto :goto_fc

    #@16b
    :cond_16b
    move-object/from16 v0, p0

    #@16d
    move v4, v14

    #@16e
    move/from16 v5, v16

    #@170
    goto/16 :goto_35

    #@172
    :cond_172
    move-object/from16 v0, p0

    #@174
    goto/16 :goto_35

    #@176
    :cond_176
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    #@0
    if-eqz p1, :cond_6

    #@2
    .line 222
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->gainFocus(ILandroid/graphics/Rect;)V

    #@5
    goto :goto_a

    #@6
    :cond_6
    const/4 p1, 0x0

    #@7
    .line 224
    invoke-super {p0, p1, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    #@a
    :goto_a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    #@0
    .line 91
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    #@3
    move-result p2

    #@4
    const/4 v0, 0x0

    #@5
    if-nez p2, :cond_8

    #@7
    return v0

    #@8
    .line 95
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    #@b
    move-result p2

    #@c
    const/4 v1, -0x1

    #@d
    const/4 v2, 0x1

    #@e
    if-eq p2, v1, :cond_30

    #@10
    .line 96
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    #@13
    move-result p2

    #@14
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@1b
    move-result v1

    #@1c
    if-lt p2, v1, :cond_1f

    #@1e
    goto :goto_30

    #@1f
    :cond_1f
    const/16 p2, 0x13

    #@21
    if-ne p2, p1, :cond_2f

    #@23
    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    #@26
    move-result-object p1

    #@27
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@2a
    move-result p1

    #@2b
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    #@2e
    return v2

    #@2f
    :cond_2f
    return v0

    #@30
    :cond_30
    :goto_30
    return v2
.end method

.method public onMeasure(II)V
    .registers 4

    #@0
    .line 207
    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    #@2
    if-eqz v0, :cond_1b

    #@4
    const p2, 0xffffff

    #@7
    const/high16 v0, -0x80000000

    #@9
    .line 210
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    #@c
    move-result p2

    #@d
    .line 211
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    #@10
    .line 212
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@13
    move-result-object p1

    #@14
    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getMeasuredHeight()I

    #@17
    move-result p2

    #@18
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    #@1a
    goto :goto_1e

    #@1b
    .line 215
    :cond_1b
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    #@1e
    :goto_1e
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    #@0
    .line 41
    check-cast p1, Landroid/widget/ListAdapter;

    #@2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@5
    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5

    #@0
    .line 114
    instance-of v0, p1, Lcom/google/android/material/datepicker/MonthAdapter;

    #@2
    if-eqz v0, :cond_8

    #@4
    .line 121
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    #@7
    return-void

    #@8
    .line 115
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@a
    const/4 v0, 0x2

    #@b
    new-array v0, v0, [Ljava/lang/Object;

    #@d
    const-class v1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    #@f
    .line 118
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x0

    #@14
    aput-object v1, v0, v2

    #@16
    const-class v1, Lcom/google/android/material/datepicker/MonthAdapter;

    #@18
    .line 119
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x1

    #@1d
    aput-object v1, v0, v2

    #@1f
    const-string v1, "%1$s must have its Adapter set to a %2$s"

    #@21
    .line 116
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw p1
.end method

.method public setSelection(I)V
    .registers 3

    #@0
    .line 82
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@7
    move-result v0

    #@8
    if-ge p1, v0, :cond_16

    #@a
    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    #@d
    move-result-object p1

    #@e
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    #@11
    move-result p1

    #@12
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    #@15
    goto :goto_19

    #@16
    .line 85
    :cond_16
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    #@19
    :goto_19
    return-void
.end method
