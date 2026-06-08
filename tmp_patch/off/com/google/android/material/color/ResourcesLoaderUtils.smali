.class final Lcom/google/android/material/color/ResourcesLoaderUtils;
.super Ljava/lang/Object;
.source "ResourcesLoaderUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static addResourcesLoaderToContext(Landroid/content/Context;Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    #@0
    .line 35
    invoke-static {p0, p1}, Lcom/google/android/material/color/ColorResourcesLoaderCreator;->create(Landroid/content/Context;Ljava/util/Map;)Landroid/content/res/loader/ResourcesLoader;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x0

    #@5
    if-eqz p1, :cond_14

    #@7
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a
    move-result-object p0

    #@b
    const/4 v1, 0x1

    #@c
    new-array v2, v1, [Landroid/content/res/loader/ResourcesLoader;

    #@e
    aput-object p1, v2, v0

    #@10
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->addLoaders([Landroid/content/res/loader/ResourcesLoader;)V

    #@13
    return v1

    #@14
    :cond_14
    return v0
.end method

.method static isColorResource(I)Z
    .registers 2

    #@0
    const/16 v0, 0x1c

    #@2
    if-gt v0, p0, :cond_a

    #@4
    const/16 v0, 0x1f

    #@6
    if-gt p0, v0, :cond_a

    #@8
    const/4 p0, 0x1

    #@9
    goto :goto_b

    #@a
    :cond_a
    const/4 p0, 0x0

    #@b
    :goto_b
    return p0
.end method
