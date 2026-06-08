.class public final enum Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
.super Ljava/lang/Enum;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_2G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_4G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_5G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_ETHERNET:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_NO:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

.field public static final enum NETWORK_WIFI:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    #@0
    .line 61
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@2
    const-string v1, "NETWORK_ETHERNET"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_ETHERNET:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@a
    .line 62
    new-instance v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@c
    const-string v3, "NETWORK_WIFI"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_WIFI:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@14
    .line 63
    new-instance v3, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@16
    const-string v5, "NETWORK_5G"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_5G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@1e
    .line 64
    new-instance v5, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@20
    const-string v7, "NETWORK_4G"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_4G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@28
    .line 65
    new-instance v7, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@2a
    const-string v9, "NETWORK_3G"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_3G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@32
    .line 66
    new-instance v9, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@34
    const-string v11, "NETWORK_2G"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_2G:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@3c
    .line 67
    new-instance v11, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@3e
    const-string v13, "NETWORK_UNKNOWN"

    #@40
    const/4 v14, 0x6

    #@41
    invoke-direct {v11, v13, v14}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v11, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_UNKNOWN:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@46
    .line 68
    new-instance v13, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@48
    const-string v15, "NETWORK_NO"

    #@4a
    const/4 v14, 0x7

    #@4b
    invoke-direct {v13, v15, v14}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;-><init>(Ljava/lang/String;I)V

    #@4e
    sput-object v13, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->NETWORK_NO:Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@50
    const/16 v15, 0x8

    #@52
    new-array v15, v15, [Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@54
    aput-object v0, v15, v2

    #@56
    aput-object v1, v15, v4

    #@58
    aput-object v3, v15, v6

    #@5a
    aput-object v5, v15, v8

    #@5c
    aput-object v7, v15, v10

    #@5e
    aput-object v9, v15, v12

    #@60
    const/4 v0, 0x6

    #@61
    aput-object v11, v15, v0

    #@63
    aput-object v13, v15, v14

    #@65
    .line 60
    sput-object v15, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->$VALUES:[Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@67
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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .registers 2

    #@0
    .line 60
    const-class v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@8
    return-object p0
.end method

.method public static values()[Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;
    .registers 1

    #@0
    .line 60
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->$VALUES:[Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@2
    invoke-virtual {v0}, [Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/blankj/utilcode/util/NetworkUtils$NetworkType;

    #@8
    return-object v0
.end method
