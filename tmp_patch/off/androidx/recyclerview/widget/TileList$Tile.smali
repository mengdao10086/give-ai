.class public Landroidx/recyclerview/widget/TileList$Tile;
.super Ljava/lang/Object;
.source "TileList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/TileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public mItemCount:I

.field public final mItems:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field mNext:Landroidx/recyclerview/widget/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mStartPosition:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 94
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@6
    move-result-object p1

    #@7
    check-cast p1, [Ljava/lang/Object;

    #@9
    check-cast p1, [Ljava/lang/Object;

    #@b
    .line 95
    iput-object p1, p0, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    #@d
    return-void
.end method


# virtual methods
.method containsPosition(I)Z
    .registers 4

    #@0
    .line 99
    iget v0, p0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    #@2
    if-gt v0, p1, :cond_b

    #@4
    iget v1, p0, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    #@6
    add-int/2addr v0, v1

    #@7
    if-ge p1, v0, :cond_b

    #@9
    const/4 p1, 0x1

    #@a
    goto :goto_c

    #@b
    :cond_b
    const/4 p1, 0x0

    #@c
    :goto_c
    return p1
.end method

.method getByPosition(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    #@0
    .line 103
    iget-object v0, p0, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    #@2
    iget v1, p0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    #@4
    sub-int/2addr p1, v1

    #@5
    aget-object p1, v0, p1

    #@7
    return-object p1
.end method
