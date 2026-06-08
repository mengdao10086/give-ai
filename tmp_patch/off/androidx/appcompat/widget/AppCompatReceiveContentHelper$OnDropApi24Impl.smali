.class final Landroidx/appcompat/widget/AppCompatReceiveContentHelper$OnDropApi24Impl;
.super Ljava/lang/Object;
.source "AppCompatReceiveContentHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatReceiveContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnDropApi24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static onDropForTextView(Landroid/view/DragEvent;Landroid/widget/TextView;Landroid/app/Activity;)Z
    .registers 4

    #@0
    .line 123
    invoke-virtual {p2, p0}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    #@3
    .line 124
    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    #@6
    move-result p2

    #@7
    invoke-virtual {p0}, Landroid/view/DragEvent;->getY()F

    #@a
    move-result v0

    #@b
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    #@e
    move-result p2

    #@f
    .line 125
    invoke-virtual {p1}, Landroid/widget/TextView;->beginBatchEdit()V

    #@12
    .line 127
    :try_start_12
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/text/Spannable;

    #@18
    invoke-static {v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    #@1b
    .line 128
    new-instance p2, Landroidx/core/view/ContentInfoCompat$Builder;

    #@1d
    .line 129
    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    #@20
    move-result-object p0

    #@21
    const/4 v0, 0x3

    #@22
    invoke-direct {p2, p0, v0}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    #@25
    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    #@28
    move-result-object p0

    #@29
    .line 130
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_31

    #@2c
    .line 132
    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    #@2f
    const/4 p0, 0x1

    #@30
    return p0

    #@31
    :catchall_31
    move-exception p0

    #@32
    invoke-virtual {p1}, Landroid/widget/TextView;->endBatchEdit()V

    #@35
    .line 133
    throw p0
.end method

.method static onDropForView(Landroid/view/DragEvent;Landroid/view/View;Landroid/app/Activity;)Z
    .registers 4

    #@0
    .line 140
    invoke-virtual {p2, p0}, Landroid/app/Activity;->requestDragAndDropPermissions(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    #@3
    .line 141
    new-instance p2, Landroidx/core/view/ContentInfoCompat$Builder;

    #@5
    .line 142
    invoke-virtual {p0}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    #@8
    move-result-object p0

    #@9
    const/4 v0, 0x3

    #@a
    invoke-direct {p2, p0, v0}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    #@d
    invoke-virtual {p2}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    #@10
    move-result-object p0

    #@11
    .line 143
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    #@14
    const/4 p0, 0x1

    #@15
    return p0
.end method
