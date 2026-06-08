.class Landroidx/core/view/WindowInsetsCompat$Impl20;
.super Landroidx/core/view/WindowInsetsCompat$Impl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# static fields
.field private static sAttachInfoClass:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sAttachInfoField:Ljava/lang/reflect/Field; = null

.field private static sGetViewRootImplMethod:Ljava/lang/reflect/Method; = null

.field private static sVisibleInsetsField:Ljava/lang/reflect/Field; = null

.field private static sVisibleRectReflectionFetched:Z = false


# instance fields
.field private mOverriddenInsets:[Landroidx/core/graphics/Insets;

.field final mPlatformInsets:Landroid/view/WindowInsets;

.field mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

.field private mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

.field private mSystemWindowInsets:Landroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .registers 3

    #@0
    .line 898
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    #@3
    const/4 p1, 0x0

    #@4
    .line 892
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    #@6
    .line 899
    iput-object p2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@8
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$Impl20;)V
    .registers 4

    #@0
    .line 903
    new-instance v0, Landroid/view/WindowInsets;

    #@2
    iget-object p2, p2, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@4
    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    #@7
    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    #@a
    return-void
.end method

.method private getInsets(IZ)Landroidx/core/graphics/Insets;
    .registers 6

    #@0
    .line 940
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@2
    const/4 v1, 0x1

    #@3
    :goto_3
    const/16 v2, 0x100

    #@5
    if-gt v1, v2, :cond_17

    #@7
    and-int v2, p1, v1

    #@9
    if-nez v2, :cond_c

    #@b
    goto :goto_14

    #@c
    .line 945
    :cond_c
    invoke-virtual {p0, v1, p2}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Landroidx/core/graphics/Insets;

    #@f
    move-result-object v2

    #@10
    invoke-static {v0, v2}, Landroidx/core/graphics/Insets;->max(Landroidx/core/graphics/Insets;Landroidx/core/graphics/Insets;)Landroidx/core/graphics/Insets;

    #@13
    move-result-object v0

    #@14
    :goto_14
    shl-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_3

    #@17
    :cond_17
    return-object v0
.end method

.method private getRootStableInsets()Landroidx/core/graphics/Insets;
    .registers 2

    #@0
    .line 1102
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    #@2
    if-eqz v0, :cond_9

    #@4
    .line 1103
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getStableInsets()Landroidx/core/graphics/Insets;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 1105
    :cond_9
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@b
    return-object v0
.end method

.method private getVisibleInsets(Landroid/view/View;)Landroidx/core/graphics/Insets;
    .registers 6

    #@0
    const-string v0, "WindowInsetsCompat"

    #@2
    .line 1126
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    #@4
    const/16 v2, 0x1e

    #@6
    if-ge v1, v2, :cond_5e

    #@8
    .line 1130
    sget-boolean v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    #@a
    if-nez v1, :cond_f

    #@c
    .line 1131
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Impl20;->loadReflectionField()V

    #@f
    .line 1134
    :cond_f
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    #@11
    const/4 v2, 0x0

    #@12
    if-eqz v1, :cond_5d

    #@14
    sget-object v3, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    #@16
    if-eqz v3, :cond_5d

    #@18
    sget-object v3, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    #@1a
    if-nez v3, :cond_1d

    #@1c
    goto :goto_5d

    #@1d
    :cond_1d
    const/4 v3, 0x0

    #@1e
    :try_start_1e
    new-array v3, v3, [Ljava/lang/Object;

    #@20
    .line 1141
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object p1

    #@24
    if-nez p1, :cond_31

    #@26
    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    #@28
    .line 1143
    new-instance v1, Ljava/lang/NullPointerException;

    #@2a
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@2d
    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@30
    return-object v2

    #@31
    .line 1149
    :cond_31
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    #@33
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object p1

    #@37
    .line 1150
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    #@39
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object p1

    #@3d
    check-cast p1, Landroid/graphics/Rect;

    #@3f
    if-eqz p1, :cond_45

    #@41
    .line 1151
    invoke-static {p1}, Landroidx/core/graphics/Insets;->of(Landroid/graphics/Rect;)Landroidx/core/graphics/Insets;

    #@44
    move-result-object v2
    :try_end_45
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1e .. :try_end_45} :catch_46

    #@45
    :cond_45
    return-object v2

    #@46
    :catch_46
    move-exception p1

    #@47
    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    const-string v3, "Failed to get visible insets. (Reflection error). "

    #@4b
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@4e
    .line 1155
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v1

    #@5a
    .line 1154
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5d
    :cond_5d
    :goto_5d
    return-object v2

    #@5e
    .line 1127
    :cond_5e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@60
    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    #@62
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@65
    throw p1
