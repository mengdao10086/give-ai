.class public final Landroidx/core/os/HandlerCompat;
.super Ljava/lang/Object;
.source "HandlerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/HandlerCompat$Api28Impl;,
        Landroidx/core/os/HandlerCompat$Api29Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandlerCompat"


# direct methods
.method private constructor <init>()V
    .registers 1

    #@0
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createAsync(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 8

    #@0
    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 66
    invoke-static {p0}, Landroidx/core/os/HandlerCompat$Api28Impl;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 71
    :cond_b
    :try_start_b
    const-class v0, Landroid/os/Handler;

    #@d
    const/4 v1, 0x3

    #@e
    new-array v2, v1, [Ljava/lang/Class;

    #@10
    const-class v3, Landroid/os/Looper;

    #@12
    const/4 v4, 0x0

    #@13
    aput-object v3, v2, v4

    #@15
    const-class v3, Landroid/os/Handler$Callback;

    #@17
    const/4 v5, 0x1

    #@18
    aput-object v3, v2, v5

    #@1a
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@1c
    const/4 v6, 0x2

    #@1d
    aput-object v3, v2, v6

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@22
    move-result-object v0

    #@23
    new-array v1, v1, [Ljava/lang/Object;

    #@25
    aput-object p0, v1, v4

    #@27
    const/4 v2, 0x0

    #@28
    aput-object v2, v1, v5

    #@2a
    .line 73
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2d
    move-result-object v2

    #@2e
    aput-object v2, v1, v6

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    check-cast v0, Landroid/os/Handler;
    :try_end_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_36} :catch_54
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_36} :catch_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_36} :catch_50
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_36} :catch_37

    #@36
    return-object v0

    #@37
    :catch_37
    move-exception p0

    #@38
    .line 81
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@3b
    move-result-object p0

    #@3c
    .line 82
    instance-of v0, p0, Ljava/lang/RuntimeException;

    #@3e
    if-nez v0, :cond_4d

    #@40
    .line 85
    instance-of v0, p0, Ljava/lang/Error;

    #@42
    if-eqz v0, :cond_47

    #@44
    .line 86
    check-cast p0, Ljava/lang/Error;

    #@46
    throw p0

    #@47
    .line 88
    :cond_47
    new-instance v0, Ljava/lang/RuntimeException;

    #@49
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@4c
    throw v0

    #@4d
    .line 83
    :cond_4d
    check-cast p0, Ljava/lang/RuntimeException;

    #@4f
    throw p0

    #@50
    :catch_50
    move-exception v0

    #@51
    goto :goto_55

    #@52
    :catch_52
    move-exception v0

    #@53
    goto :goto_55

    #@54
    :catch_54
    move-exception v0

    #@55
    :goto_55
    const-string v1, "HandlerCompat"

    #@57
    const-string v2, "Unable to invoke Handler(Looper, Callback, boolean) constructor"

    #@59
    .line 92
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5c
    .line 95
    new-instance v0, Landroid/os/Handler;

    #@5e
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@61
    return-object v0
.end method

