.class public abstract Landroidx/versionedparcelable/VersionedParcel;
.super Ljava/lang/Object;
.source "VersionedParcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcel$ParcelException;
    }
.end annotation


# static fields
.field private static final EX_BAD_PARCELABLE:I = -0x2

.field private static final EX_ILLEGAL_ARGUMENT:I = -0x3

.field private static final EX_ILLEGAL_STATE:I = -0x5

.field private static final EX_NETWORK_MAIN_THREAD:I = -0x6

.field private static final EX_NULL_POINTER:I = -0x4

.field private static final EX_PARCELABLE:I = -0x9

.field private static final EX_SECURITY:I = -0x1

.field private static final EX_UNSUPPORTED_OPERATION:I = -0x7

.field private static final TAG:Ljava/lang/String; = "VersionedParcel"

.field private static final TYPE_BINDER:I = 0x5

.field private static final TYPE_FLOAT:I = 0x8

.field private static final TYPE_INTEGER:I = 0x7

.field private static final TYPE_PARCELABLE:I = 0x2

.field private static final TYPE_SERIALIZABLE:I = 0x3

.field private static final TYPE_STRING:I = 0x4

.field private static final TYPE_VERSIONED_PARCELABLE:I = 0x1


# instance fields
.field protected final mParcelizerCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field protected final mReadCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWriteCache:Landroidx/collection/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    iput-object p1, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    #@5
    .line 88
    iput-object p2, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    #@7
    .line 89
    iput-object p3, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    #@9
    return-void
.end method

