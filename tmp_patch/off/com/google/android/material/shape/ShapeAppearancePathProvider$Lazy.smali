.class Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;
.super Ljava/lang/Object;
.source "ShapeAppearancePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapeAppearancePathProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lazy"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/android/material/shape/ShapeAppearancePathProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 39
    new-instance v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    #@2
    invoke-direct {v0}, Lcom/google/android/material/shape/ShapeAppearancePathProvider;-><init>()V

    #@5
    sput-object v0, Lcom/google/android/material/shape/ShapeAppearancePathProvider$Lazy;->INSTANCE:Lcom/google/android/material/shape/ShapeAppearancePathProvider;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
