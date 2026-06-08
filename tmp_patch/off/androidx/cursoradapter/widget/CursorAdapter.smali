.class public abstract Landroidx/cursoradapter/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;,
        Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 134
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    const/4 v0, 0x1

    #@4
    .line 135
    invoke-virtual {p0, p1, p2, v0}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    #@7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 4

    #@0
    .line 163
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    .line 164
    invoke-virtual {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    #@6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 4

    #@0
    .line 150
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    #@3
    if-eqz p3, :cond_7

    #@5
    const/4 p3, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p3, 0x2

    #@8
    .line 151
    :goto_8
    invoke-virtual {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    #@b
    return-void
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2

    #@0
    .line 334
    invoke-virtual {p0, p1}, Landroidx/cursoradapter/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    #@3
    move-result-object p1

    #@4
    if-eqz p1, :cond_9

    #@6
    .line 336
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    #@9
    :cond_9
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 2

    #@0
    if-nez p1, :cond_5

    #@2
    const-string p1, ""

    #@4
    goto :goto_9

    #@5
    .line 387
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object p1

    #@9
    :goto_9
    return-object p1
.end method

.method public getCount()I
    .registers 2

    #@0
    .line 216
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    #@2
    if-eqz v0, :cond_d

    #@4
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@6
    if-eqz v0, :cond_d

    #@8
    .line 217
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    #@b
    move-result v0

    #@c
    return v0

    #@d
    :cond_d
    const/4 v0, 0x0

    #@e
    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 2

    #@0
    .line 208
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@2
    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    .line 280
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    #@2
    if-eqz v0, :cond_1b

    #@4
    .line 281
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@6
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@9
    if-nez p2, :cond_13

    #@b
    .line 284
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@d
    iget-object p2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@f
    invoke-virtual {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@12
    move-result-object p2

    #@13
    .line 288
    :cond_13
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@15
    iget-object p3, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@17
    invoke-virtual {p0, p2, p1, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    #@1a
    return-object p2

    #@1b
    :cond_1b
    const/4 p1, 0x0

    #@1c
    return-object p1
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    #@0
    .line 426
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    #@2
    if-nez v0, :cond_b

    #@4
    .line 427
    new-instance v0, Landroidx/cursoradapter/widget/CursorFilter;

    #@6
    invoke-direct {v0, p0}, Landroidx/cursoradapter/widget/CursorFilter;-><init>(Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;)V

    #@9
    iput-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    #@b
    .line 429
    :cond_b
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    #@d
    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .registers 2

    #@0
    .line 442
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    #@2
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    #@0
    .line 228
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    #@2
    if-eqz v0, :cond_e

    #@4
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@6
    if-eqz v0, :cond_e

    #@8
    .line 229
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@b
    .line 230
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@d
    return-object p1

    #@e
    :cond_e
    const/4 p1, 0x0

    #@f
    return-object p1
.end method

.method public getItemId(I)J
    .registers 5

    #@0
    .line 241
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    #@2
    const-wide/16 v1, 0x0

    #@4
    if-eqz v0, :cond_19

    #@6
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@8
    if-eqz v0, :cond_19

    #@a
    .line 242
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@d
    move-result p1

    #@e
    if-eqz p1, :cond_19

    #@10
    .line 243
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@12
    iget v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    #@14
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    #@17
    move-result-wide v0

    #@18
    return-wide v0

    #@19
    :cond_19
    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    .line 262
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    #@2
    if-eqz v0, :cond_33

    #@4
    .line 265
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@6
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1e

    #@c
    if-nez p2, :cond_16

    #@e
    .line 270
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@10
    iget-object p2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@12
    invoke-virtual {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@15
    move-result-object p2

    #@16
    .line 274
    :cond_16
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@18
    iget-object p3, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@1a
    invoke-virtual {p0, p2, p1, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    #@1d
    return-object p2

    #@1e
    .line 266
    :cond_1e
    new-instance p2, Ljava/lang/IllegalStateException;

    #@20
    new-instance p3, Ljava/lang/StringBuilder;

    #@22
    const-string v0, "couldn\'t move cursor to position "

    #@24
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@27
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object p1

    #@2b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object p1

    #@2f
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@32
    throw p2

    #@33
    .line 263
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    #@35
    const-string p2, "this should only be called when the cursor is valid"

    #@37
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw p1
.end method

.method public hasStableIds()Z
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .registers 7

    #@0
    and-int/lit8 v0, p3, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v2, 0x1

    #@4
    if-ne v0, v2, :cond_b

    #@6
    or-int/lit8 p3, p3, 0x2

    #@8
    .line 179
    iput-boolean v2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    #@a
    goto :goto_d

    #@b
    .line 181
    :cond_b
    iput-boolean v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    #@d
    :goto_d
    if-eqz p2, :cond_10

    #@f
    move v1, v2

    #@10
    .line 184
    :cond_10
    iput-object p2, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@12
    .line 185
    iput-boolean v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    #@14
    .line 186
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    #@16
    if-eqz v1, :cond_1f

    #@18
    const-string p1, "_id"

    #@1a
    .line 187
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@1d
    move-result p1

    #@1e
    goto :goto_20

    #@1f
    :cond_1f
    const/4 p1, -0x1

    #@20
    :goto_20
    iput p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    #@22
    const/4 p1, 0x2

    #@23
    and-int/2addr p3, p1

    #@24
    if-ne p3, p1, :cond_35

    #@26
    .line 189
    new-instance p1, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    #@28
    invoke-direct {p1, p0}, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;-><init>(Landroidx/cursoradapter/widget/CursorAdapter;)V

    #@2b
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    #@2d
    .line 190
    new-instance p1, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;

    #@2f
    invoke-direct {p1, p0}, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroidx/cursoradapter/widget/CursorAdapter;)V

    #@32
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@34
    goto :goto_3a

    #@35
    :cond_35
    const/4 p1, 0x0

    #@36
    .line 192
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    #@38
    .line 193
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@3a
    :goto_3a
    if-eqz v1, :cond_4a

    #@3c
    .line 197
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    #@3e
    if-eqz p1, :cond_43

    #@40
    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    #@43
    .line 198
    :cond_43
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@45
    if-eqz p1, :cond_4a

    #@47
    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@4a
    :cond_4a
    return-void
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    if-eqz p3, :cond_4

    #@2
    const/4 p3, 0x1

    #@3
    goto :goto_5

    #@4
    :cond_4
    const/4 p3, 0x2

    #@5
    .line 173
    :goto_5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    #@8
    return-void
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 4

    #@0
    .line 314
    invoke-virtual {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .registers 2

    #@0
    .line 469
    iget-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    #@2
    if-eqz v0, :cond_16

    #@4
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@6
    if-eqz v0, :cond_16

    #@8
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_16

    #@e
    .line 471
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@10
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    #@13
    move-result v0

    #@14
    iput-boolean v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    #@16
    :cond_16
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 3

    #@0
    .line 417
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 418
    invoke-interface {v0, p1}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    #@7
    move-result-object p1

    #@8
    return-object p1

    #@9
    .line 421
    :cond_9
    iget-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@b
    return-object p1
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .registers 2

    #@0
    .line 458
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    #@2
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 4

    #@0
    .line 351
    iget-object v0, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@2
    if-ne p1, v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    return-object p1

    #@6
    :cond_6
    if-eqz v0, :cond_16

    #@8
    .line 356
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    #@a
    if-eqz v1, :cond_f

    #@c
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    #@f
    .line 357
    :cond_f
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@11
    if-eqz v1, :cond_16

    #@13
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@16
    .line 359
    :cond_16
    iput-object p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    #@18
    if-eqz p1, :cond_37

    #@1a
    .line 361
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    #@1c
    if-eqz v1, :cond_21

    #@1e
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    #@21
    .line 362
    :cond_21
    iget-object v1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    #@23
    if-eqz v1, :cond_28

    #@25
    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@28
    :cond_28
    const-string v1, "_id"

    #@2a
    .line 363
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@2d
    move-result p1

    #@2e
    iput p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    #@30
    const/4 p1, 0x1

    #@31
    .line 364
    iput-boolean p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    #@33
    .line 366
    invoke-virtual {p0}, Landroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetChanged()V

    #@36
    goto :goto_40

    #@37
    :cond_37
    const/4 p1, -0x1

    #@38
    .line 368
    iput p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    #@3a
    const/4 p1, 0x0

    #@3b
    .line 369
    iput-boolean p1, p0, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    #@3d
    .line 371
    invoke-virtual {p0}, Landroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetInvalidated()V

    #@40
    :goto_40
    return-object v0
.end method
