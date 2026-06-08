.class final Landroidx/core/os/PersistableBundleApi21ImplKt;
.super Ljava/lang/Object;
.source "PersistableBundle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J$\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/core/os/PersistableBundleApi21ImplKt;",
        "",
        "()V",
        "createPersistableBundle",
        "Landroid/os/PersistableBundle;",
        "capacity",
        "",
        "putValue",
        "",
        "persistableBundle",
        "key",
        "",
        "value",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/core/os/PersistableBundleApi21ImplKt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    new-instance v0, Landroidx/core/os/PersistableBundleApi21ImplKt;

    #@2
    invoke-direct {v0}, Landroidx/core/os/PersistableBundleApi21ImplKt;-><init>()V

    #@5
    sput-object v0, Landroidx/core/os/PersistableBundleApi21ImplKt;->INSTANCE:Landroidx/core/os/PersistableBundleApi21ImplKt;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final createPersistableBundle(I)Landroid/os/PersistableBundle;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    #@0
    .line 75
    new-instance v0, Landroid/os/PersistableBundle;

    #@2
    invoke-direct {v0, p0}, Landroid/os/PersistableBundle;-><init>(I)V

    #@5
    return-object v0
.end method

.method public static final putValue(Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    #@0
    const-string v0, "persistableBundle"

    #@2
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    #@5
    if-nez p2, :cond_d

    #@7
    const/4 p2, 0x0

    #@8
    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    goto/16 :goto_9e

    #@d
    .line 85
    :cond_d
    instance-of v0, p2, Ljava/lang/Boolean;

    #@f
    if-eqz v0, :cond_1c

    #@11
    .line 87
    check-cast p2, Ljava/lang/Boolean;

    #@13
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    #@16
    move-result p2

    #@17
    invoke-static {p0, p1, p2}, Landroidx/core/os/PersistableBundleApi22ImplKt;->putBoolean(Landroid/os/PersistableBundle;Ljava/lang/String;Z)V

    #@1a
    goto/16 :goto_9e

    #@1c
    .line 94
    :cond_1c
    instance-of v0, p2, Ljava/lang/Double;

    #@1e
    if-eqz v0, :cond_2b

    #@20
    check-cast p2, Ljava/lang/Number;

    #@22
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    #@25
    move-result-wide v0

    #@26
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    #@29
    goto/16 :goto_9e

    #@2b
    .line 95
    :cond_2b
    instance-of v0, p2, Ljava/lang/Integer;

    #@2d
    if-eqz v0, :cond_39

    #@2f
    check-cast p2, Ljava/lang/Number;

    #@31
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    #@34
    move-result p2

    #@35
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    #@38
    goto :goto_9e

    #@39
    .line 96
    :cond_39
    instance-of v0, p2, Ljava/lang/Long;

    #@3b
    if-eqz v0, :cond_47

    #@3d
    check-cast p2, Ljava/lang/Number;

    #@3f
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    #@42
    move-result-wide v0

    #@43
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    #@46
    goto :goto_9e

    #@47
    .line 99
    :cond_47
    instance-of v0, p2, Ljava/lang/String;

    #@49
    if-eqz v0, :cond_51

    #@4b
    check-cast p2, Ljava/lang/String;

    #@4d
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@50
    goto :goto_9e

    #@51
    .line 102
    :cond_51
    instance-of v0, p2, [Z

    #@53
    if-eqz v0, :cond_5b

    #@55
    .line 104
    check-cast p2, [Z

    #@57
    invoke-static {p0, p1, p2}, Landroidx/core/os/PersistableBundleApi22ImplKt;->putBooleanArray(Landroid/os/PersistableBundle;Ljava/lang/String;[Z)V

    #@5a
    goto :goto_9e

    #@5b
    .line 111
    :cond_5b
    instance-of v0, p2, [D

    #@5d
    if-eqz v0, :cond_65

    #@5f
    check-cast p2, [D

    #@61
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putDoubleArray(Ljava/lang/String;[D)V

    #@64
    goto :goto_9e

    #@65
    .line 112
    :cond_65
    instance-of v0, p2, [I

    #@67
    if-eqz v0, :cond_6f

    #@69
    check-cast p2, [I

    #@6b
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    #@6e
    goto :goto_9e

    #@6f
    .line 113
    :cond_6f
    instance-of v0, p2, [J

    #@71
    if-eqz v0, :cond_79

    #@73
    check-cast p2, [J

    #@75
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    #@78
    goto :goto_9e

    #@79
    .line 116
    :cond_79
    instance-of v0, p2, [Ljava/lang/Object;

    #@7b
    const/16 v1, 0x22

    #@7d
    const-string v2, " for key \""

    #@7f
    if-eqz v0, :cond_c4

    #@81
    .line 117
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@84
    move-result-object v0

    #@85
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@88
    move-result-object v0

    #@89
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    #@8c
    .line 119
    const-class v3, Ljava/lang/String;

    #@8e
    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@91
    move-result v3

    #@92
    if-eqz v3, :cond_9f

    #@94
    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    #@96
    .line 121
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    #@99
    check-cast p2, [Ljava/lang/String;

    #@9b
    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    #@9e
    :goto_9e
    return-void

    #@9f
    .line 124
    :cond_9f
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@a2
    move-result-object p0

    #@a3
    .line 125
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@a5
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    #@a7
    const-string v3, "Illegal value array type "

    #@a9
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@ac
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object p0

    #@b0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object p0

    #@b4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object p0

    #@b8
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bb
    move-result-object p0

    #@bc
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object p0

    #@c0
    .line 125
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c3
    throw p2

    #@c4
    .line 133
    :cond_c4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c7
    move-result-object p0

    #@c8
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@cb
    move-result-object p0

    #@cc
    .line 134
    new-instance p2, Ljava/lang/IllegalArgumentException;

    #@ce
    new-instance v0, Ljava/lang/StringBuilder;

    #@d0
    const-string v3, "Illegal value type "

    #@d2
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d8
    move-result-object p0

    #@d9
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object p0

    #@dd
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object p0

    #@e1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@e4
    move-result-object p0

    #@e5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object p0

    #@e9
    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ec
    throw p2
.end method
