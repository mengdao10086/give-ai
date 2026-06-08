.class public Landroidx/core/os/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/UserHandleCompat$Api24Impl;
    }
.end annotation


# static fields
.field private static sGetUserIdMethod:Ljava/lang/reflect/Method;

.field private static sUserHandleConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getGetUserIdMethod()Ljava/lang/reflect/Method;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .line 87
    sget-object v0, Landroidx/core/os/UserHandleCompat;->sGetUserIdMethod:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_19

    #@4
    .line 88
    const-class v0, Landroid/os/UserHandle;

    #@6
    const/4 v1, 0x1

    #@7
    new-array v2, v1, [Ljava/lang/Class;

    #@9
    const/4 v3, 0x0

    #@a
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@c
    aput-object v4, v2, v3

    #@e
    const-string v3, "getUserId"

    #@10
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Landroidx/core/os/UserHandleCompat;->sGetUserIdMethod:Ljava/lang/reflect/Method;

    #@16
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@19
    .line 92
    :cond_19
    sget-object v0, Landroidx/core/os/UserHandleCompat;->sGetUserIdMethod:Ljava/lang/reflect/Method;

    #@1b
    return-object v0
.end method

.method private static getUserHandleConstructor()Ljava/lang/reflect/Constructor;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    #@0
    .line 96
    sget-object v0, Landroidx/core/os/UserHandleCompat;->sUserHandleConstructor:Ljava/lang/reflect/Constructor;

    #@2
    if-nez v0, :cond_17

    #@4
    .line 97
    const-class v0, Landroid/os/UserHandle;

    #@6
    const/4 v1, 0x1

    #@7
    new-array v2, v1, [Ljava/lang/Class;

    #@9
    const/4 v3, 0x0

    #@a
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@c
    aput-object v4, v2, v3

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Landroidx/core/os/UserHandleCompat;->sUserHandleConstructor:Ljava/lang/reflect/Constructor;

    #@14
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@17
    .line 101
    :cond_17
    sget-object v0, Landroidx/core/os/UserHandleCompat;->sUserHandleConstructor:Ljava/lang/reflect/Constructor;

    #@19
    return-object v0
.end method

.method public static getUserHandleForUid(I)Landroid/os/UserHandle;
    .registers 1

    #@0
    .line 51
    invoke-static {p0}, Landroidx/core/os/UserHandleCompat$Api24Impl;->getUserHandleForUid(I)Landroid/os/UserHandle;

    #@3
    move-result-object p0

    #@4
    return-object p0
.end method
