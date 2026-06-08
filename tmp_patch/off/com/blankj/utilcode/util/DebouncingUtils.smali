.class public Lcom/blankj/utilcode/util/DebouncingUtils;
.super Ljava/lang/Object;
.source "DebouncingUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x40

.field private static final DEBOUNCING_DEFAULT_VALUE:J = 0x3e8L

.field private static final KEY_MILLIS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@2
    const/16 v1, 0x40

    #@4
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@7
    sput-object v0, Lcom/blankj/utilcode/util/DebouncingUtils;->KEY_MILLIS_MAP:Ljava/util/Map;

    #@9
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    #@0
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@5
    const-string v1, "u can\'t instantiate me..."

    #@7
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0
.end method

.method private static clearIfNecessary(J)V
    .registers 5

    #@0
    .line 77
    sget-object v0, Lcom/blankj/utilcode/util/DebouncingUtils;->KEY_MILLIS_MAP:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v1

    #@6
    const/16 v2, 0x40

    #@8
    if-ge v1, v2, :cond_b

    #@a
    return-void

    #@b
    .line 78
    :cond_b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_31

    #@19
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Ljava/util/Map$Entry;

    #@1f
    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Ljava/lang/Long;

    #@25
    .line 81
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@28
    move-result-wide v1

    #@29
    cmp-long v1, p0, v1

    #@2b
    if-ltz v1, :cond_13

    #@2d
    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@30
    goto :goto_13

    #@31
    :cond_31
    return-void
.end method

.method public static isValid(Landroid/view/View;)Z
    .registers 3

    #@0
    const-wide/16 v0, 0x3e8

    #@2
    .line 38
    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/DebouncingUtils;->isValid(Landroid/view/View;J)Z

    #@5
    move-result p0

    #@6
    return p0
.end method

.method public static isValid(Landroid/view/View;J)Z
    .registers 3

    #@0
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    #@3
    move-result p0

    #@4
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@7
    move-result-object p0

    #@8
    invoke-static {p0, p1, p2}, Lcom/blankj/utilcode/util/DebouncingUtils;->isValid(Ljava/lang/String;J)Z

    #@b
    move-result p0

    #@c
    return p0
.end method

.method public static isValid(Ljava/lang/String;J)Z
    .registers 8

    #@0
    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_3a

    #@6
    const-wide/16 v0, 0x0

    #@8
    cmp-long v0, p1, v0

    #@a
    if-ltz v0, :cond_32

    #@c
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@f
    move-result-wide v0

    #@10
    .line 67
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/DebouncingUtils;->clearIfNecessary(J)V

    #@13
    .line 68
    sget-object v2, Lcom/blankj/utilcode/util/DebouncingUtils;->KEY_MILLIS_MAP:Ljava/util/Map;

    #@15
    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Ljava/lang/Long;

    #@1b
    if-eqz v3, :cond_28

    #@1d
    .line 69
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    #@20
    move-result-wide v3

    #@21
    cmp-long v3, v0, v3

    #@23
    if-ltz v3, :cond_26

    #@25
    goto :goto_28

    #@26
    :cond_26
    const/4 p0, 0x0

    #@27
    return p0

    #@28
    :cond_28
    :goto_28
    add-long/2addr v0, p1

    #@29
    .line 70
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2c
    move-result-object p1

    #@2d
    invoke-interface {v2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@30
    const/4 p0, 0x1

    #@31
    return p0

    #@32
    .line 64
    :cond_32
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@34
    const-string p1, "The duration is less than 0."

    #@36
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw p0

    #@3a
    .line 61
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    #@3c
    const-string p1, "The key is null."

    #@3e
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw p0
.end method
