.class public abstract Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewCallback"
.end annotation


# static fields
.field public static final HINT_SCROLL_ASC:I = 0x2

.field public static final HINT_SCROLL_DESC:I = 0x1

.field public static final HINT_SCROLL_NONE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public extendRangeInto([I[II)V
    .registers 10

    #@0
    const/4 v0, 0x1

    #@1
    .line 577
    aget v1, p1, v0

    #@3
    const/4 v2, 0x0

    #@4
    aget p1, p1, v2

    #@6
    sub-int v3, v1, p1

    #@8
    add-int/2addr v3, v0

    #@9
    .line 578
    div-int/lit8 v4, v3, 0x2

    #@b
    if-ne p3, v0, :cond_f

    #@d
    move v5, v3

    #@e
    goto :goto_10

    #@f
    :cond_f
    move v5, v4

    #@10
    :goto_10
    sub-int/2addr p1, v5

    #@11
    .line 579
    aput p1, p2, v2

    #@13
    const/4 p1, 0x2

    #@14
    if-ne p3, p1, :cond_17

    #@16
    goto :goto_18

    #@17
    :cond_17
    move v3, v4

    #@18
    :goto_18
    add-int/2addr v1, v3

    #@19
    .line 580
    aput v1, p2, v0

    #@1b
    return-void
.end method

.method public abstract getItemRangeInto([I)V
.end method

.method public abstract onDataRefresh()V
.end method

.method public abstract onItemLoaded(I)V
.end method
