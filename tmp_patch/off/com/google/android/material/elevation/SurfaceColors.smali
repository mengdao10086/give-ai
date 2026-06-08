.class public final enum Lcom/google/android/material/elevation/SurfaceColors;
.super Ljava/lang/Enum;
.source "SurfaceColors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/elevation/SurfaceColors;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_0:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_1:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_2:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_3:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_4:Lcom/google/android/material/elevation/SurfaceColors;

.field public static final enum SURFACE_5:Lcom/google/android/material/elevation/SurfaceColors;


# instance fields
.field private final elevationResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    #@0
    .line 33
    new-instance v0, Lcom/google/android/material/elevation/SurfaceColors;

    #@2
    sget v1, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level0:I

    #@4
    const-string v2, "SURFACE_0"

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    #@a
    sput-object v0, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_0:Lcom/google/android/material/elevation/SurfaceColors;

    #@c
    .line 34
    new-instance v1, Lcom/google/android/material/elevation/SurfaceColors;

    #@e
    sget v2, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level1:I

    #@10
    const-string v4, "SURFACE_1"

    #@12
    const/4 v5, 0x1

    #@13
    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    #@16
    sput-object v1, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_1:Lcom/google/android/material/elevation/SurfaceColors;

    #@18
    .line 35
    new-instance v2, Lcom/google/android/material/elevation/SurfaceColors;

    #@1a
    sget v4, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level2:I

    #@1c
    const-string v6, "SURFACE_2"

    #@1e
    const/4 v7, 0x2

    #@1f
    invoke-direct {v2, v6, v7, v4}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    #@22
    sput-object v2, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_2:Lcom/google/android/material/elevation/SurfaceColors;

    #@24
    .line 36
    new-instance v4, Lcom/google/android/material/elevation/SurfaceColors;

    #@26
    sget v6, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level3:I

    #@28
    const-string v8, "SURFACE_3"

    #@2a
    const/4 v9, 0x3

    #@2b
    invoke-direct {v4, v8, v9, v6}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    #@2e
    sput-object v4, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_3:Lcom/google/android/material/elevation/SurfaceColors;

    #@30
    .line 37
    new-instance v6, Lcom/google/android/material/elevation/SurfaceColors;

    #@32
    sget v8, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level4:I

    #@34
    const-string v10, "SURFACE_4"

    #@36
    const/4 v11, 0x4

    #@37
    invoke-direct {v6, v10, v11, v8}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    #@3a
    sput-object v6, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_4:Lcom/google/android/material/elevation/SurfaceColors;

    #@3c
    .line 38
    new-instance v8, Lcom/google/android/material/elevation/SurfaceColors;

    #@3e
    sget v10, Lcom/google/android/material/R$dimen;->m3_sys_elevation_level5:I

    #@40
    const-string v12, "SURFACE_5"

    #@42
    const/4 v13, 0x5

    #@43
    invoke-direct {v8, v12, v13, v10}, Lcom/google/android/material/elevation/SurfaceColors;-><init>(Ljava/lang/String;II)V

    #@46
    sput-object v8, Lcom/google/android/material/elevation/SurfaceColors;->SURFACE_5:Lcom/google/android/material/elevation/SurfaceColors;

    #@48
    const/4 v10, 0x6

    #@49
    new-array v10, v10, [Lcom/google/android/material/elevation/SurfaceColors;

    #@4b
    aput-object v0, v10, v3

    #@4d
    aput-object v1, v10, v5

    #@4f
    aput-object v2, v10, v7

    #@51
    aput-object v4, v10, v9

    #@53
    aput-object v6, v10, v11

    #@55
    aput-object v8, v10, v13

    #@57
    .line 32
    sput-object v10, Lcom/google/android/material/elevation/SurfaceColors;->$VALUES:[Lcom/google/android/material/elevation/SurfaceColors;

    #@59
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    #@0
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 43
    iput p3, p0, Lcom/google/android/material/elevation/SurfaceColors;->elevationResId:I

    #@5
    return-void
.end method

.method public static getColorForElevation(Landroid/content/Context;F)I
    .registers 5

    #@0
    .line 60
    new-instance v0, Lcom/google/android/material/elevation/ElevationOverlayProvider;

    #@2
    invoke-direct {v0, p0}, Lcom/google/android/material/elevation/ElevationOverlayProvider;-><init>(Landroid/content/Context;)V

    #@5
    sget v1, Lcom/google/android/material/R$attr;->colorSurface:I

    #@7
    const/4 v2, 0x0

    #@8
    .line 61
    invoke-static {p0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/content/Context;II)I

    #@b
    move-result p0

    #@c
    .line 60
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/elevation/ElevationOverlayProvider;->compositeOverlay(IF)I

    #@f
    move-result p0

    #@10
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/elevation/SurfaceColors;
    .registers 2

    #@0
    .line 32
    const-class v0, Lcom/google/android/material/elevation/SurfaceColors;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lcom/google/android/material/elevation/SurfaceColors;

    #@8
    return-object p0
.end method

.method public static values()[Lcom/google/android/material/elevation/SurfaceColors;
    .registers 1

    #@0
    .line 32
    sget-object v0, Lcom/google/android/material/elevation/SurfaceColors;->$VALUES:[Lcom/google/android/material/elevation/SurfaceColors;

    #@2
    invoke-virtual {v0}, [Lcom/google/android/material/elevation/SurfaceColors;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/google/android/material/elevation/SurfaceColors;

    #@8
    return-object v0
.end method


# virtual methods
.method public getColor(Landroid/content/Context;)I
    .registers 4

    #@0
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Lcom/google/android/material/elevation/SurfaceColors;->elevationResId:I

    #@6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    #@9
    move-result v0

    #@a
    .line 51
    invoke-static {p1, v0}, Lcom/google/android/material/elevation/SurfaceColors;->getColorForElevation(Landroid/content/Context;F)I

    #@d
    move-result p1

    #@e
    return p1
.end method