.end method

.method private static loadReflectionField()V
    .registers 4

    #@0
    const/4 v0, 0x1

    #@1
    .line 1171
    :try_start_1
    const-class v1, Landroid/view/View;

    #@3
    const-string v2, "getViewRootImpl"

    #@5
    const/4 v3, 0x0

    #@6
    new-array v3, v3, [Ljava/lang/Class;

    #@8
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@b
    move-result-object v1

    #@c
    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sGetViewRootImplMethod:Ljava/lang/reflect/Method;

    #@e
    const-string v1, "android.view.View$AttachInfo"

    #@10
    .line 1172
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@13
    move-result-object v1

    #@14
    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoClass:Ljava/lang/Class;

    #@16
    const-string v2, "mVisibleInsets"

    #@18
    .line 1173
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1b
    move-result-object v1

    #@1c
    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    #@1e
    const-string v1, "android.view.ViewRootImpl"

    #@20
    .line 1174
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@23
    move-result-object v1

    #@24
    const-string v2, "mAttachInfo"

    #@26
    .line 1175
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@29
    move-result-object v1

    #@2a
    sput-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    #@2c
    .line 1176
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleInsetsField:Ljava/lang/reflect/Field;

    #@2e
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    #@31
    .line 1177
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$Impl20;->sAttachInfoField:Ljava/lang/reflect/Field;

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_36
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_36} :catch_37

    #@36
    goto :goto_50

    #@37
    :catch_37
    move-exception v1

    #@38
    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    const-string v3, "Failed to get visible insets. (Reflection error). "

    #@3c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3f
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    const-string v3, "WindowInsetsCompat"

    #@4d
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    .line 1182
    :goto_50
    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$Impl20;->sVisibleRectReflectionFetched:Z

    #@52
    return-void
.end method


# virtual methods
.method copyRootViewBounds(Landroid/view/View;)V
    .registers 2

    #@0
    .line 1111
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getVisibleInsets(Landroid/view/View;)Landroidx/core/graphics/Insets;

    #@3
    move-result-object p1

    #@4
    if-nez p1, :cond_8

    #@6
    .line 1113
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@8
    .line 1115
    :cond_8
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->setRootViewData(Landroidx/core/graphics/Insets;)V

    #@b
    return-void
.end method

