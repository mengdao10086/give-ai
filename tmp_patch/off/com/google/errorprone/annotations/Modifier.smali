.class public final enum Lcom/google/errorprone/annotations/Modifier;
.super Ljava/lang/Enum;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/errorprone/annotations/Modifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/errorprone/annotations/Modifier;

.field public static final enum ABSTRACT:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum DEFAULT:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum FINAL:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum NATIVE:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum PRIVATE:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum PROTECTED:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum PUBLIC:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum STATIC:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum STRICTFP:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum SYNCHRONIZED:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum TRANSIENT:Lcom/google/errorprone/annotations/Modifier;

.field public static final enum VOLATILE:Lcom/google/errorprone/annotations/Modifier;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    #@0
    .line 30
    new-instance v0, Lcom/google/errorprone/annotations/Modifier;

    #@2
    const-string v1, "PUBLIC"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lcom/google/errorprone/annotations/Modifier;->PUBLIC:Lcom/google/errorprone/annotations/Modifier;

    #@a
    .line 31
    new-instance v1, Lcom/google/errorprone/annotations/Modifier;

    #@c
    const-string v3, "PROTECTED"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Lcom/google/errorprone/annotations/Modifier;->PROTECTED:Lcom/google/errorprone/annotations/Modifier;

    #@14
    .line 32
    new-instance v3, Lcom/google/errorprone/annotations/Modifier;

    #@16
    const-string v5, "PRIVATE"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Lcom/google/errorprone/annotations/Modifier;->PRIVATE:Lcom/google/errorprone/annotations/Modifier;

    #@1e
    .line 33
    new-instance v5, Lcom/google/errorprone/annotations/Modifier;

    #@20
    const-string v7, "ABSTRACT"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Lcom/google/errorprone/annotations/Modifier;->ABSTRACT:Lcom/google/errorprone/annotations/Modifier;

    #@28
    .line 34
    new-instance v7, Lcom/google/errorprone/annotations/Modifier;

    #@2a
    const-string v9, "DEFAULT"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Lcom/google/errorprone/annotations/Modifier;->DEFAULT:Lcom/google/errorprone/annotations/Modifier;

    #@32
    .line 35
    new-instance v9, Lcom/google/errorprone/annotations/Modifier;

    #@34
    const-string v11, "STATIC"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Lcom/google/errorprone/annotations/Modifier;->STATIC:Lcom/google/errorprone/annotations/Modifier;

    #@3c
    .line 36
    new-instance v11, Lcom/google/errorprone/annotations/Modifier;

    #@3e
    const-string v13, "FINAL"

    #@40
    const/4 v14, 0x6

    #@41
    invoke-direct {v11, v13, v14}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v11, Lcom/google/errorprone/annotations/Modifier;->FINAL:Lcom/google/errorprone/annotations/Modifier;

    #@46
    .line 37
    new-instance v13, Lcom/google/errorprone/annotations/Modifier;

    #@48
    const-string v15, "TRANSIENT"

    #@4a
    const/4 v14, 0x7

    #@4b
    invoke-direct {v13, v15, v14}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@4e
    sput-object v13, Lcom/google/errorprone/annotations/Modifier;->TRANSIENT:Lcom/google/errorprone/annotations/Modifier;

    #@50
    .line 38
    new-instance v15, Lcom/google/errorprone/annotations/Modifier;

    #@52
    const-string v14, "VOLATILE"

    #@54
    const/16 v12, 0x8

    #@56
    invoke-direct {v15, v14, v12}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@59
    sput-object v15, Lcom/google/errorprone/annotations/Modifier;->VOLATILE:Lcom/google/errorprone/annotations/Modifier;

    #@5b
    .line 39
    new-instance v14, Lcom/google/errorprone/annotations/Modifier;

    #@5d
    const-string v12, "SYNCHRONIZED"

    #@5f
    const/16 v10, 0x9

    #@61
    invoke-direct {v14, v12, v10}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@64
    sput-object v14, Lcom/google/errorprone/annotations/Modifier;->SYNCHRONIZED:Lcom/google/errorprone/annotations/Modifier;

    #@66
    .line 40
    new-instance v12, Lcom/google/errorprone/annotations/Modifier;

    #@68
    const-string v10, "NATIVE"

    #@6a
    const/16 v8, 0xa

    #@6c
    invoke-direct {v12, v10, v8}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@6f
    sput-object v12, Lcom/google/errorprone/annotations/Modifier;->NATIVE:Lcom/google/errorprone/annotations/Modifier;

    #@71
    .line 41
    new-instance v10, Lcom/google/errorprone/annotations/Modifier;

    #@73
    const-string v8, "STRICTFP"

    #@75
    const/16 v6, 0xb

    #@77
    invoke-direct {v10, v8, v6}, Lcom/google/errorprone/annotations/Modifier;-><init>(Ljava/lang/String;I)V

    #@7a
    sput-object v10, Lcom/google/errorprone/annotations/Modifier;->STRICTFP:Lcom/google/errorprone/annotations/Modifier;

    #@7c
    const/16 v8, 0xc

    #@7e
    new-array v8, v8, [Lcom/google/errorprone/annotations/Modifier;

    #@80
    aput-object v0, v8, v2

    #@82
    aput-object v1, v8, v4

    #@84
    const/4 v0, 0x2

    #@85
    aput-object v3, v8, v0

    #@87
    const/4 v0, 0x3

    #@88
    aput-object v5, v8, v0

    #@8a
    const/4 v0, 0x4

    #@8b
    aput-object v7, v8, v0

    #@8d
    const/4 v0, 0x5

    #@8e
    aput-object v9, v8, v0

    #@90
    const/4 v0, 0x6

    #@91
    aput-object v11, v8, v0

    #@93
    const/4 v0, 0x7

    #@94
    aput-object v13, v8, v0

    #@96
    const/16 v0, 0x8

    #@98
    aput-object v15, v8, v0

    #@9a
    const/16 v0, 0x9

    #@9c
    aput-object v14, v8, v0

    #@9e
    const/16 v0, 0xa

    #@a0
    aput-object v12, v8, v0

    #@a2
    aput-object v10, v8, v6

    #@a4
    .line 29
    sput-object v8, Lcom/google/errorprone/annotations/Modifier;->$VALUES:[Lcom/google/errorprone/annotations/Modifier;

    #@a6
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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/errorprone/annotations/Modifier;
    .registers 2

    #@0
    .line 29
    const-class v0, Lcom/google/errorprone/annotations/Modifier;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lcom/google/errorprone/annotations/Modifier;

    #@8
    return-object p0
.end method

.method public static values()[Lcom/google/errorprone/annotations/Modifier;
    .registers 1

    #@0
    .line 29
    sget-object v0, Lcom/google/errorprone/annotations/Modifier;->$VALUES:[Lcom/google/errorprone/annotations/Modifier;

    #@2
    invoke-virtual {v0}, [Lcom/google/errorprone/annotations/Modifier;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/errorprone/annotations/Modifier;

    #@8
    return-object v0
.end method
