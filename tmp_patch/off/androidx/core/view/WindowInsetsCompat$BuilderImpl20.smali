.class Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;
.super Landroidx/core/view/WindowInsetsCompat$BuilderImpl;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl20"
.end annotation


# static fields
.field private static sConstructor:Ljava/lang/reflect/Constructor; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/view/WindowInsets;",
            ">;"
        }
    .end annotation
.end field

.field private static sConstructorFetched:Z = false

.field private static sConsumedField:Ljava/lang/reflect/Field; = null

.field private static sConsumedFieldFetched:Z = false


# instance fields
.field private mPlatformInsets:Landroid/view/WindowInsets;

.field private mStableInsets:Landroidx/core/graphics/Insets;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    #@0
    return-void
.end method

.method constructor <init>()V
    .registers 2

    #@0
    .line 1720
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>()V

    #@3
    .line 1721
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->createWindowInsetsInstance()Landroid/view/WindowInsets;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@9
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .registers 2

    #@0
    .line 1725
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    #@3
    .line 1726
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    #@6
    move-result-object p1

    #@7
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@9
    return-void
.end method

.method private static createWindowInsetsInstance()Landroid/view/WindowInsets;
    .registers 7

    #@0
    .line 1761
    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    #@2
    const/4 v1, 0x1

    #@3
    const-string v2, "WindowInsetsCompat"

    #@5
    if-nez v0, :cond_1a

    #@7
    .line 1763
    :try_start_7
    const-class v0, Landroid/view/WindowInsets;

    #@9
    const-string v3, "CONSUMED"

    #@b
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;
    :try_end_11
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_7 .. :try_end_11} :catch_12

    #@11
    goto :goto_18

    #@12
    :catch_12
    move-exception v0

    #@13
    const-string v3, "Could not retrieve WindowInsets.CONSUMED field"

    #@15
    .line 1765
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    .line 1767
    :goto_18
    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedFieldFetched:Z

    #@1a
    .line 1769
    :cond_1a
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConsumedField:Ljava/lang/reflect/Field;

    #@1c
    const/4 v3, 0x0

    #@1d
    if-eqz v0, :cond_33

    #@1f
    .line 1771
    :try_start_1f
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Landroid/view/WindowInsets;

    #@25
    if-eqz v0, :cond_33

    #@27
    .line 1773
    new-instance v4, Landroid/view/WindowInsets;

    #@29
    invoke-direct {v4, v0}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_2c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1f .. :try_end_2c} :catch_2d

    #@2c
    return-object v4

    #@2d
    :catch_2d
    move-exception v0

    #@2e
    const-string v4, "Could not get value from WindowInsets.CONSUMED field"

    #@30
    .line 1776
    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@33
    .line 1782
    :cond_33
    sget-boolean v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    #@35
    const/4 v4, 0x0

    #@36
    if-nez v0, :cond_4f

    #@38
    .line 1784
    :try_start_38
    const-class v0, Landroid/view/WindowInsets;

    #@3a
    new-array v5, v1, [Ljava/lang/Class;

    #@3c
    const-class v6, Landroid/graphics/Rect;

    #@3e
    aput-object v6, v5, v4

    #@40
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@43
    move-result-object v0

    #@44
    sput-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;
    :try_end_46
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_38 .. :try_end_46} :catch_47

    #@46
    goto :goto_4d

    #@47
    :catch_47
    move-exception v0

    #@48
    const-string v5, "Could not retrieve WindowInsets(Rect) constructor"

    #@4a
    .line 1786
    invoke-static {v2, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    .line 1788
    :goto_4d
    sput-boolean v1, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructorFetched:Z

    #@4f
    .line 1790
    :cond_4f
    sget-object v0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->sConstructor:Ljava/lang/reflect/Constructor;

    #@51
    if-eqz v0, :cond_69

    #@53
    :try_start_53
    new-array v1, v1, [Ljava/lang/Object;

    #@55
    .line 1792
    new-instance v5, Landroid/graphics/Rect;

    #@57
    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    #@5a
    aput-object v5, v1, v4

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    move-result-object v0

    #@60
    check-cast v0, Landroid/view/WindowInsets;
    :try_end_62
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_53 .. :try_end_62} :catch_63

    #@62
    return-object v0

    #@63
    :catch_63
    move-exception v0

    #@64
    const-string v1, "Could not invoke WindowInsets(Rect) constructor"

    #@66
    .line 1794
    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@69
    :cond_69
    return-object v3
.end method


# virtual methods
.method build()Landroidx/core/view/WindowInsetsCompat;
    .registers 3

    #@0
    .line 1745
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->applyInsetTypes()V

    #@3
    .line 1746
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@5
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    #@8
    move-result-object v0

    #@9
    .line 1748
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mInsetsTypeMask:[Landroidx/core/graphics/Insets;

    #@b
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setOverriddenInsets([Landroidx/core/graphics/Insets;)V

    #@e
    .line 1749
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Landroidx/core/graphics/Insets;

    #@10
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setStableInsets(Landroidx/core/graphics/Insets;)V

    #@13
    return-object v0
.end method

.method setStableInsets(Landroidx/core/graphics/Insets;)V
    .registers 2

    #@0
    .line 1739
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mStableInsets:Landroidx/core/graphics/Insets;

    #@2
    return-void
.end method

.method setSystemWindowInsets(Landroidx/core/graphics/Insets;)V
    .registers 6

    #@0
    .line 1731
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@2
    if-eqz v0, :cond_12

    #@4
    .line 1732
    iget v1, p1, Landroidx/core/graphics/Insets;->left:I

    #@6
    iget v2, p1, Landroidx/core/graphics/Insets;->top:I

    #@8
    iget v3, p1, Landroidx/core/graphics/Insets;->right:I

    #@a
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    #@c
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    #@f
    move-result-object p1

    #@10
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$BuilderImpl20;->mPlatformInsets:Landroid/view/WindowInsets;

    #@12
    :cond_12
    return-void
.end method