.method copyWindowDataInto(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 3

    #@0
    .line 1086
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    #@2
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    #@5
    .line 1087
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    #@7
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->setRootViewData(Landroidx/core/graphics/Insets;)V

    #@a
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 1187
    invoke-super {p0, p1}, Landroidx/core/view/WindowInsetsCompat$Impl;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 p1, 0x0

    #@7
    return p1

    #@8
    .line 1188
    :cond_8
    check-cast p1, Landroidx/core/view/WindowInsetsCompat$Impl20;

    #@a
    .line 1189
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    #@c
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    #@e
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@11
    move-result p1

    #@12
    return p1
.end method

.method public getInsets(I)Landroidx/core/graphics/Insets;
    .registers 3

    #@0
    const/4 v0, 0x0

    #@1
    .line 914
    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Landroidx/core/graphics/Insets;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method protected getInsetsForType(IZ)Landroidx/core/graphics/Insets;
    .registers 7

    #@0
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    if-eq p1, v0, :cond_dd

    #@4
    const/4 v0, 0x2

    #@5
    const/4 v2, 0x0

    #@6
    if-eq p1, v0, :cond_97

    #@8
    const/16 p2, 0x8

    #@a
    if-eq p1, p2, :cond_55

    #@c
    const/16 p2, 0x10

    #@e
    if-eq p1, p2, :cond_50

    #@10
    const/16 p2, 0x20

    #@12
    if-eq p1, p2, :cond_4b

    #@14
    const/16 p2, 0x40

    #@16
    if-eq p1, p2, :cond_46

    #@18
    const/16 p2, 0x80

    #@1a
    if-eq p1, p2, :cond_1f

    #@1c
    .line 1042
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@1e
    return-object p1

    #@1f
    .line 1031
    :cond_1f
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    #@21
    if-eqz p1, :cond_28

    #@23
    .line 1032
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    #@26
    move-result-object p1

    #@27
    goto :goto_2c

    #@28
    .line 1033
    :cond_28
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    #@2b
    move-result-object p1

    #@2c
    :goto_2c
    if-eqz p1, :cond_43

    #@2e
    .line 1035
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetLeft()I

    #@31
    move-result p2

    #@32
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetTop()I

    #@35
    move-result v0

    #@36
    .line 1036
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetRight()I

    #@39
    move-result v1

    #@3a
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetBottom()I

    #@3d
    move-result p1

    #@3e
    .line 1035
    invoke-static {p2, v0, v1, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@41
    move-result-object p1

    #@42
    return-object p1

    #@43
    .line 1038
    :cond_43
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@45
    return-object p1

    #@46
    .line 1027
    :cond_46
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getTappableElementInsets()Landroidx/core/graphics/Insets;

    #@49
    move-result-object p1

    #@4a
    return-object p1

    #@4b
    .line 1023
    :cond_4b
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getMandatorySystemGestureInsets()Landroidx/core/graphics/Insets;

    #@4e
    move-result-object p1

    #@4f
    return-object p1

    #@50
    .line 1019
    :cond_50
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemGestureInsets()Landroidx/core/graphics/Insets;

    #@53
    move-result-object p1

    #@54
    return-object p1

    #@55
    .line 995
    :cond_55
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mOverriddenInsets:[Landroidx/core/graphics/Insets;

    #@57
    if-eqz p1, :cond_5f

    #@59
    .line 996
    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    #@5c
    move-result p2

    #@5d
    aget-object v2, p1, p2

    #@5f
    :cond_5f
    if-eqz v2, :cond_62

    #@61
    return-object v2

    #@62
    .line 1000
    :cond_62
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@65
    move-result-object p1

    #@66
    .line 1001
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    #@69
    move-result-object p2

    #@6a
    .line 1003
    iget v0, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@6c
    iget v2, p2, Landroidx/core/graphics/Insets;->bottom:I

    #@6e
    if-le v0, v2, :cond_77

    #@70
    .line 1006
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@72
    invoke-static {v1, v1, v1, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@75
    move-result-object p1

    #@76
    return-object p1

    #@77
    .line 1007
    :cond_77
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    #@79
    if-eqz p1, :cond_94

    #@7b
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@7d
    .line 1008
    invoke-virtual {p1, v0}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    #@80
    move-result p1

    #@81
    if-nez p1, :cond_94

    #@83
    .line 1011
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    #@85
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@87
    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    #@89
    if-le p1, p2, :cond_94

    #@8b
    .line 1012
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    #@8d
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@8f
    invoke-static {v1, v1, v1, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@92
    move-result-object p1

    #@93
    return-object p1

    #@94
    .line 1015
    :cond_94
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@96
    return-object p1

    #@97
    :cond_97
    if-eqz p2, :cond_be

    #@99
    .line 965
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    #@9c
    move-result-object p1

    #@9d
    .line 966
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Landroidx/core/graphics/Insets;

    #@a0
    move-result-object p2

    #@a1
    .line 967
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    #@a3
    iget v2, p2, Landroidx/core/graphics/Insets;->left:I

    #@a5
    .line 968
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    #@a8
    move-result v0

    #@a9
    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    #@ab
    iget v3, p2, Landroidx/core/graphics/Insets;->right:I

    #@ad
    .line 970
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    #@b0
    move-result v2

    #@b1
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@b3
    iget p2, p2, Landroidx/core/graphics/Insets;->bottom:I

    #@b5
    .line 971
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@b8
    move-result p1

    #@b9
    .line 967
    invoke-static {v0, v1, v2, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@bc
    move-result-object p1

    #@bd
    return-object p1

    #@be
    .line 974
    :cond_be
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@c1
    move-result-object p1

    #@c2
    .line 975
    iget-object p2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    #@c4
    if-eqz p2, :cond_ca

    #@c6
    .line 976
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getStableInsets()Landroidx/core/graphics/Insets;

    #@c9
    move-result-object v2

    #@ca
    .line 979
    :cond_ca
    iget p2, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@cc
    if-eqz v2, :cond_d4

    #@ce
    .line 984
    iget v0, v2, Landroidx/core/graphics/Insets;->bottom:I

    #@d0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@d3
    move-result p2

    #@d4
    .line 986
    :cond_d4
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    #@d6
    iget p1, p1, Landroidx/core/graphics/Insets;->right:I

    #@d8
    invoke-static {v0, v1, p1, p2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@db
    move-result-object p1

    #@dc
    return-object p1

    #@dd
    :cond_dd
    if-eqz p2, :cond_f4

    #@df
    .line 956
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getRootStableInsets()Landroidx/core/graphics/Insets;

    #@e2
    move-result-object p1

    #@e3
    .line 957
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    #@e5
    .line 958
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@e8
    move-result-object p2

    #@e9
    iget p2, p2, Landroidx/core/graphics/Insets;->top:I

    #@eb
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    #@ee
    move-result p1

    #@ef
    .line 957
    invoke-static {v1, p1, v1, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@f2
    move-result-object p1

    #@f3
    return-object p1

    #@f4
    .line 960
    :cond_f4
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@f7
    move-result-object p1

    #@f8
    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    #@fa
    invoke-static {v1, p1, v1, v1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@fd
    move-result-object p1

    #@fe
    return-object p1
.end method

.method public getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;
    .registers 3

    #@0
    const/4 v0, 0x1

    #@1
    .line 920
    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsets(IZ)Landroidx/core/graphics/Insets;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method

.method final getSystemWindowInsets()Landroidx/core/graphics/Insets;
    .registers 5

    #@0
    .line 1064
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    #@2
    if-nez v0, :cond_22

    #@4
    .line 1065
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@6
    .line 1066
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    #@9
    move-result v0

    #@a
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@c
    .line 1067
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    #@f
    move-result v1

    #@10
    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@12
    .line 1068
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    #@15
    move-result v2

    #@16
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@18
    .line 1069
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    #@1b
    move-result v3

    #@1c
    .line 1065
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    #@22
    .line 1071
    :cond_22
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mSystemWindowInsets:Landroidx/core/graphics/Insets;

    #@24
    return-object v0
.end method

.method inset(IIII)Landroidx/core/view/WindowInsetsCompat;
    .registers 7

    #@0
    .line 1078
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    #@2
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@4
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    #@b
    .line 1079
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getSystemWindowInsets()Landroidx/core/graphics/Insets;

    #@e
    move-result-object v1

    #@f
    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    #@16
    .line 1080
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getStableInsets()Landroidx/core/graphics/Insets;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    #@1d
    move-result-object p1

    #@1e
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Landroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    #@21
    .line 1081
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    #@24
    move-result-object p1

    #@25
    return-object p1
.end method

.method isRound()Z
    .registers 2

    #@0
    .line 908
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@2
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected isTypeVisible(I)Z
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    if-eq p1, v1, :cond_14

    #@4
    const/4 v2, 0x2

    #@5
    if-eq p1, v2, :cond_14

    #@7
    const/4 v2, 0x4

    #@8
    if-eq p1, v2, :cond_13

    #@a
    const/16 v2, 0x8

    #@c
    if-eq p1, v2, :cond_14

    #@e
    const/16 v2, 0x80

    #@10
    if-eq p1, v2, :cond_14

    #@12
    return v1

    #@13
    :cond_13
    return v0

    #@14
    .line 1052
    :cond_14
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$Impl20;->getInsetsForType(IZ)Landroidx/core/graphics/Insets;

    #@17
    move-result-object p1

    #@18
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    #@1a
    invoke-virtual {p1, v0}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result p1

    #@1e
    xor-int/2addr p1, v1

    #@1f
    return p1
.end method

.method isVisible(I)Z
    .registers 5

    #@0
    const/4 v0, 0x1

    #@1
    move v1, v0

    #@2
    :goto_2
    const/16 v2, 0x100

    #@4
    if-gt v1, v2, :cond_16

    #@6
    and-int v2, p1, v1

    #@8
    if-nez v2, :cond_b

    #@a
    goto :goto_13

    #@b
    .line 930
    :cond_b
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl20;->isTypeVisible(I)Z

    #@e
    move-result v2

    #@f
    if-nez v2, :cond_13

    #@11
    const/4 p1, 0x0

    #@12
    return p1

    #@13
    :cond_13
    :goto_13
    shl-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_2

    #@16
    :cond_16
    return v0
.end method

.method public setOverriddenInsets([Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    .line 1164
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mOverriddenInsets:[Landroidx/core/graphics/Insets;

    #@2
    return-void
.end method

.method setRootViewData(Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    .line 1097
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootViewVisibleInsets:Landroidx/core/graphics/Insets;

    #@2
    return-void
.end method

.method setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    #@0
    .line 1092
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$Impl20;->mRootWindowInsets:Landroidx/core/view/WindowInsetsCompat;

    #@2
    return-void
.end method
