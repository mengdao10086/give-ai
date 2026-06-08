.class Landroidx/core/view/WindowInsetsCompat$Impl28;
.super Landroidx/core/view/WindowInsetsCompat$Impl21;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl28"
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 3

    #@0
    .line 1246
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    #@3
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl28;)V
    .registers 3

    #@0
    .line 1250
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl21;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl21;)V

    #@3
    return-void
.end method


# virtual methods
.method consumeDisplayCutout()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    #@0
    .line 1262
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    #@2
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 1268
    :cond_4
    instance-of v1, p1, Landroidx/core/view/WindowInsetsCompat$Impl28;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 1269
    :cond_a
    check-cast p1, Landroidx/core/view/WindowInsetsCompat$Impl28;

    #@c
    .line 1271
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    #@e
    iget-object v3, p1, Landroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    #@10
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_21

    #@16
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl28;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    #@18
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat$Impl28;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    #@1a
    .line 1272
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result p1

    #@1e
    if-eqz p1, :cond_21

    #@20
    goto :goto_22

    #@21
    :cond_21
    move v0, v2

    #@22
    :goto_22
    return v0
.end method

.method getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;
    .registers 2

    #@0
    .line 1256
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    #@2
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroidx/core/view/DisplayCutoutCompat;->wrap(Landroid/view/DisplayCutout;)Landroidx/core/view/DisplayCutoutCompat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 1277
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl28;->mPlatformInsets:Landroid/view/WindowInsets;

    #@2
    invoke-virtual {v0}, Landroid/view/WindowInsets;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method
