.class public Lcom/google/android/material/color/HarmonizedColorsOptions;
.super Ljava/lang/Object;
.source "HarmonizedColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;
    }
.end annotation


# instance fields
.field private final colorAttributeToHarmonizeWith:I

.field private final colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

.field private final colorResourceIds:[I


# direct methods
.method private constructor <init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)V
    .registers 3

    #@0
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    # getter for: Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->colorResourceIds:[I
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$000(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)[I

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorResourceIds:[I

    #@9
    .line 52
    # getter for: Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$100(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)Lcom/google/android/material/color/HarmonizedColorAttributes;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    #@f
    .line 53
    # getter for: Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->colorAttributeToHarmonizeWith:I
    invoke-static {p1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->access$200(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)I

    #@12
    move-result p1

    #@13
    iput p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributeToHarmonizeWith:I

    #@15
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;Lcom/google/android/material/color/HarmonizedColorsOptions$1;)V
    .registers 3

    #@0
    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/material/color/HarmonizedColorsOptions;-><init>(Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;)V

    #@3
    return-void
.end method

.method public static createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorsOptions;
    .registers 2

    #@0
    .line 45
    new-instance v0, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;-><init>()V

    #@5
    .line 46
    invoke-static {}, Lcom/google/android/material/color/HarmonizedColorAttributes;->createMaterialDefaults()Lcom/google/android/material/color/HarmonizedColorAttributes;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->setColorAttributes(Lcom/google/android/material/color/HarmonizedColorAttributes;)Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;

    #@c
    move-result-object v0

    #@d
    .line 47
    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorsOptions$Builder;->build()Lcom/google/android/material/color/HarmonizedColorsOptions;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method


# virtual methods
.method public getColorAttributeToHarmonizeWith()I
    .registers 2

    #@0
    .line 75
    iget v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributeToHarmonizeWith:I

    #@2
    return v0
.end method

.method public getColorAttributes()Lcom/google/android/material/color/HarmonizedColorAttributes;
    .registers 2

    #@0
    .line 66
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    #@2
    return-object v0
.end method

.method public getColorResourceIds()[I
    .registers 2

    #@0
    .line 60
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorResourceIds:[I

    #@2
    return-object v0
.end method

.method getThemeOverlayResourceId(I)I
    .registers 3

    #@0
    .line 135
    iget-object v0, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    #@2
    if-eqz v0, :cond_10

    #@4
    invoke-virtual {v0}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_10

    #@a
    .line 136
    iget-object p1, p0, Lcom/google/android/material/color/HarmonizedColorsOptions;->colorAttributes:Lcom/google/android/material/color/HarmonizedColorAttributes;

    #@c
    invoke-virtual {p1}, Lcom/google/android/material/color/HarmonizedColorAttributes;->getThemeOverlay()I

    #@f
    move-result p1

    #@10
    :cond_10
    return p1
.end method
