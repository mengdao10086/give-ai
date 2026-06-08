.class final enum Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
.super Ljava/lang/Enum;
.source "QuantizerWu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/utilities/QuantizerWu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/color/utilities/QuantizerWu$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

.field public static final enum BLUE:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

.field public static final enum GREEN:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

.field public static final enum RED:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    #@0
    .line 377
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@2
    const-string v1, "RED"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->RED:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@a
    .line 378
    new-instance v1, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@c
    const-string v3, "GREEN"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->GREEN:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@14
    .line 379
    new-instance v3, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@16
    const-string v5, "BLUE"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->BLUE:Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@1e
    const/4 v5, 0x3

    #@1f
    new-array v5, v5, [Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@21
    aput-object v0, v5, v2

    #@23
    aput-object v1, v5, v4

    #@25
    aput-object v3, v5, v6

    #@27
    .line 376
    sput-object v5, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->$VALUES:[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@29
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
    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
    .registers 2

    #@0
    .line 376
    const-class v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@8
    return-object p0
.end method

.method public static values()[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;
    .registers 1

    #@0
    .line 376
    sget-object v0, Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->$VALUES:[Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@2
    invoke-virtual {v0}, [Lcom/google/android/material/color/utilities/QuantizerWu$Direction;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/android/material/color/utilities/QuantizerWu$Direction;

    #@8
    return-object v0
.end method
