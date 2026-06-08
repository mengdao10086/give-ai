.class final Landroidx/lifecycle/ClassesInfoCache$MethodReference;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ClassesInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MethodReference"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final mCallType:I

.field final mMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(ILjava/lang/reflect/Method;)V
    .registers 3

    #@0
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 212
    iput p1, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    #@5
    .line 213
    iput-object p2, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    #@7
    const/4 p1, 0x1

    #@8
    .line 214
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@b
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    #@0
    const/4 v0, 0x1

    #@1
    if-ne p0, p1, :cond_4

    #@3
    return v0

    #@4
    .line 243
    :cond_4
    instance-of v1, p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    #@6
    const/4 v2, 0x0

    #@7
    if-nez v1, :cond_a

    #@9
    return v2

    #@a
    .line 247
    :cond_a
    check-cast p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;

    #@c
    .line 248
    iget v1, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    #@e
    iget v3, p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    #@10
    if-ne v1, v3, :cond_25

    #@12
    iget-object v1, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    #@14
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    iget-object p1, p1, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    #@1a
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result p1

    #@22
    if-eqz p1, :cond_25

    #@24
    goto :goto_26

    #@25
    :cond_25
    move v0, v2

    #@26
    :goto_26
    return v0
.end method

.method public hashCode()I
    .registers 3

    #@0
    .line 253
    iget v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    #@2
    mul-int/lit8 v0, v0, 0x1f

    #@4
    iget-object v1, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    #@6
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@d
    move-result v1

    #@e
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method invokeCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V
    .registers 8

    #@0
    .line 220
    :try_start_0
    iget v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mCallType:I

    #@2
    const/4 v1, 0x0

    #@3
    if-eqz v0, :cond_22

    #@5
    const/4 v2, 0x1

    #@6
    if-eq v0, v2, :cond_18

    #@8
    const/4 v3, 0x2

    #@9
    if-eq v0, v3, :cond_c

    #@b
    goto :goto_29

    #@c
    .line 228
    :cond_c
    iget-object v0, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    #@e
    new-array v3, v3, [Ljava/lang/Object;

    #@10
    aput-object p1, v3, v1

    #@12
    aput-object p2, v3, v2

    #@14
    invoke-virtual {v0, p3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    goto :goto_29

    #@18
    .line 225
    :cond_18
    iget-object p2, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    #@1a
    new-array v0, v2, [Ljava/lang/Object;

    #@1c
    aput-object p1, v0, v1

    #@1e
    invoke-virtual {p2, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    goto :goto_29

    #@22
    .line 222
    :cond_22
    iget-object p1, p0, Landroidx/lifecycle/ClassesInfoCache$MethodReference;->mMethod:Ljava/lang/reflect/Method;

    #@24
    new-array p2, v1, [Ljava/lang/Object;

    #@26
    invoke-virtual {p1, p3, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_29} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_29} :catch_2a

    #@29
    :goto_29
    return-void

    #@2a
    :catch_2a
    move-exception p1

    #@2b
    .line 234
    new-instance p2, Ljava/lang/RuntimeException;

    #@2d
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@30
    throw p2

    #@31
    :catch_31
    move-exception p1

    #@32
    .line 232
    new-instance p2, Ljava/lang/RuntimeException;

    #@34
    const-string p3, "Failed to call observer method"

    #@36
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@39
    move-result-object p1

    #@3a
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3d
    throw p2
.end method
