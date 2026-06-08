.class public Lcom/google/android/material/color/DynamicColorsOptions;
.super Ljava/lang/Object;
.source "DynamicColorsOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/DynamicColorsOptions$Builder;
    }
.end annotation


# static fields
.field private static final ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

.field private static final NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;


# instance fields
.field private contentBasedSeedColor:Ljava/lang/Integer;

.field private final onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

.field private final precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

.field private final themeOverlay:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 41
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$1;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$1;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    #@7
    .line 49
    new-instance v0, Lcom/google/android/material/color/DynamicColorsOptions$2;

    #@9
    invoke-direct {v0}, Lcom/google/android/material/color/DynamicColorsOptions$2;-><init>()V

    #@c
    sput-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    #@e
    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)V
    .registers 3

    #@0
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 61
    # getter for: Lcom/google/android/material/color/DynamicColorsOptions$Builder;->themeOverlay:I
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$000(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->themeOverlay:I

    #@9
    .line 62
    # getter for: Lcom/google/android/material/color/DynamicColorsOptions$Builder;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$100(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Lcom/google/android/material/color/DynamicColors$Precondition;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    #@f
    .line 63
    # getter for: Lcom/google/android/material/color/DynamicColorsOptions$Builder;->onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$200(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    #@15
    .line 64
    # getter for: Lcom/google/android/material/color/DynamicColorsOptions$Builder;->contentBasedSource:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$300(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Landroid/graphics/Bitmap;

    #@18
    move-result-object v0

    #@19
    if-eqz v0, :cond_29

    #@1b
    .line 65
    # getter for: Lcom/google/android/material/color/DynamicColorsOptions$Builder;->contentBasedSource:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions$Builder;->access$300(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)Landroid/graphics/Bitmap;

    #@1e
    move-result-object p1

    #@1f
    invoke-static {p1}, Lcom/google/android/material/color/DynamicColorsOptions;->extractSeedColorFromImage(Landroid/graphics/Bitmap;)I

    #@22
    move-result p1

    #@23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object p1

    #@27
    iput-object p1, p0, Lcom/google/android/material/color/DynamicColorsOptions;->contentBasedSeedColor:Ljava/lang/Integer;

    #@29
    :cond_29
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;Lcom/google/android/material/color/DynamicColorsOptions$1;)V
    .registers 3

    #@0
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/material/color/DynamicColorsOptions;-><init>(Lcom/google/android/material/color/DynamicColorsOptions$Builder;)V

    #@3
    return-void
.end method

.method static synthetic access$400()Lcom/google/android/material/color/DynamicColors$Precondition;
    .registers 1

    #@0
    .line 39
    sget-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->ALWAYS_ALLOW:Lcom/google/android/material/color/DynamicColors$Precondition;

    #@2
    return-object v0
.end method

.method static synthetic access$500()Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;
    .registers 1

    #@0
    .line 39
    sget-object v0, Lcom/google/android/material/color/DynamicColorsOptions;->NO_OP_CALLBACK:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    #@2
    return-object v0
.end method

.method private static extractSeedColorFromImage(Landroid/graphics/Bitmap;)I
    .registers 10

    #@0
    .line 146
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    #@3
    move-result v6

    #@4
    .line 147
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    #@7
    move-result v7

    #@8
    mul-int v0, v6, v7

    #@a
    .line 148
    new-array v8, v0, [I

    #@c
    const/4 v2, 0x0

    #@d
    const/4 v4, 0x0

    #@e
    const/4 v5, 0x0

    #@f
    move-object v0, p0

    #@10
    move-object v1, v8

    #@11
    move v3, v6

    #@12
    .line 149
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    #@15
    const/16 p0, 0x80

    #@17
    .line 150
    invoke-static {v8, p0}, Lcom/google/android/material/color/utilities/QuantizerCelebi;->quantize([II)Ljava/util/Map;

    #@1a
    move-result-object p0

    #@1b
    invoke-static {p0}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;)Ljava/util/List;

    #@1e
    move-result-object p0

    #@1f
    const/4 v0, 0x0

    #@20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@23
    move-result-object p0

    #@24
    check-cast p0, Ljava/lang/Integer;

    #@26
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@29
    move-result p0

    #@2a
    return p0
.end method


# virtual methods
.method public getContentBasedSeedColor()Ljava/lang/Integer;
    .registers 2

    #@0
    .line 90
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->contentBasedSeedColor:Ljava/lang/Integer;

    #@2
    return-object v0
.end method

.method public getOnAppliedCallback()Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;
    .registers 2

    #@0
    .line 84
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->onAppliedCallback:Lcom/google/android/material/color/DynamicColors$OnAppliedCallback;

    #@2
    return-object v0
.end method

.method public getPrecondition()Lcom/google/android/material/color/DynamicColors$Precondition;
    .registers 2

    #@0
    .line 78
    iget-object v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->precondition:Lcom/google/android/material/color/DynamicColors$Precondition;

    #@2
    return-object v0
.end method

.method public getThemeOverlay()I
    .registers 2

    #@0
    .line 72
    iget v0, p0, Lcom/google/android/material/color/DynamicColorsOptions;->themeOverlay:I

    #@2
    return v0
.end method