.method private createException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 6

    #@0
    packed-switch p1, :pswitch_data_54

    #@3
    .line 1237
    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    const-string v2, "Unknown exception code: "

    #@9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object p1

    #@10
    const-string v1, " msg "

    #@12
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object p1

    #@16
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object p1

    #@1a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object p1

    #@1e
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@21
    return-object v0

    #@22
    .line 1223
    :pswitch_22
    new-instance p1, Ljava/lang/SecurityException;

    #@24
    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@27
    return-object p1

    #@28
    .line 1225
    :pswitch_28
    new-instance p1, Landroid/os/BadParcelableException;

    #@2a
    invoke-direct {p1, p2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    #@2d
    return-object p1

    #@2e
    .line 1227
    :pswitch_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    #@30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    return-object p1

    #@34
    .line 1229
    :pswitch_34
    new-instance p1, Ljava/lang/NullPointerException;

    #@36
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@39
    return-object p1

    #@3a
    .line 1231
    :pswitch_3a
    new-instance p1, Ljava/lang/IllegalStateException;

    #@3c
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3f
    return-object p1

    #@40
    .line 1233
    :pswitch_40
    new-instance p1, Landroid/os/NetworkOnMainThreadException;

    #@42
    invoke-direct {p1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    #@45
    return-object p1

    #@46
    .line 1235
    :pswitch_46
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    #@48
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@4b
    return-object p1

    #@4c
    .line 1221
    :pswitch_4c
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    #@4f
    move-result-object p1

    #@50
    check-cast p1, Ljava/lang/Exception;

    #@52
    return-object p1

    #@53
    nop

    #@54
    :pswitch_data_54
    .packed-switch -0x9
        :pswitch_4c
        :pswitch_3
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_34
        :pswitch_2e
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method private findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .line 1628
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/Class;

    #@c
    if-nez v0, :cond_3a

    #@e
    .line 1630
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    const/4 v1, 0x2

    #@17
    new-array v1, v1, [Ljava/lang/Object;

    #@19
    const/4 v2, 0x0

    #@1a
    aput-object v0, v1, v2

    #@1c
    const/4 v0, 0x1

    #@1d
    .line 1631
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    aput-object v3, v1, v0

    #@23
    const-string v0, "%s.%sParcelizer"

    #@25
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 1632
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@2c
    move-result-object v1

    #@2d
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@30
    move-result-object v0

    #@31
    .line 1633
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->mParcelizerCache:Landroidx/collection/ArrayMap;

    #@33
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    :cond_3a
    return-object v0
.end method

.method private getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .line 1604
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {v0, p1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/reflect/Method;

    #@8
    if-nez v0, :cond_28

    #@a
    .line 1606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d
    .line 1607
    const-class v0, Landroidx/versionedparcelable/VersionedParcel;

    #@f
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x1

    #@14
    invoke-static {p1, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@17
    move-result-object v1

    #@18
    new-array v2, v2, [Ljava/lang/Class;

    #@1a
    const/4 v3, 0x0

    #@1b
    aput-object v0, v2, v3

    #@1d
    const-string v0, "read"

    #@1f
    .line 1608
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@22
    move-result-object v0

    #@23
    .line 1609
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->mReadCache:Landroidx/collection/ArrayMap;

    #@25
    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    :cond_28
    return-object v0
.end method

.method protected static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    #@0
    .line 1208
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_b

    #@6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    #@9
    move-result-object p0

    #@a
    goto :goto_0

    #@b
    :cond_b
    return-object p0
.end method

.method private getType(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)I"
        }
    .end annotation

    #@0
    .line 995
    instance-of v0, p1, Ljava/lang/String;

    #@2
    if-eqz v0, :cond_6

    #@4
    const/4 p1, 0x4

    #@5
    return p1

    #@6
    .line 997
    :cond_6
    instance-of v0, p1, Landroid/os/Parcelable;

    #@8
    if-eqz v0, :cond_c

    #@a
    const/4 p1, 0x2

    #@b
    return p1

    #@c
    .line 999
    :cond_c
    instance-of v0, p1, Landroidx/versionedparcelable/VersionedParcelable;

    #@e
    if-eqz v0, :cond_12

    #@10
    const/4 p1, 0x1

    #@11
    return p1

    #@12
    .line 1001
    :cond_12
    instance-of v0, p1, Ljava/io/Serializable;

    #@14
    if-eqz v0, :cond_18

    #@16
    const/4 p1, 0x3

    #@17
    return p1

    #@18
    .line 1003
    :cond_18
    instance-of v0, p1, Landroid/os/IBinder;

    #@1a
    if-eqz v0, :cond_1e

    #@1c
    const/4 p1, 0x5

    #@1d
    return p1

    #@1e
    .line 1005
    :cond_1e
    instance-of v0, p1, Ljava/lang/Integer;

    #@20
    if-eqz v0, :cond_24

    #@22
    const/4 p1, 0x7

    #@23
    return p1

    #@24
    .line 1007
    :cond_24
    instance-of v0, p1, Ljava/lang/Float;

    #@26
    if-eqz v0, :cond_2b

    #@28
    const/16 p1, 0x8

    #@2a
    return p1

    #@2b
    .line 1010
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@35
    move-result-object p1

    #@36
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@39
    move-result-object p1

    #@3a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p1

    #@3e
    const-string v1, " cannot be VersionedParcelled"

    #@40
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object p1

    #@44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object p1

    #@48
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v0
.end method

.method private getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .line 1616
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    #@2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/reflect/Method;

    #@c
    if-nez v0, :cond_2f

    #@e
    .line 1618
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    #@11
    move-result-object v0

    #@12
    .line 1619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@15
    const/4 v1, 0x2

    #@16
    new-array v1, v1, [Ljava/lang/Class;

    #@18
    const/4 v2, 0x0

    #@19
    aput-object p1, v1, v2

    #@1b
    const/4 v2, 0x1

    #@1c
    .line 1620
    const-class v3, Landroidx/versionedparcelable/VersionedParcel;

    #@1e
    aput-object v3, v1, v2

    #@20
    const-string v2, "write"

    #@22
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@25
    move-result-object v0

    #@26
    .line 1621
    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcel;->mWriteCache:Landroidx/collection/ArrayMap;

    #@28
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2b
    move-result-object p1

    #@2c
    invoke-virtual {v1, p1, v0}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    :cond_2f
    return-object v0
.end method

.method private readCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava/util/Collection<",
            "TT;>;>(TS;)TS;"
        }
    .end annotation

    #@0
    .line 1344
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-gez v0, :cond_8

    #@7
    return-object v1

    #@8
    :cond_8
    if-eqz v0, :cond_5d

    #@a
    .line 1349
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@d
    move-result v2

    #@e
    if-gez v0, :cond_11

    #@10
    return-object v1

    #@11
    :cond_11
    const/4 v1, 0x1

    #@12
    if-eq v2, v1, :cond_51

    #@14
    const/4 v1, 0x2

    #@15
    if-eq v2, v1, :cond_45

    #@17
    const/4 v1, 0x3

    #@18
    if-eq v2, v1, :cond_39

    #@1a
    const/4 v1, 0x4

    #@1b
    if-eq v2, v1, :cond_2d

    #@1d
    const/4 v1, 0x5

    #@1e
    if-eq v2, v1, :cond_21

    #@20
    goto :goto_5d

    #@21
    :cond_21
    :goto_21
    if-lez v0, :cond_5d

    #@23
    .line 1380
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    #@26
    move-result-object v1

    #@27
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@2a
    add-int/lit8 v0, v0, -0x1

    #@2c
    goto :goto_21

    #@2d
    :cond_2d
    :goto_2d
    if-lez v0, :cond_5d

    #@2f
    .line 1356
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@36
    add-int/lit8 v0, v0, -0x1

    #@38
    goto :goto_2d

    #@39
    :cond_39
    :goto_39
    if-lez v0, :cond_5d

    #@3b
    .line 1374
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    #@3e
    move-result-object v1

    #@3f
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@42
    add-int/lit8 v0, v0, -0x1

    #@44
    goto :goto_39

    #@45
    :cond_45
    :goto_45
    if-lez v0, :cond_5d

    #@47
    .line 1362
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    #@4a
    move-result-object v1

    #@4b
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@4e
    add-int/lit8 v0, v0, -0x1

    #@50
    goto :goto_45

    #@51
    :cond_51
    :goto_51
    if-lez v0, :cond_5d

    #@53
    .line 1368
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    #@56
    move-result-object v1

    #@57
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@5a
    add-int/lit8 v0, v0, -0x1

    #@5c
    goto :goto_51

    #@5d
    :cond_5d
    :goto_5d
    return-object p1
.end method

.method private readException(ILjava/lang/String;)Ljava/lang/Exception;
    .registers 3

    #@0
    .line 1198
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->createException(ILjava/lang/String;)Ljava/lang/Exception;

    #@3
    move-result-object p1

    #@4
    return-object p1
.end method

.method private readExceptionCode()I
    .registers 2

    #@0
    .line 1193
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private writeCollection(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, -0x1

    #@3
    .line 881
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@6
    return-void

    #@7
    .line 885
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@a
    move-result v0

    #@b
    .line 886
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@e
    if-lez v0, :cond_b8

    #@10
    .line 888
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v0

    #@14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    #@1b
    move-result v0

    #@1c
    .line 889
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@1f
    packed-switch v0, :pswitch_data_ba

    #@22
    :pswitch_22
    goto/16 :goto_b8

    #@24
    .line 922
    :pswitch_24
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object p1

    #@28
    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v0

    #@2c
    if-eqz v0, :cond_b8

    #@2e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    .line 923
    check-cast v0, Ljava/lang/Float;

    #@34
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@37
    move-result v0

    #@38
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    #@3b
    goto :goto_28

    #@3c
    .line 917
    :pswitch_3c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@3f
    move-result-object p1

    #@40
    :goto_40
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@43
    move-result v0

    #@44
    if-eqz v0, :cond_b8

    #@46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    .line 918
    check-cast v0, Ljava/lang/Integer;

    #@4c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@4f
    move-result v0

    #@50
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@53
    goto :goto_40

    #@54
    .line 912
    :pswitch_54
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object p1

    #@58
    :goto_58
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v0

    #@5c
    if-eqz v0, :cond_b8

    #@5e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v0

    #@62
    .line 913
    check-cast v0, Landroid/os/IBinder;

    #@64
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@67
    goto :goto_58

    #@68
    .line 892
    :pswitch_68
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@6b
    move-result-object p1

    #@6c
    :goto_6c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_b8

    #@72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@75
    move-result-object v0

    #@76
    .line 893
    check-cast v0, Ljava/lang/String;

    #@78
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    #@7b
    goto :goto_6c

    #@7c
    .line 907
    :pswitch_7c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@7f
    move-result-object p1

    #@80
    :goto_80
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@83
    move-result v0

    #@84
    if-eqz v0, :cond_b8

    #@86
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@89
    move-result-object v0

    #@8a
    .line 908
    check-cast v0, Ljava/io/Serializable;

    #@8c
    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    #@8f
    goto :goto_80

    #@90
    .line 897
    :pswitch_90
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@93
    move-result-object p1

    #@94
    :goto_94
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@97
    move-result v0

    #@98
    if-eqz v0, :cond_b8

    #@9a
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9d
    move-result-object v0

    #@9e
    .line 898
    check-cast v0, Landroid/os/Parcelable;

    #@a0
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    #@a3
    goto :goto_94

    #@a4
    .line 902
    :pswitch_a4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@a7
    move-result-object p1

    #@a8
    :goto_a8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@ab
    move-result v0

    #@ac
    if-eqz v0, :cond_b8

    #@ae
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b1
    move-result-object v0

    #@b2
    .line 903
    check-cast v0, Landroidx/versionedparcelable/VersionedParcelable;

    #@b4
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    #@b7
    goto :goto_a8

    #@b8
    :cond_b8
    :goto_b8
    return-void

    #@b9
    nop

    #@ba
    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_a4
        :pswitch_90
        :pswitch_7c
        :pswitch_68
        :pswitch_54
        :pswitch_22
        :pswitch_3c
        :pswitch_24
    .end packed-switch
.end method

.method private writeCollection(Ljava/util/Collection;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    .line 875
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 876
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    #@6
    return-void
.end method

.method private writeSerializable(Ljava/io/Serializable;)V
    .registers 6

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, 0x0

    #@3
    .line 1063
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    #@6
    return-void

    #@7
    .line 1066
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 1067
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    #@12
    .line 1069
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    #@14
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@17
    .line 1071
    :try_start_17
    new-instance v2, Ljava/io/ObjectOutputStream;

    #@19
    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@1c
    .line 1072
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@1f
    .line 1073
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    #@22
    .line 1075
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@25
    move-result-object p1

    #@26
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_29} :catch_2a

    #@29
    return-void

    #@2a
    :catch_2a
    move-exception p1

    #@2b
    .line 1077
    new-instance v1, Ljava/lang/RuntimeException;

    #@2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    const-string v3, "VersionedParcelable encountered IOException writing serializable object (name = "

    #@31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    const-string v2, ")"

    #@3a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v0

    #@42
    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@45
    throw v1
.end method

.method private writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 5

    #@0
    .line 1042
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->findParcelClass(Ljava/lang/Class;)Ljava/lang/Class;

    #@7
    move-result-object p1
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_10

    #@8
    .line 1047
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@b
    move-result-object p1

    #@c
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    #@f
    return-void

    #@10
    :catch_10
    move-exception v0

    #@11
    .line 1044
    new-instance v1, Ljava/lang/RuntimeException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object p1

    #@1c
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1f
    move-result-object p1

    #@20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object p1

    #@24
    const-string v2, " does not have a Parcelizer"

    #@26
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object p1

    #@2a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object p1

    #@2e
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    throw v1
.end method


# virtual methods
.method protected abstract closeField()V
.end method

.method protected abstract createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
.end method

.method public isStream()Z
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method protected readArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .line 1444
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    if-gez v0, :cond_8

    #@7
    return-object v1

    #@8
    .line 1448
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    #@a
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@d
    if-eqz v0, :cond_62

    #@f
    .line 1450
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@12
    move-result v3

    #@13
    if-gez v0, :cond_16

    #@15
    return-object v1

    #@16
    :cond_16
    const/4 v1, 0x1

    #@17
    if-eq v3, v1, :cond_56

    #@19
    const/4 v1, 0x2

    #@1a
    if-eq v3, v1, :cond_4a

    #@1c
    const/4 v1, 0x3

    #@1d
    if-eq v3, v1, :cond_3e

    #@1f
    const/4 v1, 0x4

    #@20
    if-eq v3, v1, :cond_32

    #@22
    const/4 v1, 0x5

    #@23
    if-eq v3, v1, :cond_26

    #@25
    goto :goto_62

    #@26
    :cond_26
    :goto_26
    if-lez v0, :cond_62

    #@28
    .line 1481
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2f
    add-int/lit8 v0, v0, -0x1

    #@31
    goto :goto_26

    #@32
    :cond_32
    :goto_32
    if-lez v0, :cond_62

    #@34
    .line 1457
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@3b
    add-int/lit8 v0, v0, -0x1

    #@3d
    goto :goto_32

    #@3e
    :cond_3e
    :goto_3e
    if-lez v0, :cond_62

    #@40
    .line 1475
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readSerializable()Ljava/io/Serializable;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@47
    add-int/lit8 v0, v0, -0x1

    #@49
    goto :goto_3e

    #@4a
    :cond_4a
    :goto_4a
    if-lez v0, :cond_62

    #@4c
    .line 1463
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@53
    add-int/lit8 v0, v0, -0x1

    #@55
    goto :goto_4a

    #@56
    :cond_56
    :goto_56
    if-lez v0, :cond_62

    #@58
    .line 1469
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    #@5b
    move-result-object v1

    #@5c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5f
    add-int/lit8 v0, v0, -0x1

    #@61
    goto :goto_56

    #@62
    .line 1487
    :cond_62
    :goto_62
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@65
    move-result-object p1

    #@66
    return-object p1
.end method

.method public readArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    #@0
    .line 1435
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 1438
    :cond_7
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->readArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method protected abstract readBoolean()Z
.end method

.method public readBoolean(ZI)Z
    .registers 3

    #@0
    .line 399
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return p1

    #@7
    .line 402
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    #@a
    move-result p1

    #@b
    return p1
.end method

.method protected readBooleanArray()[Z
    .registers 6

    #@0
    .line 587
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 591
    :cond_8
    new-array v1, v0, [Z

    #@a
    const/4 v2, 0x0

    #@b
    move v3, v2

    #@c
    :goto_c
    if-ge v3, v0, :cond_1c

    #@e
    .line 593
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@11
    move-result v4

    #@12
    if-eqz v4, :cond_16

    #@14
    const/4 v4, 0x1

    #@15
    goto :goto_17

    #@16
    :cond_16
    move v4, v2

    #@17
    :goto_17
    aput-boolean v4, v1, v3

    #@19
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_c

    #@1c
    :cond_1c
    return-object v1
.end method

.method public readBooleanArray([ZI)[Z
    .registers 3

    #@0
    .line 578
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 581
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBooleanArray()[Z

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method protected abstract readBundle()Landroid/os/Bundle;
.end method

.method public readBundle(Landroid/os/Bundle;I)Landroid/os/Bundle;
    .registers 3

    #@0
    .line 493
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 496
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBundle()Landroid/os/Bundle;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public readByte(BI)B
    .registers 3

    #@0
    .line 1245
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return p1

    #@7
    .line 1248
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@a
    move-result p1

    #@b
    and-int/lit16 p1, p1, 0xff

    #@d
    int-to-byte p1, p1

    #@e
    return p1
.end method

.method protected abstract readByteArray()[B
.end method

.method public readByteArray([BI)[B
    .registers 3

    #@0
    .line 472
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 475
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public readCharArray([CI)[C
    .registers 5

    #@0
    .line 625
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 628
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@a
    move-result p1

    #@b
    if-gez p1, :cond_f

    #@d
    const/4 p1, 0x0

    #@e
    return-object p1

    #@f
    .line 632
    :cond_f
    new-array p2, p1, [C

    #@11
    const/4 v0, 0x0

    #@12
    :goto_12
    if-ge v0, p1, :cond_1e

    #@14
    .line 634
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@17
    move-result v1

    #@18
    int-to-char v1, v1

    #@19
    aput-char v1, p2, v0

    #@1b
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_12

    #@1e
    :cond_1e
    return-object p2
.end method

.method protected abstract readCharSequence()Ljava/lang/CharSequence;
.end method

.method public readCharSequence(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .registers 3

    #@0
    .line 616
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 619
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readCharSequence()Ljava/lang/CharSequence;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method protected abstract readDouble()D
.end method

.method public readDouble(DI)D
    .registers 4

    #@0
    .line 441
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p3

    #@4
    if-nez p3, :cond_7

    #@6
    return-wide p1

    #@7
    .line 444
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    #@a
    move-result-wide p1

    #@b
    return-wide p1
.end method

.method protected readDoubleArray()[D
    .registers 6

    #@0
    .line 804
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 808
    :cond_8
    new-array v1, v0, [D

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v0, :cond_16

    #@d
    .line 810
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDouble()D

    #@10
    move-result-wide v3

    #@11
    aput-wide v3, v1, v2

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_b

    #@16
    :cond_16
    return-object v1
.end method

.method public readDoubleArray([DI)[D
    .registers 3

    #@0
    .line 795
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 798
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readDoubleArray()[D

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public readException(Ljava/lang/Exception;I)Ljava/lang/Exception;
    .registers 3

    #@0
    .line 1170
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 1173
    :cond_7
    invoke-direct {p0}, Landroidx/versionedparcelable/VersionedParcel;->readExceptionCode()I

    #@a
    move-result p2

    #@b
    if-eqz p2, :cond_15

    #@d
    .line 1175
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    #@10
    move-result-object p1

    #@11
    .line 1176
    invoke-direct {p0, p2, p1}, Landroidx/versionedparcelable/VersionedParcel;->readException(ILjava/lang/String;)Ljava/lang/Exception;

    #@14
    move-result-object p1

    #@15
    :cond_15
    return-object p1
.end method

.method protected abstract readField(I)Z
.end method

.method protected abstract readFloat()F
.end method

.method public readFloat(FI)F
    .registers 3

    #@0
    .line 430
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return p1

    #@7
    .line 433
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    #@a
    move-result p1

    #@b
    return p1
.end method

.method protected readFloatArray()[F
    .registers 5

    #@0
    .line 760
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 764
    :cond_8
    new-array v1, v0, [F

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v0, :cond_16

    #@d
    .line 766
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    #@10
    move-result v3

    #@11
    aput v3, v1, v2

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_b

    #@16
    :cond_16
    return-object v1
.end method

.method public readFloatArray([FI)[F
    .registers 3

    #@0
    .line 751
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 754
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloatArray()[F

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method protected readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")TT;"
        }
    .end annotation

    #@0
    .line 1565
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->getReadMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    #@3
    move-result-object p1

    #@4
    const/4 v0, 0x1

    #@5
    new-array v0, v0, [Ljava/lang/Object;

    #@7
    const/4 v1, 0x0

    #@8
    aput-object p2, v0, v1

    #@a
    const/4 p2, 0x0

    #@b
    .line 1566
    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object p1

    #@f
    check-cast p1, Landroidx/versionedparcelable/VersionedParcelable;
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_11} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_11} :catch_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_11} :catch_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_11} :catch_12

    #@11
    return-object p1

    #@12
    :catch_12
    move-exception p1

    #@13
    .line 1577
    new-instance p2, Ljava/lang/RuntimeException;

    #@15
    const-string v0, "VersionedParcel encountered ClassNotFoundException"

    #@17
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw p2

    #@1b
    :catch_1b
    move-exception p1

    #@1c
    .line 1575
    new-instance p2, Ljava/lang/RuntimeException;

    #@1e
    const-string v0, "VersionedParcel encountered NoSuchMethodException"

    #@20
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw p2

    #@24
    :catch_24
    move-exception p1

    #@25
    .line 1570
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@28
    move-result-object p2

    #@29
    instance-of p2, p2, Ljava/lang/RuntimeException;

    #@2b
    if-eqz p2, :cond_34

    #@2d
    .line 1571
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@30
    move-result-object p1

    #@31
    check-cast p1, Ljava/lang/RuntimeException;

    #@33
    throw p1

    #@34
    .line 1573
    :cond_34
    new-instance p2, Ljava/lang/RuntimeException;

    #@36
    const-string v0, "VersionedParcel encountered InvocationTargetException"

    #@38
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3b
    throw p2

    #@3c
    :catch_3c
    move-exception p1

    #@3d
    .line 1568
    new-instance p2, Ljava/lang/RuntimeException;

    #@3f
    const-string v0, "VersionedParcel encountered IllegalAccessException"

    #@41
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw p2
.end method

.method protected abstract readInt()I
.end method

.method public readInt(II)I
    .registers 3

    #@0
    .line 409
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return p1

    #@7
    .line 412
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@a
    move-result p1

    #@b
    return p1
.end method

.method protected readIntArray()[I
    .registers 5

    #@0
    .line 672
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 676
    :cond_8
    new-array v1, v0, [I

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v0, :cond_16

    #@d
    .line 678
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@10
    move-result v3

    #@11
    aput v3, v1, v2

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_b

    #@16
    :cond_16
    return-object v1
.end method

.method public readIntArray([II)[I
    .registers 3

    #@0
    .line 663
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 666
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readIntArray()[I

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public readList(Ljava/util/List;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 1337
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 1340
    :cond_7
    new-instance p1, Ljava/util/ArrayList;

    #@9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    #@c
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Ljava/util/List;

    #@12
    return-object p1
.end method

.method protected abstract readLong()J
.end method

.method public readLong(JI)J
    .registers 4

    #@0
    .line 419
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p3

    #@4
    if-nez p3, :cond_7

    #@6
    return-wide p1

    #@7
    .line 422
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    #@a
    move-result-wide p1

    #@b
    return-wide p1
.end method

.method protected readLongArray()[J
    .registers 6

    #@0
    .line 716
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@3
    move-result v0

    #@4
    if-gez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 720
    :cond_8
    new-array v1, v0, [J

    #@a
    const/4 v2, 0x0

    #@b
    :goto_b
    if-ge v2, v0, :cond_16

    #@d
    .line 722
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLong()J

    #@10
    move-result-wide v3

    #@11
    aput-wide v3, v1, v2

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    goto :goto_b

    #@16
    :cond_16
    return-object v1
.end method

.method public readLongArray([JI)[J
    .registers 3

    #@0
    .line 707
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 710
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readLongArray()[J

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method public readMap(Ljava/util/Map;I)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    #@0
    .line 1401
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 1404
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@a
    move-result p1

    #@b
    if-gez p1, :cond_f

    #@d
    const/4 p1, 0x0

    #@e
    return-object p1

    #@f
    .line 1408
    :cond_f
    new-instance p2, Landroidx/collection/ArrayMap;

    #@11
    invoke-direct {p2}, Landroidx/collection/ArrayMap;-><init>()V

    #@14
    if-nez p1, :cond_17

    #@16
    return-object p2

    #@17
    .line 1412
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    #@19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1c
    .line 1413
    new-instance v1, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@21
    .line 1414
    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@24
    .line 1415
    invoke-direct {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@27
    const/4 v2, 0x0

    #@28
    :goto_28
    if-ge v2, p1, :cond_38

    #@2a
    .line 1417
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_28

    #@38
    :cond_38
    return-object p2
.end method

.method protected abstract readParcelable()Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation
.end method

.method public readParcelable(Landroid/os/Parcelable;I)Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    #@0
    .line 481
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 484
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readParcelable()Landroid/os/Parcelable;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method protected readSerializable()Ljava/io/Serializable;
    .registers 7

    #@0
    const-string v0, ")"

    #@2
    .line 1523
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    if-nez v1, :cond_a

    #@8
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 1532
    :cond_a
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readByteArray()[B

    #@d
    move-result-object v2

    #@e
    .line 1533
    new-instance v3, Ljava/io/ByteArrayInputStream;

    #@10
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    #@13
    .line 1535
    :try_start_13
    new-instance v2, Landroidx/versionedparcelable/VersionedParcel$1;

    #@15
    invoke-direct {v2, p0, v3}, Landroidx/versionedparcelable/VersionedParcel$1;-><init>(Landroidx/versionedparcelable/VersionedParcel;Ljava/io/InputStream;)V

    #@18
    .line 1547
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    check-cast v2, Ljava/io/Serializable;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1e} :catch_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1e} :catch_1f

    #@1e
    return-object v2

    #@1f
    :catch_1f
    move-exception v2

    #@20
    .line 1553
    new-instance v3, Ljava/lang/RuntimeException;

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    const-string v5, "VersionedParcelable encountered ClassNotFoundException reading a Serializable object (name = "

    #@26
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@29
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v0

    #@31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v0

    #@35
    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@38
    throw v3

    #@39
    :catch_39
    move-exception v2

    #@3a
    .line 1549
    new-instance v3, Ljava/lang/RuntimeException;

    #@3c
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    const-string v5, "VersionedParcelable encountered IOException reading a Serializable object (name = "

    #@40
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@43
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v0

    #@4b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@52
    throw v3
.end method

.method public readSet(Ljava/util/Set;I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;I)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    #@0
    .line 1318
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 1321
    :cond_7
    new-instance p1, Landroidx/collection/ArraySet;

    #@9
    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    #@c
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->readCollection(Ljava/util/Collection;)Ljava/util/Collection;

    #@f
    move-result-object p1

    #@10
    check-cast p1, Ljava/util/Set;

    #@12
    return-object p1
.end method

.method public readSize(Landroid/util/Size;I)Landroid/util/Size;
    .registers 4

    #@0
    .line 1256
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 1259
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_1b

    #@d
    .line 1260
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@10
    move-result p1

    #@11
    .line 1261
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@14
    move-result p2

    #@15
    .line 1262
    new-instance v0, Landroid/util/Size;

    #@17
    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    #@1a
    return-object v0

    #@1b
    :cond_1b
    const/4 p1, 0x0

    #@1c
    return-object p1
.end method

.method public readSizeF(Landroid/util/SizeF;I)Landroid/util/SizeF;
    .registers 4

    #@0
    .line 1272
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 1275
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    #@a
    move-result p1

    #@b
    if-eqz p1, :cond_1b

    #@d
    .line 1276
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    #@10
    move-result p1

    #@11
    .line 1277
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    #@14
    move-result p2

    #@15
    .line 1278
    new-instance v0, Landroid/util/SizeF;

    #@17
    invoke-direct {v0, p1, p2}, Landroid/util/SizeF;-><init>(FF)V

    #@1a
    return-object v0

    #@1b
    :cond_1b
    const/4 p1, 0x0

    #@1c
    return-object p1
.end method

.method public readSparseBooleanArray(Landroid/util/SparseBooleanArray;I)Landroid/util/SparseBooleanArray;
    .registers 6

    #@0
    .line 1289
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 1292
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@a
    move-result p1

    #@b
    if-gez p1, :cond_f

    #@d
    const/4 p1, 0x0

    #@e
    return-object p1

    #@f
    .line 1296
    :cond_f
    new-instance p2, Landroid/util/SparseBooleanArray;

    #@11
    invoke-direct {p2, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    #@14
    const/4 v0, 0x0

    #@15
    :goto_15
    if-ge v0, p1, :cond_25

    #@17
    .line 1299
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p2, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_15

    #@25
    :cond_25
    return-object p2
.end method

.method protected abstract readString()Ljava/lang/String;
.end method

.method public readString(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    #@0
    .line 451
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 454
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method protected abstract readStrongBinder()Landroid/os/IBinder;
.end method

.method public readStrongBinder(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .registers 3

    #@0
    .line 461
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 464
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readStrongBinder()Landroid/os/IBinder;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method protected readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">()TT;"
        }
    .end annotation

    #@0
    .line 1509
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_8

    #@6
    const/4 v0, 0x0

    #@7
    return-object v0

    #@8
    .line 1513
    :cond_8
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcel;->readFromParcel(Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcel;)Landroidx/versionedparcelable/VersionedParcelable;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public readVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)Landroidx/versionedparcelable/VersionedParcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;I)TT;"
        }
    .end annotation

    #@0
    .line 1493
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->readField(I)Z

    #@3
    move-result p2

    #@4
    if-nez p2, :cond_7

    #@6
    return-object p1

    #@7
    .line 1496
    :cond_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    #@a
    move-result-object p1

    #@b
    return-object p1
.end method

.method protected abstract setOutputField(I)V
.end method

.method public setSerializationFlags(ZZ)V
    .registers 3

    #@0
    return-void
.end method

.method protected writeArray([Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)V"
        }
    .end annotation

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, -0x1

    #@3
    .line 949
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@6
    return-void

    #@7
    .line 953
    :cond_7
    array-length v0, p1

    #@8
    .line 955
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@b
    if-lez v0, :cond_63

    #@d
    const/4 v1, 0x0

    #@e
    .line 957
    aget-object v2, p1, v1

    #@10
    invoke-direct {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->getType(Ljava/lang/Object;)I

    #@13
    move-result v2

    #@14
    .line 958
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@17
    const/4 v3, 0x1

    #@18
    if-eq v2, v3, :cond_57

    #@1a
    const/4 v3, 0x2

    #@1b
    if-eq v2, v3, :cond_4b

    #@1d
    const/4 v3, 0x3

    #@1e
    if-eq v2, v3, :cond_3f

    #@20
    const/4 v3, 0x4

    #@21
    if-eq v2, v3, :cond_33

    #@23
    const/4 v3, 0x5

    #@24
    if-eq v2, v3, :cond_27

    #@26
    goto :goto_63

    #@27
    :cond_27
    :goto_27
    if-ge v1, v0, :cond_63

    #@29
    .line 986
    aget-object v2, p1, v1

    #@2b
    check-cast v2, Landroid/os/IBinder;

    #@2d
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@30
    add-int/lit8 v1, v1, 0x1

    #@32
    goto :goto_27

    #@33
    :cond_33
    :goto_33
    if-ge v1, v0, :cond_63

    #@35
    .line 962
    aget-object v2, p1, v1

    #@37
    check-cast v2, Ljava/lang/String;

    #@39
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    #@3c
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_33

    #@3f
    :cond_3f
    :goto_3f
    if-ge v1, v0, :cond_63

    #@41
    .line 980
    aget-object v2, p1, v1

    #@43
    check-cast v2, Ljava/io/Serializable;

    #@45
    invoke-direct {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    #@48
    add-int/lit8 v1, v1, 0x1

    #@4a
    goto :goto_3f

    #@4b
    :cond_4b
    :goto_4b
    if-ge v1, v0, :cond_63

    #@4d
    .line 968
    aget-object v2, p1, v1

    #@4f
    check-cast v2, Landroid/os/Parcelable;

    #@51
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    #@54
    add-int/lit8 v1, v1, 0x1

    #@56
    goto :goto_4b

    #@57
    :cond_57
    :goto_57
    if-ge v1, v0, :cond_63

    #@59
    .line 974
    aget-object v2, p1, v1

    #@5b
    check-cast v2, Landroidx/versionedparcelable/VersionedParcelable;

    #@5d
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    #@60
    add-int/lit8 v1, v1, 0x1

    #@62
    goto :goto_57

    #@63
    :cond_63
    :goto_63
    return-void
.end method

.method public writeArray([Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)V"
        }
    .end annotation

    #@0
    .line 941
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 942
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeArray([Ljava/lang/Object;)V

    #@6
    return-void
.end method

.method protected abstract writeBoolean(Z)V
.end method

.method public writeBoolean(ZI)V
    .registers 3

    #@0
    .line 294
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 295
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    #@6
    return-void
.end method

.method protected writeBooleanArray([Z)V
    .registers 5

    #@0
    if-eqz p1, :cond_11

    #@2
    .line 565
    array-length v0, p1

    #@3
    .line 566
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_15

    #@9
    .line 568
    aget-boolean v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_7

    #@11
    :cond_11
    const/4 p1, -0x1

    #@12
    .line 571
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@15
    :cond_15
    return-void
.end method

.method public writeBooleanArray([ZI)V
    .registers 3

    #@0
    .line 557
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 558
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBooleanArray([Z)V

    #@6
    return-void
.end method

.method protected abstract writeBundle(Landroid/os/Bundle;)V
.end method

.method public writeBundle(Landroid/os/Bundle;I)V
    .registers 3

    #@0
    .line 285
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 286
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeBundle(Landroid/os/Bundle;)V

    #@6
    return-void
.end method

.method public writeByte(BI)V
    .registers 3

    #@0
    .line 504
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 505
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@6
    return-void
.end method

.method protected abstract writeByteArray([B)V
.end method

.method public writeByteArray([BI)V
    .registers 3

    #@0
    .line 304
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 305
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([B)V

    #@6
    return-void
.end method

.method protected abstract writeByteArray([BII)V
.end method

.method public writeByteArray([BIII)V
    .registers 5

    #@0
    .line 316
    invoke-virtual {p0, p4}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 317
    invoke-virtual {p0, p1, p2, p3}, Landroidx/versionedparcelable/VersionedParcel;->writeByteArray([BII)V

    #@6
    return-void
.end method

.method public writeCharArray([CI)V
    .registers 5

    #@0
    .line 601
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    if-eqz p1, :cond_14

    #@5
    .line 603
    array-length p2, p1

    #@6
    .line 604
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@9
    const/4 v0, 0x0

    #@a
    :goto_a
    if-ge v0, p2, :cond_18

    #@c
    .line 606
    aget-char v1, p1, v0

    #@e
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_a

    #@14
    :cond_14
    const/4 p1, -0x1

    #@15
    .line 609
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@18
    :cond_18
    return-void
.end method

.method protected abstract writeCharSequence(Ljava/lang/CharSequence;)V
.end method

.method public writeCharSequence(Ljava/lang/CharSequence;I)V
    .registers 3

    #@0
    .line 325
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 326
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@6
    return-void
.end method

.method protected abstract writeDouble(D)V
.end method

.method public writeDouble(DI)V
    .registers 4

    #@0
    .line 361
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 362
    invoke-virtual {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    #@6
    return-void
.end method

.method protected writeDoubleArray([D)V
    .registers 6

    #@0
    if-eqz p1, :cond_11

    #@2
    .line 782
    array-length v0, p1

    #@3
    .line 783
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_15

    #@9
    .line 785
    aget-wide v2, p1, v1

    #@b
    invoke-virtual {p0, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeDouble(D)V

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_7

    #@11
    :cond_11
    const/4 p1, -0x1

    #@12
    .line 788
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@15
    :cond_15
    return-void
.end method

.method public writeDoubleArray([DI)V
    .registers 3

    #@0
    .line 774
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 775
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeDoubleArray([D)V

    #@6
    return-void
.end method

.method public writeException(Ljava/lang/Exception;I)V
    .registers 5

    #@0
    .line 1107
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    if-nez p1, :cond_9

    #@5
    .line 1109
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->writeNoException()V

    #@8
    return-void

    #@9
    .line 1113
    :cond_9
    instance-of p2, p1, Landroid/os/Parcelable;

    #@b
    const/16 v0, -0x9

    #@d
    if-eqz p2, :cond_21

    #@f
    .line 1114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@12
    move-result-object p2

    #@13
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@16
    move-result-object p2

    #@17
    const-class v1, Landroid/os/Parcelable;

    #@19
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    #@1c
    move-result-object v1

    #@1d
    if-ne p2, v1, :cond_21

    #@1f
    move p2, v0

    #@20
    goto :goto_4c

    #@21
    .line 1118
    :cond_21
    instance-of p2, p1, Ljava/lang/SecurityException;

    #@23
    if-eqz p2, :cond_27

    #@25
    const/4 p2, -0x1

    #@26
    goto :goto_4c

    #@27
    .line 1120
    :cond_27
    instance-of p2, p1, Landroid/os/BadParcelableException;

    #@29
    if-eqz p2, :cond_2d

    #@2b
    const/4 p2, -0x2

    #@2c
    goto :goto_4c

    #@2d
    .line 1122
    :cond_2d
    instance-of p2, p1, Ljava/lang/IllegalArgumentException;

    #@2f
    if-eqz p2, :cond_33

    #@31
    const/4 p2, -0x3

    #@32
    goto :goto_4c

    #@33
    .line 1124
    :cond_33
    instance-of p2, p1, Ljava/lang/NullPointerException;

    #@35
    if-eqz p2, :cond_39

    #@37
    const/4 p2, -0x4

    #@38
    goto :goto_4c

    #@39
    .line 1126
    :cond_39
    instance-of p2, p1, Ljava/lang/IllegalStateException;

    #@3b
    if-eqz p2, :cond_3f

    #@3d
    const/4 p2, -0x5

    #@3e
    goto :goto_4c

    #@3f
    .line 1128
    :cond_3f
    instance-of p2, p1, Landroid/os/NetworkOnMainThreadException;

    #@41
    if-eqz p2, :cond_45

    #@43
    const/4 p2, -0x6

    #@44
    goto :goto_4c

    #@45
    .line 1130
    :cond_45
    instance-of p2, p1, Ljava/lang/UnsupportedOperationException;

    #@47
    if-eqz p2, :cond_4b

    #@49
    const/4 p2, -0x7

    #@4a
    goto :goto_4c

    #@4b
    :cond_4b
    const/4 p2, 0x0

    #@4c
    .line 1133
    :goto_4c
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@4f
    if-nez p2, :cond_5e

    #@51
    .line 1135
    instance-of p2, p1, Ljava/lang/RuntimeException;

    #@53
    if-eqz p2, :cond_58

    #@55
    .line 1136
    check-cast p1, Ljava/lang/RuntimeException;

    #@57
    throw p1

    #@58
    .line 1138
    :cond_58
    new-instance p2, Ljava/lang/RuntimeException;

    #@5a
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@5d
    throw p2

    #@5e
    .line 1140
    :cond_5e
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    #@65
    if-eq p2, v0, :cond_68

    #@67
    goto :goto_6d

    #@68
    .line 1144
    :cond_68
    check-cast p1, Landroid/os/Parcelable;

    #@6a
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    #@6d
    :goto_6d
    return-void
.end method

.method protected abstract writeFloat(F)V
.end method

.method public writeFloat(FI)V
    .registers 3

    #@0
    .line 352
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 353
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    #@6
    return-void
.end method

.method protected writeFloatArray([F)V
    .registers 5

    #@0
    if-eqz p1, :cond_11

    #@2
    .line 738
    array-length v0, p1

    #@3
    .line 739
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_15

    #@9
    .line 741
    aget v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_7

    #@11
    :cond_11
    const/4 p1, -0x1

    #@12
    .line 744
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@15
    :cond_15
    return-void
.end method

.method public writeFloatArray([FI)V
    .registers 3

    #@0
    .line 730
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 731
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloatArray([F)V

    #@6
    return-void
.end method

.method protected abstract writeInt(I)V
.end method

.method public writeInt(II)V
    .registers 3

    #@0
    .line 334
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 335
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@6
    return-void
.end method

.method protected writeIntArray([I)V
    .registers 5

    #@0
    if-eqz p1, :cond_11

    #@2
    .line 650
    array-length v0, p1

    #@3
    .line 651
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_15

    #@9
    .line 653
    aget v2, p1, v1

    #@b
    invoke-virtual {p0, v2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_7

    #@11
    :cond_11
    const/4 p1, -0x1

    #@12
    .line 656
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@15
    :cond_15
    return-void
.end method

.method public writeIntArray([II)V
    .registers 3

    #@0
    .line 642
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 643
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeIntArray([I)V

    #@6
    return-void
.end method

.method public writeList(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    .line 840
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    #@3
    return-void
.end method

.method protected abstract writeLong(J)V
.end method

.method public writeLong(JI)V
    .registers 4

    #@0
    .line 343
    invoke-virtual {p0, p3}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 344
    invoke-virtual {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    #@6
    return-void
.end method

.method protected writeLongArray([J)V
    .registers 6

    #@0
    if-eqz p1, :cond_11

    #@2
    .line 694
    array-length v0, p1

    #@3
    .line 695
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@6
    const/4 v1, 0x0

    #@7
    :goto_7
    if-ge v1, v0, :cond_15

    #@9
    .line 697
    aget-wide v2, p1, v1

    #@b
    invoke-virtual {p0, v2, v3}, Landroidx/versionedparcelable/VersionedParcel;->writeLong(J)V

    #@e
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_7

    #@11
    :cond_11
    const/4 p1, -0x1

    #@12
    .line 700
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@15
    :cond_15
    return-void
.end method

.method public writeLongArray([JI)V
    .registers 3

    #@0
    .line 686
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 687
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeLongArray([J)V

    #@6
    return-void
.end method

.method public writeMap(Ljava/util/Map;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I)V"
        }
    .end annotation

    #@0
    .line 854
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    if-nez p1, :cond_a

    #@5
    const/4 p1, -0x1

    #@6
    .line 856
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@9
    return-void

    #@a
    .line 859
    :cond_a
    invoke-interface {p1}, Ljava/util/Map;->size()I

    #@d
    move-result p2

    #@e
    .line 860
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@11
    if-nez p2, :cond_14

    #@13
    return-void

    #@14
    .line 864
    :cond_14
    new-instance p2, Ljava/util/ArrayList;

    #@16
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    #@19
    .line 865
    new-instance v0, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1e
    .line 866
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@21
    move-result-object p1

    #@22
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object p1

    #@26
    :goto_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_41

    #@2c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v1

    #@30
    check-cast v1, Ljava/util/Map$Entry;

    #@32
    .line 867
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    .line 868
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@40
    goto :goto_26

    #@41
    .line 870
    :cond_41
    invoke-direct {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    #@44
    .line 871
    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;)V

    #@47
    return-void
.end method

.method protected writeNoException()V
    .registers 2

    #@0
    const/4 v0, 0x0

    #@1
    .line 1157
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@4
    return-void
.end method

.method protected abstract writeParcelable(Landroid/os/Parcelable;)V
.end method

.method public writeParcelable(Landroid/os/Parcelable;I)V
    .registers 3

    #@0
    .line 391
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 392
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeParcelable(Landroid/os/Parcelable;)V

    #@6
    return-void
.end method

.method public writeSerializable(Ljava/io/Serializable;I)V
    .registers 3

    #@0
    .line 1057
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 1058
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeSerializable(Ljava/io/Serializable;)V

    #@6
    return-void
.end method

.method public writeSet(Ljava/util/Set;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;I)V"
        }
    .end annotation

    #@0
    .line 826
    invoke-direct {p0, p1, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeCollection(Ljava/util/Collection;I)V

    #@3
    return-void
.end method

.method public writeSize(Landroid/util/Size;I)V
    .registers 3

    #@0
    .line 514
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    if-eqz p1, :cond_7

    #@5
    const/4 p2, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p2, 0x0

    #@8
    .line 515
    :goto_8
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    #@b
    if-eqz p1, :cond_1b

    #@d
    .line 517
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    #@10
    move-result p2

    #@11
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@14
    .line 518
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    #@17
    move-result p1

    #@18
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@1b
    :cond_1b
    return-void
.end method

.method public writeSizeF(Landroid/util/SizeF;I)V
    .registers 3

    #@0
    .line 528
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    if-eqz p1, :cond_7

    #@5
    const/4 p2, 0x1

    #@6
    goto :goto_8

    #@7
    :cond_7
    const/4 p2, 0x0

    #@8
    .line 529
    :goto_8
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    #@b
    if-eqz p1, :cond_1b

    #@d
    .line 531
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    #@10
    move-result p2

    #@11
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    #@14
    .line 532
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    #@17
    move-result p1

    #@18
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    #@1b
    :cond_1b
    return-void
.end method

.method public writeSparseBooleanArray(Landroid/util/SparseBooleanArray;I)V
    .registers 5

    #@0
    .line 539
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    if-nez p1, :cond_a

    #@5
    const/4 p1, -0x1

    #@6
    .line 541
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@9
    return-void

    #@a
    .line 544
    :cond_a
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    #@d
    move-result p2

    #@e
    .line 545
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@11
    const/4 v0, 0x0

    #@12
    :goto_12
    if-ge v0, p2, :cond_25

    #@14
    .line 548
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    #@17
    move-result v1

    #@18
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    #@1b
    .line 549
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    #@1e
    move-result v1

    #@1f
    invoke-virtual {p0, v1}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    #@22
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_12

    #@25
    :cond_25
    return-void
.end method

.method protected abstract writeString(Ljava/lang/String;)V
.end method

.method public writeString(Ljava/lang/String;I)V
    .registers 3

    #@0
    .line 370
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 371
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    #@6
    return-void
.end method

.method protected abstract writeStrongBinder(Landroid/os/IBinder;)V
.end method

.method public writeStrongBinder(Landroid/os/IBinder;I)V
    .registers 3

    #@0
    .line 379
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 380
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@6
    return-void
.end method

.method protected abstract writeStrongInterface(Landroid/os/IInterface;)V
.end method

.method public writeStrongInterface(Landroid/os/IInterface;I)V
    .registers 3

    #@0
    .line 276
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 277
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeStrongInterface(Landroid/os/IInterface;)V

    #@6
    return-void
.end method

.method protected writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(TT;",
            "Landroidx/versionedparcelable/VersionedParcel;",
            ")V"
        }
    .end annotation

    #@0
    .line 1586
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->getWriteMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@7
    move-result-object v0

    #@8
    const/4 v1, 0x2

    #@9
    new-array v1, v1, [Ljava/lang/Object;

    #@b
    const/4 v2, 0x0

    #@c
    aput-object p1, v1, v2

    #@e
    const/4 p1, 0x1

    #@f
    aput-object p2, v1, p1

    #@11
    const/4 p1, 0x0

    #@12
    .line 1587
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_15} :catch_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_15} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_15} :catch_16

    #@15
    return-void

    #@16
    :catch_16
    move-exception p1

    #@17
    .line 1598
    new-instance p2, Ljava/lang/RuntimeException;

    #@19
    const-string v0, "VersionedParcel encountered ClassNotFoundException"

    #@1b
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1e
    throw p2

    #@1f
    :catch_1f
    move-exception p1

    #@20
    .line 1596
    new-instance p2, Ljava/lang/RuntimeException;

    #@22
    const-string v0, "VersionedParcel encountered NoSuchMethodException"

    #@24
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    throw p2

    #@28
    :catch_28
    move-exception p1

    #@29
    .line 1591
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@2c
    move-result-object p2

    #@2d
    instance-of p2, p2, Ljava/lang/RuntimeException;

    #@2f
    if-eqz p2, :cond_38

    #@31
    .line 1592
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    #@34
    move-result-object p1

    #@35
    check-cast p1, Ljava/lang/RuntimeException;

    #@37
    throw p1

    #@38
    .line 1594
    :cond_38
    new-instance p2, Ljava/lang/RuntimeException;

    #@3a
    const-string v0, "VersionedParcel encountered InvocationTargetException"

    #@3c
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3f
    throw p2

    #@40
    :catch_40
    move-exception p1

    #@41
    .line 1589
    new-instance p2, Ljava/lang/RuntimeException;

    #@43
    const-string v0, "VersionedParcel encountered IllegalAccessException"

    #@45
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@48
    throw p2
.end method

.method protected writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V
    .registers 3

    #@0
    if-nez p1, :cond_7

    #@2
    const/4 p1, 0x0

    #@3
    .line 1029
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeString(Ljava/lang/String;)V

    #@6
    return-void

    #@7
    .line 1032
    :cond_7
    invoke-direct {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelableCreator(Landroidx/versionedparcelable/VersionedParcelable;)V

    #@a
    .line 1034
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->createSubParcel()Landroidx/versionedparcelable/VersionedParcel;

    #@d
    move-result-object v0

    #@e
    .line 1035
    invoke-virtual {p0, p1, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeToParcel(Landroidx/versionedparcelable/VersionedParcelable;Landroidx/versionedparcelable/VersionedParcel;)V

    #@11
    .line 1036
    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcel;->closeField()V

    #@14
    return-void
.end method

.method public writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;I)V
    .registers 3

    #@0
    .line 1021
    invoke-virtual {p0, p2}, Landroidx/versionedparcelable/VersionedParcel;->setOutputField(I)V

    #@3
    .line 1022
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcel;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    #@6
    return-void
.end method
