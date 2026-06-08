.class public final enum Lcom/blankj/utilcode/util/ImageUtils$ImageType;
.super Ljava/lang/Enum;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/blankj/utilcode/util/ImageUtils$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

.field public static final enum TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    #@0
    .line 2348
    new-instance v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@2
    const-string v1, "jpg"

    #@4
    const-string v2, "TYPE_JPG"

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v2, v3, v1}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@a
    sput-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_JPG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@c
    .line 2350
    new-instance v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@e
    const-string v2, "png"

    #@10
    const-string v4, "TYPE_PNG"

    #@12
    const/4 v5, 0x1

    #@13
    invoke-direct {v1, v4, v5, v2}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@16
    sput-object v1, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_PNG:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@18
    .line 2352
    new-instance v2, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@1a
    const-string v4, "gif"

    #@1c
    const-string v6, "TYPE_GIF"

    #@1e
    const/4 v7, 0x2

    #@1f
    invoke-direct {v2, v6, v7, v4}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@22
    sput-object v2, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_GIF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@24
    .line 2354
    new-instance v4, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@26
    const-string v6, "tiff"

    #@28
    const-string v8, "TYPE_TIFF"

    #@2a
    const/4 v9, 0x3

    #@2b
    invoke-direct {v4, v8, v9, v6}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@2e
    sput-object v4, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_TIFF:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@30
    .line 2356
    new-instance v6, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@32
    const-string v8, "bmp"

    #@34
    const-string v10, "TYPE_BMP"

    #@36
    const/4 v11, 0x4

    #@37
    invoke-direct {v6, v10, v11, v8}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@3a
    sput-object v6, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_BMP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@3c
    .line 2358
    new-instance v8, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@3e
    const-string v10, "webp"

    #@40
    const-string v12, "TYPE_WEBP"

    #@42
    const/4 v13, 0x5

    #@43
    invoke-direct {v8, v12, v13, v10}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@46
    sput-object v8, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_WEBP:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@48
    .line 2360
    new-instance v10, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@4a
    const-string v12, "ico"

    #@4c
    const-string v14, "TYPE_ICO"

    #@4e
    const/4 v15, 0x6

    #@4f
    invoke-direct {v10, v14, v15, v12}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@52
    sput-object v10, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_ICO:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@54
    .line 2362
    new-instance v12, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@56
    const-string v14, "unknown"

    #@58
    const-string v15, "TYPE_UNKNOWN"

    #@5a
    const/4 v13, 0x7

    #@5b
    invoke-direct {v12, v15, v13, v14}, Lcom/blankj/utilcode/util/ImageUtils$ImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@5e
    sput-object v12, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->TYPE_UNKNOWN:Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@60
    const/16 v14, 0x8

    #@62
    new-array v14, v14, [Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@64
    aput-object v0, v14, v3

    #@66
    aput-object v1, v14, v5

    #@68
    aput-object v2, v14, v7

    #@6a
    aput-object v4, v14, v9

    #@6c
    aput-object v6, v14, v11

    #@6e
    const/4 v0, 0x5

    #@6f
    aput-object v8, v14, v0

    #@71
    const/4 v0, 0x6

    #@72
    aput-object v10, v14, v0

    #@74
    aput-object v12, v14, v13

    #@76
    .line 2347
    sput-object v14, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->$VALUES:[Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@78
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .line 2366
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 2367
    iput-object p3, p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->value:Ljava/lang/String;

    #@5
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 2

    #@0
    .line 2347
    const-class v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@8
    return-object p0
.end method

.method public static values()[Lcom/blankj/utilcode/util/ImageUtils$ImageType;
    .registers 1

    #@0
    .line 2347
    sget-object v0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->$VALUES:[Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@2
    invoke-virtual {v0}, [Lcom/blankj/utilcode/util/ImageUtils$ImageType;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/blankj/utilcode/util/ImageUtils$ImageType;

    #@8
    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    #@0
    .line 2371
    iget-object v0, p0, Lcom/blankj/utilcode/util/ImageUtils$ImageType;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method
