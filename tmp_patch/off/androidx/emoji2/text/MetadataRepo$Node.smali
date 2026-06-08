.class Landroidx/emoji2/text/MetadataRepo$Node;
.super Ljava/lang/Object;
.source "MetadataRepo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/MetadataRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Node"
.end annotation


# instance fields
.field private final mChildren:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/emoji2/text/MetadataRepo$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mData:Landroidx/emoji2/text/EmojiMetadata;


# direct methods
.method private constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x1

    #@1
    .line 242
    invoke-direct {p0, v0}, Landroidx/emoji2/text/MetadataRepo$Node;-><init>(I)V

    #@4
    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    #@0
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 247
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    #@8
    iput-object v0, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    #@a
    return-void
.end method


# virtual methods
.method get(I)Landroidx/emoji2/text/MetadataRepo$Node;
    .registers 3

    #@0
    .line 251
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 p1, 0x0

    #@5
    goto :goto_c

    #@6
    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@9
    move-result-object p1

    #@a
    check-cast p1, Landroidx/emoji2/text/MetadataRepo$Node;

    #@c
    :goto_c
    return-object p1
.end method

.method final getData()Landroidx/emoji2/text/EmojiMetadata;
    .registers 2

    #@0
    .line 255
    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/EmojiMetadata;

    #@2
    return-object v0
.end method

.method put(Landroidx/emoji2/text/EmojiMetadata;II)V
    .registers 7

    #@0
    .line 260
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/MetadataRepo$Node;->get(I)Landroidx/emoji2/text/MetadataRepo$Node;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_18

    #@a
    .line 262
    new-instance v0, Landroidx/emoji2/text/MetadataRepo$Node;

    #@c
    invoke-direct {v0}, Landroidx/emoji2/text/MetadataRepo$Node;-><init>()V

    #@f
    .line 263
    iget-object v1, p0, Landroidx/emoji2/text/MetadataRepo$Node;->mChildren:Landroid/util/SparseArray;

    #@11
    invoke-virtual {p1, p2}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    #@14
    move-result v2

    #@15
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@18
    :cond_18
    if-le p3, p2, :cond_20

    #@1a
    add-int/lit8 p2, p2, 0x1

    #@1c
    .line 267
    invoke-virtual {v0, p1, p2, p3}, Landroidx/emoji2/text/MetadataRepo$Node;->put(Landroidx/emoji2/text/EmojiMetadata;II)V

    #@1f
    goto :goto_22

    #@20
    .line 269
    :cond_20
    iput-object p1, v0, Landroidx/emoji2/text/MetadataRepo$Node;->mData:Landroidx/emoji2/text/EmojiMetadata;

    #@22
    :goto_22
    return-void
.end method
