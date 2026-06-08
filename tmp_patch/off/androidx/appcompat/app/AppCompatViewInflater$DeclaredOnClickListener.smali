.class Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatViewInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeclaredOnClickListener"
.end annotation


# instance fields
.field private final mHostView:Landroid/view/View;

.field private final mMethodName:Ljava/lang/String;

.field private mResolvedContext:Landroid/content/Context;

.field private mResolvedMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    #@0
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 430
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@5
    .line 431
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    #@7
    return-void
.end method

.method private resolveMethod(Landroid/content/Context;)V
    .registers 7

    #@0
    :goto_0
    if-eqz p1, :cond_2e

    #@2
    .line 454
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_21

    #@8
    .line 455
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    #@e
    const/4 v2, 0x1

    #@f
    new-array v2, v2, [Ljava/lang/Class;

    #@11
    const-class v3, Landroid/view/View;

    #@13
    const/4 v4, 0x0

    #@14
    aput-object v3, v2, v4

    #@16
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@19
    move-result-object v0

    #@1a
    if-eqz v0, :cond_21

    #@1c
    .line 457
    iput-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    #@1e
    .line 458
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;
    :try_end_20
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_20} :catch_21

    #@20
    return-void

    #@21
    .line 466
    :catch_21
    :cond_21
    instance-of v0, p1, Landroid/content/ContextWrapper;

    #@23
    if-eqz v0, :cond_2c

    #@25
    .line 467
    check-cast p1, Landroid/content/ContextWrapper;

    #@27
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@2a
    move-result-object p1

    #@2b
    goto :goto_0

    #@2c
    :cond_2c
    const/4 p1, 0x0

    #@2d
    goto :goto_0

    #@2e
    .line 474
    :cond_2e
    iget-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@33
    move-result p1

    #@34
    const/4 v0, -0x1

    #@35
    if-ne p1, v0, :cond_3a

    #@37
    const-string p1, ""

    #@39
    goto :goto_5d

    #@3a
    .line 476
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    #@3c
    const-string v1, " with id \'"

    #@3e
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@41
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@43
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@4e
    move-result-object p1

    #@4f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object p1

    #@53
    const-string v0, "\'"

    #@55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object p1

    #@59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object p1

    #@5d
    .line 477
    :goto_5d
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5f
    new-instance v1, Ljava/lang/StringBuilder;

    #@61
    const-string v2, "Could not find method "

    #@63
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@66
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    #@68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    const-string v2, "(View) in a parent or ancestor Context for android:onClick attribute defined on view "

    #@6e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    iget-object v2, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@74
    .line 479
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object p1

    #@80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object p1

    #@84
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@87
    throw v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    #@0
    .line 436
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_d

    #@4
    .line 437
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@9
    move-result-object v0

    #@a
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->resolveMethod(Landroid/content/Context;)V

    #@d
    .line 441
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    #@f
    iget-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;

    #@11
    const/4 v2, 0x1

    #@12
    new-array v2, v2, [Ljava/lang/Object;

    #@14
    const/4 v3, 0x0

    #@15
    aput-object p1, v2, v3

    #@17
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_1a} :catch_24
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_1a} :catch_1b

    #@1a
    return-void

    #@1b
    :catch_1b
    move-exception p1

    #@1c
    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    #@1e
    const-string v1, "Could not execute method for android:onClick"

    #@20
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v0

    #@24
    :catch_24
    move-exception p1

    #@25
    .line 443
    new-instance v0, Ljava/lang/IllegalStateException;

    #@27
    const-string v1, "Could not execute non-public method for android:onClick"

    #@29
    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2c
    throw v0
.end method