.method public static createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;
    .registers 9

    #@0
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 125
    invoke-static {p0, p1}, Landroidx/core/os/HandlerCompat$Api28Impl;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    #@9
    move-result-object p0

    #@a
    return-object p0

    #@b
    .line 130
    :cond_b
    :try_start_b
    const-class v0, Landroid/os/Handler;

    #@d
    const/4 v1, 0x3

    #@e
    new-array v2, v1, [Ljava/lang/Class;

    #@10
    const-class v3, Landroid/os/Looper;

    #@12
    const/4 v4, 0x0

    #@13
    aput-object v3, v2, v4

    #@15
    const-class v3, Landroid/os/Handler$Callback;

    #@17
    const/4 v5, 0x1

    #@18
    aput-object v3, v2, v5

    #@1a
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@1c
    const/4 v6, 0x2

    #@1d
    aput-object v3, v2, v6

    #@1f
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@22
    move-result-object v0

    #@23
    new-array v1, v1, [Ljava/lang/Object;

    #@25
    aput-object p0, v1, v4

    #@27
    aput-object p1, v1, v5

    #@29
    .line 132
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2c
    move-result-object v2

    #@2d
    aput-object v2, v1, v6

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/os/Handler;
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_35} :catch_53
    .catch Ljava/lang/InstantiationException; {:try_start_b .. :try_end_35} :catch_51
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_35} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_35} :catch_36

    #@35
    return-object v0

    #@36
    :catch_36
    move-exception p0

    #@37
    .line 140
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@3a
    move-result-object p0

    #@3b
    .line 141
    instance-of p1, p0, Ljava/lang/RuntimeException;

    #@3d
    if-nez p1, :cond_4c

    #@3f
    .line 144
    instance-of p1, p0, Ljava/lang/Error;

    #@41
    if-eqz p1, :cond_46

    #@43
    .line 145
    check-cast p0, Ljava/lang/Error;

    #@45
    throw p0

    #@46
    .line 147
    :cond_46
    new-instance p1, Ljava/lang/RuntimeException;

    #@48
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@4b
    throw p1

    #@4c
    .line 142
    :cond_4c
    check-cast p0, Ljava/lang/RuntimeException;

    #@4e
    throw p0

    #@4f
    :catch_4f
    move-exception v0

    #@50
    goto :goto_54

    #@51
    :catch_51
    move-exception v0

    #@52
    goto :goto_54

    #@53
    :catch_53
    move-exception v0

    #@54
    :goto_54
    const-string v1, "HandlerCompat"

    #@56
    const-string v2, "Unable to invoke Handler(Looper, Callback, boolean) constructor"

    #@58
    .line 151
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5b
    .line 154
    new-instance v0, Landroid/os/Handler;

    #@5d
    invoke-direct {v0, p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    #@60
    return-object v0
.end method

.method public static hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .registers 8

    #@0
    .line 213
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1d

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 214
    invoke-static {p0, p1}, Landroidx/core/os/HandlerCompat$Api29Impl;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 220
    :cond_b
    :try_start_b
    const-class v0, Landroid/os/Handler;

    #@d
    const-string v1, "hasCallbacks"

    #@f
    const/4 v2, 0x1

    #@10
    new-array v3, v2, [Ljava/lang/Class;

    #@12
    const-class v4, Ljava/lang/Runnable;

    #@14
    const/4 v5, 0x0

    #@15
    aput-object v4, v3, v5

    #@17
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@1a
    move-result-object v0

    #@1b
    new-array v1, v2, [Ljava/lang/Object;

    #@1d
    aput-object p1, v1, v5

    #@1f
    .line 222
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object p0

    #@23
    check-cast p0, Ljava/lang/Boolean;

    #@25
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    #@28
    move-result p0
    :try_end_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_29} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_29} :catch_2e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_29} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_29} :catch_2a

    #@29
    return p0

    #@2a
    :catch_2a
    move-exception p0

    #@2b
    goto :goto_2f

    #@2c
    :catch_2c
    move-exception p0

    #@2d
    goto :goto_2f

    #@2e
    :catch_2e
    move-exception p0

    #@2f
    .line 241
    :goto_2f
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@31
    const-string v0, "Failed to call Handler.hasCallbacks(), but there is no safe failure mode for this method. Raising exception."

    #@33
    invoke-direct {p1, v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@36
    throw p1

    #@37
    :catch_37
    move-exception p0

    #@38
    .line 224
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@3b
    move-result-object p0

    #@3c
    .line 225
    instance-of p1, p0, Ljava/lang/RuntimeException;

    #@3e
    if-nez p1, :cond_4d

    #@40
    .line 228
    instance-of p1, p0, Ljava/lang/Error;

    #@42
    if-eqz p1, :cond_47

    #@44
    .line 229
    check-cast p0, Ljava/lang/Error;

    #@46
    throw p0

    #@47
    .line 231
    :cond_47
    new-instance p1, Ljava/lang/RuntimeException;

    #@49
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@4c
    throw p1

    #@4d
    .line 226
    :cond_4d
    check-cast p0, Ljava/lang/RuntimeException;

    #@4f
    throw p0
.end method

.method public static postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .registers 7

    #@0
    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0x1c

    #@4
    if-lt v0, v1, :cond_b

    #@6
    .line 183
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/core/os/HandlerCompat$Api28Impl;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    #@9
    move-result p0

    #@a
    return p0

    #@b
    .line 186
    :cond_b
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    #@e
    move-result-object p1

    #@f
    .line 187
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@11
    .line 188
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@14
    move-result p0

    #@15
    return p0
.end method
