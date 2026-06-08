.class public Landroidx/core/app/AppComponentFactory;
.super Landroid/app/AppComponentFactory;
.source "AppComponentFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 40
    invoke-direct {p0}, Landroid/app/AppComponentFactory;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public final instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    #@3
    move-result-object p1

    #@4
    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    check-cast p1, Landroid/app/Activity;

    #@a
    return-object p1
.end method

.method public instantiateActivityCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    const/4 p3, 0x0

    #@1
    .line 137
    :try_start_1
    invoke-static {p2, p3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@4
    move-result-object p1

    #@5
    const-class p2, Landroid/app/Activity;

    #@7
    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@a
    move-result-object p1

    #@b
    new-array p2, p3, [Ljava/lang/Class;

    #@d
    .line 138
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@10
    move-result-object p1

    #@11
    new-array p2, p3, [Ljava/lang/Object;

    #@13
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Landroid/app/Activity;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1a

    #@19
    return-object p1

    #@1a
    :catch_1a
    move-exception p1

    #@1b
    goto :goto_1d

    #@1c
    :catch_1c
    move-exception p1

    #@1d
    .line 140
    :goto_1d
    new-instance p2, Ljava/lang/RuntimeException;

    #@1f
    const-string p3, "Couldn\'t call constructor"

    #@21
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw p2
.end method

.method public final instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .line 61
    invoke-virtual {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    #@3
    move-result-object p1

    #@4
    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    check-cast p1, Landroid/app/Application;

    #@a
    return-object p1
.end method

.method public instantiateApplicationCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 113
    :try_start_1
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@4
    move-result-object p1

    #@5
    const-class p2, Landroid/app/Application;

    #@7
    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@a
    move-result-object p1

    #@b
    new-array p2, v0, [Ljava/lang/Class;

    #@d
    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@10
    move-result-object p1

    #@11
    new-array p2, v0, [Ljava/lang/Object;

    #@13
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Landroid/app/Application;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1a

    #@19
    return-object p1

    #@1a
    :catch_1a
    move-exception p1

    #@1b
    goto :goto_1d

    #@1c
    :catch_1c
    move-exception p1

    #@1d
    .line 116
    :goto_1d
    new-instance p2, Ljava/lang/RuntimeException;

    #@1f
    const-string v0, "Couldn\'t call constructor"

    #@21
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw p2
.end method

.method public final instantiateProvider(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .line 83
    invoke-virtual {p0, p1, p2}, Landroidx/core/app/AppComponentFactory;->instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;

    #@3
    move-result-object p1

    #@4
    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    check-cast p1, Landroid/content/ContentProvider;

    #@a
    return-object p1
.end method

.method public instantiateProviderCompat(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/content/ContentProvider;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    const/4 v0, 0x0

    #@1
    .line 204
    :try_start_1
    invoke-static {p2, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@4
    move-result-object p1

    #@5
    const-class p2, Landroid/content/ContentProvider;

    #@7
    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@a
    move-result-object p1

    #@b
    new-array p2, v0, [Ljava/lang/Class;

    #@d
    .line 205
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@10
    move-result-object p1

    #@11
    new-array p2, v0, [Ljava/lang/Object;

    #@13
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Landroid/content/ContentProvider;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1a

    #@19
    return-object p1

    #@1a
    :catch_1a
    move-exception p1

    #@1b
    goto :goto_1d

    #@1c
    :catch_1c
    move-exception p1

    #@1d
    .line 207
    :goto_1d
    new-instance p2, Ljava/lang/RuntimeException;

    #@1f
    const-string v0, "Couldn\'t call constructor"

    #@21
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw p2
.end method

.method public final instantiateReceiver(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .line 72
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;

    #@3
    move-result-object p1

    #@4
    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    check-cast p1, Landroid/content/BroadcastReceiver;

    #@a
    return-object p1
.end method

.method public instantiateReceiverCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/BroadcastReceiver;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    const/4 p3, 0x0

    #@1
    .line 157
    :try_start_1
    invoke-static {p2, p3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@4
    move-result-object p1

    #@5
    const-class p2, Landroid/content/BroadcastReceiver;

    #@7
    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@a
    move-result-object p1

    #@b
    new-array p2, p3, [Ljava/lang/Class;

    #@d
    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@10
    move-result-object p1

    #@11
    new-array p2, p3, [Ljava/lang/Object;

    #@13
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Landroid/content/BroadcastReceiver;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1a

    #@19
    return-object p1

    #@1a
    :catch_1a
    move-exception p1

    #@1b
    goto :goto_1d

    #@1c
    :catch_1c
    move-exception p1

    #@1d
    .line 160
    :goto_1d
    new-instance p2, Ljava/lang/RuntimeException;

    #@1f
    const-string p3, "Couldn\'t call constructor"

    #@21
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw p2
.end method

.method public final instantiateService(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .line 94
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/AppComponentFactory;->instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;

    #@3
    move-result-object p1

    #@4
    invoke-static {p1}, Landroidx/core/app/CoreComponentFactory;->checkCompatWrapper(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    check-cast p1, Landroid/app/Service;

    #@a
    return-object p1
.end method

.method public instantiateServiceCompat(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Service;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    const/4 p3, 0x0

    #@1
    .line 181
    :try_start_1
    invoke-static {p2, p3, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@4
    move-result-object p1

    #@5
    const-class p2, Landroid/app/Service;

    #@7
    invoke-virtual {p1, p2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    #@a
    move-result-object p1

    #@b
    new-array p2, p3, [Ljava/lang/Class;

    #@d
    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@10
    move-result-object p1

    #@11
    new-array p2, p3, [Ljava/lang/Object;

    #@13
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object p1

    #@17
    check-cast p1, Landroid/app/Service;
    :try_end_19
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_19} :catch_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_19} :catch_1a

    #@19
    return-object p1

    #@1a
    :catch_1a
    move-exception p1

    #@1b
    goto :goto_1d

    #@1c
    :catch_1c
    move-exception p1

    #@1d
    .line 184
    :goto_1d
    new-instance p2, Ljava/lang/RuntimeException;

    #@1f
    const-string p3, "Couldn\'t call constructor"

    #@21
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@24
    throw p2
.end method
