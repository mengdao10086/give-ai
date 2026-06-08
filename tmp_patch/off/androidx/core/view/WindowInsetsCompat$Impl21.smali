.class Landroidx/core/view/WindowInsetsCompat$Impl21;
.super Landroidx/core/view/WindowInsetsCompat$Impl20;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl21"
.end annotation


# instance fields
.field private mStableInsets:Landroidx/core/graphics/Insets;


# direct methods
.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 3

    #@0
    .line 1198
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 1195
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    #@6
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl21;)V
    .registers 3

    #@0
    .line 1202
    invoke-direct {p0, p1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl20;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 1195
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    #@6
    .line 1203
    iget-object p1, p2, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    #@8
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    #@a
    return-void
.end method


# virtual methods
.method consumeStableInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    #@0
    .line 1214
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    #@2
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method consumeSystemWindowInsets()Landroidx/core/view/WindowInsetsCompat;
    .registers 2

    #@0
    .line 1220
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    #@2
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method final getStableInsets()Landroidx/core/graphics/Insets;
    .registers 5

    #@0
    .line 1226
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    #@2
    if-nez v0, :cond_22

    #@4
    .line 1227
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    #@6
    .line 1228
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    #@9
    move-result v0

    #@a
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    #@c
    .line 1229
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    #@f
    move-result v1

    #@10
    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    #@12
    .line 1230
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    #@15
    move-result v2

    #@16
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    #@18
    .line 1231
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    #@1b
    move-result v3

    #@1c
    .line 1227
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    #@22
    .line 1233
    :cond_22
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    #@24
    return-object v0
.end method

.method isConsumed()Z
    .registers 2

    #@0
    .line 1208
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mPlatformInsets:Landroid/view/WindowInsets;

    #@2
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    .line 1238
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl21;->mStableInsets:Landroidx/core/graphics/Insets;

    #@2
    return-void
.end method
