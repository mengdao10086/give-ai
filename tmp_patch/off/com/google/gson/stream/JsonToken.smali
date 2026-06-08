.class public final enum Lcom/google/gson/stream/JsonToken;
.super Ljava/lang/Enum;
.source "JsonToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/gson/stream/JsonToken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/gson/stream/JsonToken;

.field public static final enum BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

.field public static final enum BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

.field public static final enum BOOLEAN:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_ARRAY:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

.field public static final enum END_OBJECT:Lcom/google/gson/stream/JsonToken;

.field public static final enum NAME:Lcom/google/gson/stream/JsonToken;

.field public static final enum NULL:Lcom/google/gson/stream/JsonToken;

.field public static final enum NUMBER:Lcom/google/gson/stream/JsonToken;

.field public static final enum STRING:Lcom/google/gson/stream/JsonToken;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    #@0
    .line 31
    new-instance v0, Lcom/google/gson/stream/JsonToken;

    #@2
    const-string v1, "BEGIN_ARRAY"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@a
    .line 37
    new-instance v1, Lcom/google/gson/stream/JsonToken;

    #@c
    const-string v3, "END_ARRAY"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;

    #@14
    .line 43
    new-instance v3, Lcom/google/gson/stream/JsonToken;

    #@16
    const-string v5, "BEGIN_OBJECT"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Lcom/google/gson/stream/JsonToken;->BEGIN_OBJECT:Lcom/google/gson/stream/JsonToken;

    #@1e
    .line 49
    new-instance v5, Lcom/google/gson/stream/JsonToken;

    #@20
    const-string v7, "END_OBJECT"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Lcom/google/gson/stream/JsonToken;->END_OBJECT:Lcom/google/gson/stream/JsonToken;

    #@28
    .line 56
    new-instance v7, Lcom/google/gson/stream/JsonToken;

    #@2a
    const-string v9, "NAME"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Lcom/google/gson/stream/JsonToken;->NAME:Lcom/google/gson/stream/JsonToken;

    #@32
    .line 61
    new-instance v9, Lcom/google/gson/stream/JsonToken;

    #@34
    const-string v11, "STRING"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Lcom/google/gson/stream/JsonToken;->STRING:Lcom/google/gson/stream/JsonToken;

    #@3c
    .line 67
    new-instance v11, Lcom/google/gson/stream/JsonToken;

    #@3e
    const-string v13, "NUMBER"

    #@40
    const/4 v14, 0x6

    #@41
    invoke-direct {v11, v13, v14}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v11, Lcom/google/gson/stream/JsonToken;->NUMBER:Lcom/google/gson/stream/JsonToken;

    #@46
    .line 72
    new-instance v13, Lcom/google/gson/stream/JsonToken;

    #@48
    const-string v15, "BOOLEAN"

    #@4a
    const/4 v14, 0x7

    #@4b
    invoke-direct {v13, v15, v14}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    #@4e
    sput-object v13, Lcom/google/gson/stream/JsonToken;->BOOLEAN:Lcom/google/gson/stream/JsonToken;

    #@50
    .line 77
    new-instance v15, Lcom/google/gson/stream/JsonToken;

    #@52
    const-string v14, "NULL"

    #@54
    const/16 v12, 0x8

    #@56
    invoke-direct {v15, v14, v12}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    #@59
    sput-object v15, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    #@5b
    .line 84
    new-instance v14, Lcom/google/gson/stream/JsonToken;

    #@5d
    const-string v12, "END_DOCUMENT"

    #@5f
    const/16 v10, 0x9

    #@61
    invoke-direct {v14, v12, v10}, Lcom/google/gson/stream/JsonToken;-><init>(Ljava/lang/String;I)V

    #@64
    sput-object v14, Lcom/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/google/gson/stream/JsonToken;

    #@66
    const/16 v12, 0xa

    #@68
    new-array v12, v12, [Lcom/google/gson/stream/JsonToken;

    #@6a
    aput-object v0, v12, v2

    #@6c
    aput-object v1, v12, v4

    #@6e
    aput-object v3, v12, v6

    #@70
    aput-object v5, v12, v8

    #@72
    const/4 v0, 0x4

    #@73
    aput-object v7, v12, v0

    #@75
    const/4 v0, 0x5

    #@76
    aput-object v9, v12, v0

    #@78
    const/4 v0, 0x6

    #@79
    aput-object v11, v12, v0

    #@7b
    const/4 v0, 0x7

    #@7c
    aput-object v13, v12, v0

    #@7e
    const/16 v0, 0x8

    #@80
    aput-object v15, v12, v0

    #@82
    aput-object v14, v12, v10

    #@84
    .line 25
    sput-object v12, Lcom/google/gson/stream/JsonToken;->$VALUES:[Lcom/google/gson/stream/JsonToken;

    #@86
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/stream/JsonToken;
    .registers 2

    #@0
    .line 25
    const-class v0, Lcom/google/gson/stream/JsonToken;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lcom/google/gson/stream/JsonToken;

    #@8
    return-object p0
.end method

.method public static values()[Lcom/google/gson/stream/JsonToken;
    .registers 1

    #@0
    .line 25
    sget-object v0, Lcom/google/gson/stream/JsonToken;->$VALUES:[Lcom/google/gson/stream/JsonToken;

    #@2
    invoke-virtual {v0}, [Lcom/google/gson/stream/JsonToken;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/gson/stream/JsonToken;

    #@8
    return-object v0
.end method
