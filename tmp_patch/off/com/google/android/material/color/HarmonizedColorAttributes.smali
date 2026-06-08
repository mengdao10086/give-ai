.class public final Lcom/google/android/material/color/HarmonizedColorAttributes;
.super Ljava/lang/Object;
.source "HarmonizedColorAttributes.java"


# static fields
.field private static final HARMONIZED_MATERIAL_ATTRIBUTES:[I


# instance fields
.field private final attributes:[I

.field private final themeOverlay:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    .line 34
    sget v2, Lcom/google/android/material/R$attr;->colorError:I

    #@6
    aput v2, v0, v1

    #@8
    const/4 v1, 0x1

    #@9
    sget v2, Lcom/google/android/material/R$attr;->colorOnError:I

    #@b
    aput v2, v0, v1

    #@d
    const/4 v1, 0x2

    #@e
    sget v2, Lcom/google/android/material/R$attr;->colorErrorContainer:I

    #@10
    aput v2, v0, v1

    #@12
    const/4 v1, 0x3

    #@13
    sget v2, Lcom/google/android/material/R$attr;->colorOnErrorContainer:I

    #@15
    aput v2, v0, v1

    #@17
    sput-object v0, Lcom/google/android/material/color/HarmonizedColorAttributes;->HARMONIZED_MATERIAL_ATTRIBUTES:[I

    #@19
    return-void
.end method

.method private constructor <init>([II)V
    .registers 4

    #@0
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    if-eqz p2, :cond_11

    #@5
    .line 90
    array-length v0, p1

    #@6
    if-eqz v0, :cond_9

    #@8
    goto :goto_11

    #@9
    .line 91
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string p2, "Theme overlay should be used with the accompanying int[] attributes."

    #@d
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw p1

    #@11
    .line 94
    :cond_11
    :goto_11
    iput-object p1, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->attributes:[I

    #@13
    .line 95
    iput p2, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->themeOverlay:I

    #@15
    return-void
.end method

.method public static create([I)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .registers 3

    #@0
    .line 50
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorAttributes;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/google/android/material/color/HarmonizedColorAttributes;-><init>([II)V

    #@6
    return-object v0
.end method

.method public static create([II)Lcom/google/android/material/color/HarmonizedColorAttributes;
    .registers 3

    #@0
    .line 64
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorAttributes;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;-><init>([II)V

    #@5
    return-object v0
.end method

.method public static createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorAttributes;
    .registers 2

    #@0
    .line 85
    sget-object v0, Lcom/google/android/material/color/HarmonizedColorAttributes;->HARMONIZED_MATERIAL_ATTRIBUTES:[I

    #@2
    sget v1, Lcom/google/android/material/R$style;->ThemeOverlay_Material3_HarmonizedColors:I

    #@4
    invoke-static {v0, v1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->create([II)Lcom/google/android/material/color/HarmonizedColorAttributes;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method


# virtual methods
.method public getAttributes()[I
    .registers 2

    #@0
    .line 101
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->attributes:[I

    #@2
    return-object v0
.end method

.method public getThemeOverlay()I
    .registers 2

    #@0
    .line 107
    iget v0, p0, Lcom/google/android/material/color/HarmonizedColorAttributes;->themeOverlay:I

    #@2
    return v0
.end method
