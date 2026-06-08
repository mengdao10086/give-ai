.class public abstract Landroidx/cursoradapter/widget/ResourceCursorAdapter;
.super Landroidx/cursoradapter/widget/CursorAdapter;
.source "ResourceCursorAdapter.java"


# instance fields
.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 54
    invoke-direct {p0, p1, p3}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    #@3
    .line 55
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    #@5
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    #@7
    const-string p2, "layout_inflater"

    #@9
    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Landroid/view/LayoutInflater;

    #@f
    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .registers 5

    #@0
    .line 99
    invoke-direct {p0, p1, p3, p4}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    #@3
    .line 100
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    #@5
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    #@7
    const-string p2, "layout_inflater"

    #@9
    .line 101
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Landroid/view/LayoutInflater;

    #@f
    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .line 82
    invoke-direct {p0, p1, p3, p4}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    #@3
    .line 83
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    #@5
    iput p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    #@7
    const-string p2, "layout_inflater"

    #@9
    .line 84
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object p1

    #@d
    check-cast p1, Landroid/view/LayoutInflater;

    #@f
    iput-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@11
    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    .line 117
    iget-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@2
    iget p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    #@4
    const/4 v0, 0x0

    #@5
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    #@0
    .line 112
    iget-object p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    #@2
    iget p2, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    #@4
    const/4 v0, 0x0

    #@5
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    #@8
    move-result-object p1

    #@9
    return-object p1
.end method

.method public setDropDownViewResource(I)V
    .registers 2

    #@0
    .line 135
    iput p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    #@2
    return-void
.end method

.method public setViewResource(I)V
    .registers 2

    #@0
    .line 126
    iput p1, p0, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    #@2
    return-void
.end method
