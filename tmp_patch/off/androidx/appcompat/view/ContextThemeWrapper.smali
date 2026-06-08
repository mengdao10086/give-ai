.class public Landroidx/appcompat/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/ContextThemeWrapper$Api17Impl;
    }
.end annotation


# static fields
.field private static sEmptyConfig:Landroid/content/res/Configuration;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 55
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    #@0
    .line 70
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@3
    .line 71
    iput p2, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    #@5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .registers 3

    #@0
    .line 84
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    #@3
    .line 85
    iput-object p2, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@5
    return-void
.end method

.method private getResourcesInternal()Landroid/content/res/Resources;
    .registers 2

    #@0
    .line 120
    iget-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    if-nez v0, :cond_24

    #@4
    .line 121
    iget-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@6
    if-eqz v0, :cond_1e

    #@8
    iget-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@a
    .line 123
    invoke-static {v0}, Landroidx/appcompat/view/ContextThemeWrapper;->isEmptyConfiguration(Landroid/content/res/Configuration;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_11

    #@10
    goto :goto_1e

    #@11
    .line 129
    :cond_11
    iget-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@13
    .line 130
    invoke-static {p0, v0}, Landroidx/appcompat/view/ContextThemeWrapper$Api17Impl;->createConfigurationContext(Landroidx/appcompat/view/ContextThemeWrapper;Landroid/content/res/Configuration;)Landroid/content/Context;

    #@16
    move-result-object v0

    #@17
    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1a
    move-result-object v0

    #@1b
    iput-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    #@1d
    goto :goto_24

    #@1e
    .line 127
    :cond_1e
    :goto_1e
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    #@24
    .line 139
    :cond_24
    :goto_24
    iget-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    #@26
    return-object v0
.end method

.method private initializeTheme()V
    .registers 4

    #@0
    .line 199
    iget-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@2
    if-nez v0, :cond_6

    #@4
    const/4 v0, 0x1

    #@5
    goto :goto_7

    #@6
    :cond_6
    const/4 v0, 0x0

    #@7
    :goto_7
    if-eqz v0, :cond_22

    #@9
    .line 201
    invoke-virtual {p0}, Landroidx/appcompat/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    #@10
    move-result-object v1

    #@11
    iput-object v1, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@13
    .line 202
    invoke-virtual {p0}, Landroidx/appcompat/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    #@1a
    move-result-object v1

    #@1b
    if-eqz v1, :cond_22

    #@1d
    .line 204
    iget-object v2, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@1f
    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    #@22
    .line 207
    :cond_22
    iget-object v1, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@24
    iget v2, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    #@26
    invoke-virtual {p0, v1, v2, v0}, Landroidx/appcompat/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    #@29
    return-void
.end method

.method private static isEmptyConfiguration(Landroid/content/res/Configuration;)Z
    .registers 3

    #@0
    if-nez p0, :cond_4

    #@2
    const/4 p0, 0x1

    #@3
    return p0

    #@4
    .line 226
    :cond_4
    sget-object v0, Landroidx/appcompat/view/ContextThemeWrapper;->sEmptyConfig:Landroid/content/res/Configuration;

    #@6
    if-nez v0, :cond_12

    #@8
    .line 227
    new-instance v0, Landroid/content/res/Configuration;

    #@a
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@d
    const/4 v1, 0x0

    #@e
    .line 230
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    #@10
    .line 231
    sput-object v0, Landroidx/appcompat/view/ContextThemeWrapper;->sEmptyConfig:Landroid/content/res/Configuration;

    #@12
    .line 234
    :cond_12
    sget-object v0, Landroidx/appcompat/view/ContextThemeWrapper;->sEmptyConfig:Landroid/content/res/Configuration;

    #@14
    invoke-virtual {p0, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@17
    move-result p0

    #@18
    return p0
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    #@0
    .line 104
    iget-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    #@2
    if-nez v0, :cond_18

    #@4
    .line 108
    iget-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@6
    if-nez v0, :cond_10

    #@8
    .line 111
    new-instance v0, Landroid/content/res/Configuration;

    #@a
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@d
    iput-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    #@f
    return-void

    #@10
    .line 109
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    #@12
    const-string v0, "Override configuration has already been set"

    #@14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw p1

    #@18
    .line 105
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    #@1a
    const-string v0, "getResources() or getAssets() has already been called"

    #@1c
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw p1
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 90
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    #@3
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .registers 2

    #@0
    .line 213
    invoke-virtual {p0}, Landroidx/appcompat/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    #@0
    .line 116
    invoke-direct {p0}, Landroidx/appcompat/view/ContextThemeWrapper;->getResourcesInternal()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    #@0
    const-string v0, "layout_inflater"

    #@2
    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_1d

    #@8
    .line 175
    iget-object p1, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    #@a
    if-nez p1, :cond_1a

    #@c
    .line 176
    invoke-virtual {p0}, Landroidx/appcompat/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    #@f
    move-result-object p1

    #@10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@13
    move-result-object p1

    #@14
    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@17
    move-result-object p1

    #@18
    iput-object p1, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    #@1a
    .line 178
    :cond_1a
    iget-object p1, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    #@1c
    return-object p1

    #@1d
    .line 180
    :cond_1d
    invoke-virtual {p0}, Landroidx/appcompat/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@24
    move-result-object p1

    #@25
    return-object p1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .registers 2

    #@0
    .line 160
    iget-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@2
    if-eqz v0, :cond_5

    #@4
    return-object v0

    #@5
    .line 164
    :cond_5
    iget v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    #@7
    if-nez v0, :cond_d

    #@9
    .line 165
    sget v0, Landroidx/appcompat/R$style;->Theme_AppCompat_Light:I

    #@b
    iput v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    #@d
    .line 167
    :cond_d
    invoke-direct {p0}, Landroidx/appcompat/view/ContextThemeWrapper;->initializeTheme()V

    #@10
    .line 169
    iget-object v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    #@12
    return-object v0
.end method

.method public getThemeResId()I
    .registers 2

    #@0
    .line 155
    iget v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    #@2
    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 4

    #@0
    const/4 p3, 0x1

    #@1
    .line 195
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    #@4
    return-void
.end method

.method public setTheme(I)V
    .registers 3

    #@0
    .line 144
    iget v0, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    #@2
    if-eq v0, p1, :cond_9

    #@4
    .line 145
    iput p1, p0, Landroidx/appcompat/view/ContextThemeWrapper;->mThemeResource:I

    #@6
    .line 146
    invoke-direct {p0}, Landroidx/appcompat/view/ContextThemeWrapper;->initializeTheme()V

    #@9
    :cond_9
    return-void
.end method
