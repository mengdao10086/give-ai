.class synthetic Landroidx/constraintlayout/core/parser/CLToken$1;
.super Ljava/lang/Object;
.source "CLToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/parser/CLToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 74
    invoke-static {}, Landroidx/constraintlayout/core/parser/CLToken$Type;->values()[Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    sput-object v0, Landroidx/constraintlayout/core/parser/CLToken$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type:[I

    #@9
    :try_start_9
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->TRUE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@b
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLToken$Type;->ordinal()I

    #@e
    move-result v1

    #@f
    const/4 v2, 0x1

    #@10
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    #@12
    :catch_12
    :try_start_12
    sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type:[I

    #@14
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->FALSE:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLToken$Type;->ordinal()I

    #@19
    move-result v1

    #@1a
    const/4 v2, 0x2

    #@1b
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    #@1d
    :catch_1d
    :try_start_1d
    sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type:[I

    #@1f
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->NULL:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@21
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLToken$Type;->ordinal()I

    #@24
    move-result v1

    #@25
    const/4 v2, 0x3

    #@26
    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    #@28
    :catch_28
    :try_start_28
    sget-object v0, Landroidx/constraintlayout/core/parser/CLToken$1;->$SwitchMap$androidx$constraintlayout$core$parser$CLToken$Type:[I

    #@2a
    sget-object v1, Landroidx/constraintlayout/core/parser/CLToken$Type;->UNKNOWN:Landroidx/constraintlayout/core/parser/CLToken$Type;

    #@2c
    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLToken$Type;->ordinal()I

    #@2f
    move-result v1

    #@30
    const/4 v2, 0x4

    #@31
    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    #@33
    :catch_33
    return-void
.end method
