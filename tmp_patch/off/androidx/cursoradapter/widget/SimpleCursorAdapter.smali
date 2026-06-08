.class public Landroidx/cursoradapter/widget/SimpleCursorAdapter;
.super Landroidx/cursoradapter/widget/ResourceCursorAdapter;
.source "SimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;,
        Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I

.field private mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    #@3
    const/4 p1, -0x1

    #@4
    .line 53
    iput p1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    #@6
    .line 70
    iput-object p5, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    #@8
    .line 71
    iput-object p4, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    #@a
    .line 72
    invoke-direct {p0, p3, p4}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    #@d
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .registers 7

    #@0
    .line 95
    invoke-direct {p0, p1, p2, p3, p6}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    #@3
    const/4 p1, -0x1

    #@4
    .line 53
    iput p1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    #@6
    .line 96
    iput-object p5, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    #@8
    .line 97
    iput-object p4, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    #@a
    .line 98
    invoke-direct {p0, p3, p4}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    #@d
    return-void
.end method

.method private findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .registers 7

    #@0
    if-eqz p1, :cond_1e

    #@2
    .line 318
    array-length v0, p2

    #@3
    .line 319
    iget-object v1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    #@5
    if-eqz v1, :cond_a

    #@7
    array-length v1, v1

    #@8
    if-eq v1, v0, :cond_e

    #@a
    .line 320
    :cond_a
    new-array v1, v0, [I

    #@c
    iput-object v1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    #@e
    :cond_e
    const/4 v1, 0x0

    #@f
    :goto_f
    if-ge v1, v0, :cond_21

    #@11
    .line 323
    iget-object v2, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    #@13
    aget-object v3, p2, v1

    #@15
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    #@18
    move-result v3

    #@19
    aput v3, v2, v1

    #@1b
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_f

    #@1e
    :cond_1e
    const/4 p1, 0x0

    #@1f
    .line 326
    iput-object p1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    #@21
    :cond_21
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12

    #@0
    .line 126
    iget-object p2, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;

    #@2
    .line 127
    iget-object v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    #@4
    array-length v1, v0

    #@5
    .line 128
    iget-object v2, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    #@7
    const/4 v3, 0x0

    #@8
    move v4, v3

    #@9
    :goto_9
    if-ge v4, v1, :cond_61

    #@b
    .line 132
    aget v5, v0, v4

    #@d
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@10
    move-result-object v5

    #@11
    if-eqz v5, :cond_5e

    #@13
    if-eqz p2, :cond_1c

    #@15
    .line 136
    aget v6, v2, v4

    #@17
    invoke-interface {p2, v5, p3, v6}, Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    #@1a
    move-result v6

    #@1b
    goto :goto_1d

    #@1c
    :cond_1c
    move v6, v3

    #@1d
    :goto_1d
    if-nez v6, :cond_5e

    #@1f
    .line 140
    aget v6, v2, v4

    #@21
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    if-nez v6, :cond_29

    #@27
    const-string v6, ""

    #@29
    .line 145
    :cond_29
    instance-of v7, v5, Landroid/widget/TextView;

    #@2b
    if-eqz v7, :cond_33

    #@2d
    .line 146
    check-cast v5, Landroid/widget/TextView;

    #@2f
    invoke-virtual {p0, v5, v6}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    #@32
    goto :goto_5e

    #@33
    .line 147
    :cond_33
    instance-of v7, v5, Landroid/widget/ImageView;

    #@35
    if-eqz v7, :cond_3d

    #@37
    .line 148
    check-cast v5, Landroid/widget/ImageView;

    #@39
    invoke-virtual {p0, v5, v6}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    #@3c
    goto :goto_5e

    #@3d
    .line 150
    :cond_3d
    new-instance p1, Ljava/lang/IllegalStateException;

    #@3f
    new-instance p2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@47
    move-result-object p3

    #@48
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4b
    move-result-object p3

    #@4c
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object p2

    #@50
    const-string p3, " is not a  view that can be bounds by this SimpleCursorAdapter"

    #@52
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object p2

    #@56
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object p2

    #@5a
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5d
    throw p1

    #@5e
    :cond_5e
    :goto_5e
    add-int/lit8 v4, v4, 0x1

    #@60
    goto :goto_9

    #@61
    :cond_61
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 4

    #@0
    .line 351
    iput-object p2, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    #@2
    .line 352
    iput-object p3, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    #@4
    .line 356
    invoke-direct {p0, p1, p2}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    #@7
    .line 357
    invoke-super {p0, p1}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    #@a
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .registers 4

    #@0
    .line 299
    iget-object v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 300
    invoke-interface {v0, p1}, Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    #@7
    move-result-object p1

    #@8
    return-object p1

    #@9
    .line 301
    :cond_9
    iget v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    #@b
    const/4 v1, -0x1

    #@c
    if-le v0, v1, :cond_13

    #@e
    .line 302
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@11
    move-result-object p1

    #@12
    return-object p1

    #@13
    .line 305
    :cond_13
    invoke-super {p0, p1}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    #@16
    move-result-object p1

    #@17
    return-object p1
.end method

.method public getCursorToStringConverter()Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;
    .registers 2

    #@0
    .line 267
    iget-object v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

    #@2
    return-object v0
.end method

.method public getStringConversionColumn()I
    .registers 2

    #@0
    .line 233
    iget v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    #@2
    return v0
.end method

.method public getViewBinder()Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;
    .registers 2

    #@0
    .line 167
    iget-object v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;

    #@2
    return-object v0
.end method

.method public setCursorToStringConverter(Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;)V
    .registers 2

    #@0
    .line 283
    iput-object p1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

    #@2
    return-void
.end method

.method public setStringConversionColumn(I)V
    .registers 2

    #@0
    .line 251
    iput p1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    #@2
    return-void
.end method

.method public setViewBinder(Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;)V
    .registers 2

    #@0
    .line 180
    iput-object p1, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;

    #@2
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    #@0
    .line 200
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_8

    #@7
    goto :goto_f

    #@8
    .line 202
    :catch_8
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@b
    move-result-object p2

    #@c
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    #@f
    :goto_f
    return-void
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 3

    #@0
    .line 218
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@3
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 3

    #@0
    .line 335
    iget-object v0, p0, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    #@2
    invoke-direct {p0, p1, v0}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    #@5
    .line 336
    invoke-super {p0, p1}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method
