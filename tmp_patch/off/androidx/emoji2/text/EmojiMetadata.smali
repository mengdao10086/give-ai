.class public Landroidx/emoji2/text/EmojiMetadata;
.super Ljava/lang/Object;
.source "EmojiMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiMetadata$HasGlyph;
    }
.end annotation


# static fields
.field public static final HAS_GLYPH_ABSENT:I = 0x1

.field public static final HAS_GLYPH_EXISTS:I = 0x2

.field public static final HAS_GLYPH_UNKNOWN:I

.field private static final sMetadataItem:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/emoji2/text/flatbuffer/MetadataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mHasGlyph:I

.field private final mIndex:I

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 73
    new-instance v0, Ljava/lang/ThreadLocal;

    #@2
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    #@5
    sput-object v0, Landroidx/emoji2/text/EmojiMetadata;->sMetadataItem:Ljava/lang/ThreadLocal;

    #@7
    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;I)V
    .registers 4

    #@0
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    const/4 v0, 0x0

    #@4
    .line 89
    iput v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    #@6
    .line 93
    iput-object p1, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    #@8
    .line 94
    iput p2, p0, Landroidx/emoji2/text/EmojiMetadata;->mIndex:I

    #@a
    return-void
.end method

.method private getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .registers 4

    #@0
    .line 132
    sget-object v0, Landroidx/emoji2/text/EmojiMetadata;->sMetadataItem:Ljava/lang/ThreadLocal;

    #@2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    check-cast v1, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@8
    if-nez v1, :cond_12

    #@a
    .line 134
    new-instance v1, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@c
    invoke-direct {v1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    #@f
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    #@12
    .line 144
    :cond_12
    iget-object v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    #@14
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getMetadataList()Landroidx/emoji2/text/flatbuffer/MetadataList;

    #@17
    move-result-object v0

    #@18
    iget v2, p0, Landroidx/emoji2/text/EmojiMetadata;->mIndex:I

    #@1a
    invoke-virtual {v0, v1, v2}, Landroidx/emoji2/text/flatbuffer/MetadataList;->list(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@1d
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .registers 14

    #@0
    .line 108
    iget-object v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    #@2
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    .line 109
    invoke-virtual {p4}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    #@9
    move-result-object v1

    #@a
    .line 110
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@d
    .line 115
    iget v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mIndex:I

    #@f
    mul-int/lit8 v4, v0, 0x2

    #@11
    .line 116
    iget-object v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    #@13
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getEmojiCharArray()[C

    #@16
    move-result-object v3

    #@17
    const/4 v5, 0x2

    #@18
    move-object v2, p1

    #@19
    move v6, p2

    #@1a
    move v7, p3

    #@1b
    move-object v8, p4

    #@1c
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    #@1f
    .line 117
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@22
    return-void
.end method

.method public getCodepointAt(I)I
    .registers 3

    #@0
    .line 230
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepoints(I)I

    #@7
    move-result p1

    #@8
    return p1
.end method

.method public getCodepointsLength()I
    .registers 2

    #@0
    .line 237
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepointsLength()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getCompatAdded()S
    .registers 2

    #@0
    .line 173
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->compatAdded()S

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getHasGlyph()I
    .registers 2

    #@0
    .line 190
    iget v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    #@2
    return v0
.end method

.method public getHeight()S
    .registers 2

    #@0
    .line 166
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->height()S

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getId()I
    .registers 2

    #@0
    .line 152
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->id()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getSdkAdded()S
    .registers 2

    #@0
    .line 180
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->sdkAdded()S

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .registers 2

    #@0
    .line 125
    iget-object v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    #@2
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWidth()S
    .registers 2

    #@0
    .line 159
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->width()S

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isDefaultEmoji()Z
    .registers 2

    #@0
    .line 221
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiMetadata;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->emojiStyle()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public resetHasGlyphCache()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 203
    iput v0, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    #@3
    return-void
.end method

.method public setHasGlyph(Z)V
    .registers 2

    #@0
    if-eqz p1, :cond_4

    #@2
    const/4 p1, 0x2

    #@3
    goto :goto_5

    #@4
    :cond_4
    const/4 p1, 0x1

    #@5
    .line 213
    :goto_5
    iput p1, p0, Landroidx/emoji2/text/EmojiMetadata;->mHasGlyph:I

    #@7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    #@0
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 243
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    const-string v1, ", id:"

    #@e
    .line 244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 245
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiMetadata;->getId()I

    #@14
    move-result v1

    #@15
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    const-string v1, ", codepoints:"

    #@1e
    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 247
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointsLength()I

    #@24
    move-result v1

    #@25
    const/4 v2, 0x0

    #@26
    :goto_26
    if-ge v2, v1, :cond_3b

    #@28
    .line 249
    invoke-virtual {p0, v2}, Landroidx/emoji2/text/EmojiMetadata;->getCodepointAt(I)I

    #@2b
    move-result v3

    #@2c
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    const-string v3, " "

    #@35
    .line 250
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    add-int/lit8 v2, v2, 0x1

    #@3a
    goto :goto_26

    #@3b
    .line 252
    :cond_3b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v0

    #@3f
    return-object v0
.end method
