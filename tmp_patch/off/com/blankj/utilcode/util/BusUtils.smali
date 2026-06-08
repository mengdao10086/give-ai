.class public final Lcom/blankj/utilcode/util/BusUtils;
.super Ljava/lang/Object;
.source "BusUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/BusUtils$LazyHolder;,
        Lcom/blankj/utilcode/util/BusUtils$Bus;,
        Lcom/blankj/utilcode/util/BusUtils$ThreadMode;,
        Lcom/blankj/utilcode/util/BusUtils$BusInfo;
    }
.end annotation


# static fields
.field private static final NULL:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "BusUtils"


# instance fields
.field private final mClassName_BusesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClassName_Tag_Arg4StickyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClassName_TagsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTag_BusInfoListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/BusUtils$BusInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    const-string v0, "nULl"

    #@2
    .line 32
    sput-object v0, Lcom/blankj/utilcode/util/BusUtils;->NULL:Ljava/lang/Object;

    #@4
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    #@0
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    #@a
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@f
    iput-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    #@11
    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@16
    iput-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_TagsMap:Ljava/util/Map;

    #@18
    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@1a
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    #@1f
    .line 41
    invoke-direct {p0}, Lcom/blankj/utilcode/util/BusUtils;->init()V

    #@22
    return-void
.end method

.method synthetic constructor <init>(Lcom/blankj/utilcode/util/BusUtils$1;)V
    .registers 2

    #@0
    .line 30
    invoke-direct {p0}, Lcom/blankj/utilcode/util/BusUtils;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$100(Lcom/blankj/utilcode/util/BusUtils;Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 5

    #@0
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/BusUtils;->realInvokeMethod(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    #@3
    return-void
.end method

.method private consumeSticky(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9

    #@0
    .line 169
    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-nez v0, :cond_25

    #@a
    const-string p1, "BusUtils"

    #@c
    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    #@e
    const-string v0, "The bus of tag <"

    #@10
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p2

    #@17
    const-string p3, "> is not exists."

    #@19
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p2

    #@1d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p2

    #@21
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    return-void

    #@25
    .line 174
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v0

    #@29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_6c

    #@2f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;

    #@35
    .line 175
    iget-object v2, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->subClassNames:Ljava/util/List;

    #@37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@42
    move-result v2

    #@43
    if-nez v2, :cond_46

    #@45
    goto :goto_29

    #@46
    .line 178
    :cond_46
    iget-boolean v2, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->sticky:Z

    #@48
    if-nez v2, :cond_4b

    #@4a
    goto :goto_29

    #@4b
    .line 182
    :cond_4b
    iget-object v2, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    #@4d
    monitor-enter v2

    #@4e
    .line 183
    :try_start_4e
    iget-object v3, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    #@50
    iget-object v4, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    #@52
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v3

    #@56
    check-cast v3, Ljava/util/Map;

    #@58
    if-eqz v3, :cond_67

    #@5a
    .line 184
    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5d
    move-result v3

    #@5e
    if-nez v3, :cond_61

    #@60
    goto :goto_67

    #@61
    :cond_61
    const/4 v3, 0x1

    #@62
    .line 187
    invoke-direct {p0, p1, p3, v1, v3}, Lcom/blankj/utilcode/util/BusUtils;->invokeBus(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    #@65
    .line 188
    monitor-exit v2

    #@66
    goto :goto_29

    #@67
    .line 185
    :cond_67
    :goto_67
    monitor-exit v2

    #@68
    goto :goto_29

    #@69
    :catchall_69
    move-exception p1

    #@6a
    .line 188
    monitor-exit v2
    :try_end_6b
    .catchall {:try_start_4e .. :try_end_6b} :catchall_69

    #@6b
    throw p1

    #@6c
    :cond_6c
    return-void
.end method

.method private consumeStickyIfExist(Ljava/lang/Object;)V
    .registers 6

    #@0
    .line 159
    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/Map;

    #@10
    if-nez v0, :cond_13

    #@12
    return-void

    #@13
    .line 161
    :cond_13
    iget-object v1, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    #@15
    monitor-enter v1

    #@16
    .line 162
    :try_start_16
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@19
    move-result-object v0

    #@1a
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v0

    #@1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_38

    #@24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Ljava/util/Map$Entry;

    #@2a
    .line 163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Ljava/lang/String;

    #@30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v2

    #@34
    invoke-direct {p0, p1, v3, v2}, Lcom/blankj/utilcode/util/BusUtils;->consumeSticky(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    #@37
    goto :goto_1e

    #@38
    .line 165
    :cond_38
    monitor-exit v1

    #@39
    return-void

    #@3a
    :catchall_3a
    move-exception p1

    #@3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_16 .. :try_end_3c} :catchall_3a

    #@3c
    throw p1
.end method

.method private getClassName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .line 254
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@6
    move-result v0

    #@7
    const/4 v1, -0x1

    #@8
    sparse-switch v0, :sswitch_data_84

    #@b
    goto/16 :goto_64

    #@d
    :sswitch_d
    const-string v0, "short"

    #@f
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-nez v0, :cond_16

    #@15
    goto :goto_64

    #@16
    :cond_16
    const/4 v1, 0x7

    #@17
    goto :goto_64

    #@18
    :sswitch_18
    const-string v0, "float"

    #@1a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-nez v0, :cond_21

    #@20
    goto :goto_64

    #@21
    :cond_21
    const/4 v1, 0x6

    #@22
    goto :goto_64

    #@23
    :sswitch_23
    const-string v0, "boolean"

    #@25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-nez v0, :cond_2c

    #@2b
    goto :goto_64

    #@2c
    :cond_2c
    const/4 v1, 0x5

    #@2d
    goto :goto_64

    #@2e
    :sswitch_2e
    const-string v0, "long"

    #@30
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_37

    #@36
    goto :goto_64

    #@37
    :cond_37
    const/4 v1, 0x4

    #@38
    goto :goto_64

    #@39
    :sswitch_39
    const-string v0, "char"

    #@3b
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v0

    #@3f
    if-nez v0, :cond_42

    #@41
    goto :goto_64

    #@42
    :cond_42
    const/4 v1, 0x3

    #@43
    goto :goto_64

    #@44
    :sswitch_44
    const-string v0, "byte"

    #@46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v0

    #@4a
    if-nez v0, :cond_4d

    #@4c
    goto :goto_64

    #@4d
    :cond_4d
    const/4 v1, 0x2

    #@4e
    goto :goto_64

    #@4f
    :sswitch_4f
    const-string v0, "int"

    #@51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v0

    #@55
    if-nez v0, :cond_58

    #@57
    goto :goto_64

    #@58
    :cond_58
    const/4 v1, 0x1

    #@59
    goto :goto_64

    #@5a
    :sswitch_5a
    const-string v0, "double"

    #@5c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v0

    #@60
    if-nez v0, :cond_63

    #@62
    goto :goto_64

    #@63
    :cond_63
    const/4 v1, 0x0

    #@64
    :goto_64
    packed-switch v1, :pswitch_data_a6

    #@67
    .line 272
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@6a
    move-result-object p1

    #@6b
    return-object p1

    #@6c
    .line 262
    :pswitch_6c
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    #@6e
    return-object p1

    #@6f
    .line 268
    :pswitch_6f
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@71
    return-object p1

    #@72
    .line 256
    :pswitch_72
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@74
    return-object p1

    #@75
    .line 260
    :pswitch_75
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@77
    return-object p1

    #@78
    .line 270
    :pswitch_78
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    #@7a
    return-object p1

    #@7b
    .line 264
    :pswitch_7b
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@7d
    return-object p1

    #@7e
    .line 258
    :pswitch_7e
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@80
    return-object p1

    #@81
    .line 266
    :pswitch_81
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    #@83
    return-object p1

    #@84
    :sswitch_data_84
    .sparse-switch
        -0x4f08842f -> :sswitch_5a
        0x197ef -> :sswitch_4f
        0x2e6108 -> :sswitch_44
        0x2e9356 -> :sswitch_39
        0x32c67c -> :sswitch_2e
        0x3db6c28 -> :sswitch_23
        0x5d0225c -> :sswitch_18
        0x685847c -> :sswitch_d
    .end sparse-switch

    #@a6
    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
    .end packed-switch
.end method

.method private static getInstance()Lcom/blankj/utilcode/util/BusUtils;
    .registers 1

    #@0
    .line 105
    # getter for: Lcom/blankj/utilcode/util/BusUtils$LazyHolder;->INSTANCE:Lcom/blankj/utilcode/util/BusUtils;
    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils$LazyHolder;->access$000()Lcom/blankj/utilcode/util/BusUtils;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private getMethodByBusInfo(Lcom/blankj/utilcode/util/BusUtils$BusInfo;)Ljava/lang/reflect/Method;
    .registers 6

    #@0
    :try_start_0
    const-string v0, ""

    #@2
    .line 240
    iget-object v1, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->paramType:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    const/4 v1, 0x0

    #@9
    if-eqz v0, :cond_1a

    #@b
    .line 241
    iget-object v0, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    #@d
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@10
    move-result-object v0

    #@11
    iget-object p1, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->funName:Ljava/lang/String;

    #@13
    new-array v1, v1, [Ljava/lang/Class;

    #@15
    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@18
    move-result-object p1

    #@19
    return-object p1

    #@1a
    .line 243
    :cond_1a
    iget-object v0, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    #@1c
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@1f
    move-result-object v0

    #@20
    iget-object v2, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->funName:Ljava/lang/String;

    #@22
    const/4 v3, 0x1

    #@23
    new-array v3, v3, [Ljava/lang/Class;

    #@25
    iget-object p1, p1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->paramType:Ljava/lang/String;

    #@27
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/BusUtils;->getClassName(Ljava/lang/String;)Ljava/lang/Class;

    #@2a
    move-result-object p1

    #@2b
    aput-object p1, v3, v1

    #@2d
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@30
    move-result-object p1
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_31} :catch_37
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_31} :catch_32

    #@31
    return-object p1

    #@32
    :catch_32
    move-exception p1

    #@33
    .line 248
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    #@36
    goto :goto_3b

    #@37
    :catch_37
    move-exception p1

    #@38
    .line 246
    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    #@3b
    :goto_3b
    const/4 p1, 0x0

    #@3c
    return-object p1
.end method

.method private init()V
    .registers 1

    #@0
    return-void
.end method

.method private invokeBus(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 224
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/BusUtils;->invokeBus(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    #@4
    return-void
.end method

.method private invokeBus(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 6

    #@0
    .line 228
    iget-object v0, p3, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->method:Ljava/lang/reflect/Method;

    #@2
    if-nez v0, :cond_d

    #@4
    .line 229
    invoke-direct {p0, p3}, Lcom/blankj/utilcode/util/BusUtils;->getMethodByBusInfo(Lcom/blankj/utilcode/util/BusUtils$BusInfo;)Ljava/lang/reflect/Method;

    #@7
    move-result-object v0

    #@8
    if-nez v0, :cond_b

    #@a
    return-void

    #@b
    .line 233
    :cond_b
    iput-object v0, p3, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->method:Ljava/lang/reflect/Method;

    #@d
    .line 235
    :cond_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/blankj/utilcode/util/BusUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    #@10
    return-void
.end method

.method private invokeBuses(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/blankj/utilcode/util/BusUtils$BusInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .line 331
    :try_start_0
    sget-object v0, Lcom/blankj/utilcode/util/BusUtils;->NULL:Ljava/lang/Object;

    #@2
    const/4 v1, 0x0

    #@3
    if-ne p1, v0, :cond_1b

    #@5
    .line 332
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object p1

    #@9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result p3

    #@d
    if-eqz p3, :cond_3d

    #@f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object p3

    #@13
    .line 333
    iget-object v0, p2, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->method:Ljava/lang/reflect/Method;

    #@15
    new-array v2, v1, [Ljava/lang/Object;

    #@17
    invoke-virtual {v0, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    goto :goto_9

    #@1b
    .line 336
    :cond_1b
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object p3

    #@1f
    :goto_1f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v0

    #@23
    if-eqz v0, :cond_3d

    #@25
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    .line 337
    iget-object v2, p2, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->method:Ljava/lang/reflect/Method;

    #@2b
    const/4 v3, 0x1

    #@2c
    new-array v3, v3, [Ljava/lang/Object;

    #@2e
    aput-object p1, v3, v1

    #@30
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_33} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_33} :catch_34

    #@33
    goto :goto_1f

    #@34
    :catch_34
    move-exception p1

    #@35
    .line 343
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    #@38
    goto :goto_3d

    #@39
    :catch_39
    move-exception p1

    #@3a
    .line 341
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    #@3d
    :cond_3d
    :goto_3d
    return-void
.end method

.method private invokeMethod(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 5

    #@0
    const/4 v0, 0x0

    #@1
    .line 277
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/BusUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    #@4
    return-void
.end method

.method private invokeMethod(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 12

    #@0
    .line 281
    new-instance v6, Lcom/blankj/utilcode/util/BusUtils$1;

    #@2
    move-object v0, v6

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move-object v3, p2

    #@6
    move-object v4, p3

    #@7
    move v5, p4

    #@8
    invoke-direct/range {v0 .. v5}, Lcom/blankj/utilcode/util/BusUtils$1;-><init>(Lcom/blankj/utilcode/util/BusUtils;Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    #@b
    .line 287
    iget-object p1, p3, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->threadMode:Ljava/lang/String;

    #@d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    #@13
    move-result p2

    #@14
    const/4 p3, -0x1

    #@15
    sparse-switch p2, :sswitch_data_7a

    #@18
    goto :goto_4f

    #@19
    :sswitch_19
    const-string p2, "CACHED"

    #@1b
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result p1

    #@1f
    if-nez p1, :cond_22

    #@21
    goto :goto_4f

    #@22
    :cond_22
    const/4 p3, 0x4

    #@23
    goto :goto_4f

    #@24
    :sswitch_24
    const-string p2, "MAIN"

    #@26
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result p1

    #@2a
    if-nez p1, :cond_2d

    #@2c
    goto :goto_4f

    #@2d
    :cond_2d
    const/4 p3, 0x3

    #@2e
    goto :goto_4f

    #@2f
    :sswitch_2f
    const-string p2, "CPU"

    #@31
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result p1

    #@35
    if-nez p1, :cond_38

    #@37
    goto :goto_4f

    #@38
    :cond_38
    const/4 p3, 0x2

    #@39
    goto :goto_4f

    #@3a
    :sswitch_3a
    const-string p2, "IO"

    #@3c
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result p1

    #@40
    if-nez p1, :cond_43

    #@42
    goto :goto_4f

    #@43
    :cond_43
    const/4 p3, 0x1

    #@44
    goto :goto_4f

    #@45
    :sswitch_45
    const-string p2, "SINGLE"

    #@47
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result p1

    #@4b
    if-nez p1, :cond_4e

    #@4d
    goto :goto_4f

    #@4e
    :cond_4e
    const/4 p3, 0x0

    #@4f
    :goto_4f
    packed-switch p3, :pswitch_data_90

    #@52
    .line 304
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    #@55
    return-void

    #@56
    .line 298
    :pswitch_56
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getCachedPool()Ljava/util/concurrent/ExecutorService;

    #@59
    move-result-object p1

    #@5a
    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@5d
    return-void

    #@5e
    .line 289
    :pswitch_5e
    invoke-static {v6}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    #@61
    return-void

    #@62
    .line 295
    :pswitch_62
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getCpuPool()Ljava/util/concurrent/ExecutorService;

    #@65
    move-result-object p1

    #@66
    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@69
    return-void

    #@6a
    .line 292
    :pswitch_6a
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getIoPool()Ljava/util/concurrent/ExecutorService;

    #@6d
    move-result-object p1

    #@6e
    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@71
    return-void

    #@72
    .line 301
    :pswitch_72
    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->getSinglePool()Ljava/util/concurrent/ExecutorService;

    #@75
    move-result-object p1

    #@76
    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    #@79
    return-void

    #@7a
    :sswitch_data_7a
    .sparse-switch
        -0x6e3487b8 -> :sswitch_45
        0x926 -> :sswitch_3a
        0x10588 -> :sswitch_2f
        0x23fdb9 -> :sswitch_24
        0x76083522 -> :sswitch_19
    .end sparse-switch

    #@90
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_72
        :pswitch_6a
        :pswitch_62
        :pswitch_5e
        :pswitch_56
    .end packed-switch
.end method

.method public static post(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 76
    sget-object v0, Lcom/blankj/utilcode/util/BusUtils;->NULL:Ljava/lang/Object;

    #@2
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/BusUtils;->post(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 80
    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    #@3
    move-result-object v0

    #@4
    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/BusUtils;->postInner(Ljava/lang/String;Ljava/lang/Object;)V

    #@7
    return-void
.end method

.method private postInner(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 206
    invoke-direct {p0, p1, p2, v0}, Lcom/blankj/utilcode/util/BusUtils;->postInner(Ljava/lang/String;Ljava/lang/Object;Z)V

    #@4
    return-void
.end method

.method private postInner(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5

    #@0
    .line 210
    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-nez v0, :cond_32

    #@a
    .line 212
    new-instance p2, Ljava/lang/StringBuilder;

    #@c
    const-string p3, "The bus of tag <"

    #@e
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object p1

    #@15
    const-string p2, "> is not exists."

    #@17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object p1

    #@1b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object p1

    #@1f
    const-string p2, "BusUtils"

    #@21
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 213
    iget-object p1, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    #@26
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@29
    move-result p1

    #@2a
    if-eqz p1, :cond_31

    #@2c
    const-string p1, "Please check whether the bus plugin is applied."

    #@2e
    .line 214
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    :cond_31
    return-void

    #@32
    .line 218
    :cond_32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@35
    move-result-object p1

    #@36
    :goto_36
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_46

    #@3c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f
    move-result-object v0

    #@40
    check-cast v0, Lcom/blankj/utilcode/util/BusUtils$BusInfo;

    #@42
    .line 219
    invoke-direct {p0, p2, v0, p3}, Lcom/blankj/utilcode/util/BusUtils;->invokeBus(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    #@45
    goto :goto_36

    #@46
    :cond_46
    return-void
.end method

.method public static postSticky(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 84
    sget-object v0, Lcom/blankj/utilcode/util/BusUtils;->NULL:Ljava/lang/Object;

    #@2
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/BusUtils;->postSticky(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    return-void
.end method

.method public static postSticky(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    #@0
    .line 88
    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    #@3
    move-result-object v0

    #@4
    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/BusUtils;->postStickyInner(Ljava/lang/String;Ljava/lang/Object;)V

    #@7
    return-void
.end method

.method private postStickyInner(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9

    #@0
    .line 348
    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-nez v0, :cond_25

    #@a
    const-string p2, "BusUtils"

    #@c
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    #@e
    const-string v1, "The bus of tag <"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p1

    #@17
    const-string v0, "> is not exists."

    #@19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p1

    #@1d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p1

    #@21
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    return-void

    #@25
    .line 354
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v0

    #@29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_65

    #@2f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;

    #@35
    .line 355
    iget-boolean v2, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->sticky:Z

    #@37
    if-nez v2, :cond_3e

    #@39
    const/4 v2, 0x0

    #@3a
    .line 356
    invoke-direct {p0, p2, v1, v2}, Lcom/blankj/utilcode/util/BusUtils;->invokeBus(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    #@3d
    goto :goto_29

    #@3e
    .line 359
    :cond_3e
    iget-object v2, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    #@40
    monitor-enter v2

    #@41
    .line 360
    :try_start_41
    iget-object v3, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    #@43
    iget-object v4, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    #@45
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v3

    #@49
    check-cast v3, Ljava/util/Map;

    #@4b
    if-nez v3, :cond_59

    #@4d
    .line 362
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    #@4f
    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@52
    .line 363
    iget-object v4, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    #@54
    iget-object v5, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    #@56
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    .line 365
    :cond_59
    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    .line 366
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_41 .. :try_end_5d} :catchall_62

    #@5d
    const/4 v2, 0x1

    #@5e
    .line 367
    invoke-direct {p0, p2, v1, v2}, Lcom/blankj/utilcode/util/BusUtils;->invokeBus(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V

    #@61
    goto :goto_29

    #@62
    :catchall_62
    move-exception p1

    #@63
    .line 366
    :try_start_63
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    #@64
    throw p1

    #@65
    :cond_65
    return-void
.end method

.method private realInvokeMethod(Ljava/lang/Object;Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Z)V
    .registers 8

    #@0
    .line 309
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    if-nez p1, :cond_50

    #@7
    .line 311
    iget-object p1, p3, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->subClassNames:Ljava/util/List;

    #@9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object p1

    #@d
    :cond_d
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_2d

    #@13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/String;

    #@19
    .line 312
    iget-object v2, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    #@1b
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Ljava/util/Set;

    #@21
    if-eqz v1, :cond_d

    #@23
    .line 313
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_d

    #@29
    .line 314
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2c
    goto :goto_d

    #@2d
    .line 317
    :cond_2d
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@30
    move-result p1

    #@31
    if-nez p1, :cond_53

    #@33
    if-nez p4, :cond_4f

    #@35
    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    #@37
    const-string p2, "The "

    #@39
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3c
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object p1

    #@40
    const-string p2, " was not registered before."

    #@42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object p1

    #@46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object p1

    #@4a
    const-string p2, "BusUtils"

    #@4c
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4f
    :cond_4f
    return-void

    #@50
    .line 324
    :cond_50
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@53
    .line 326
    :cond_53
    invoke-direct {p0, p2, p3, v0}, Lcom/blankj/utilcode/util/BusUtils;->invokeBuses(Ljava/lang/Object;Lcom/blankj/utilcode/util/BusUtils$BusInfo;Ljava/util/Set;)V

    #@56
    return-void
.end method

.method private recordTags(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .line 134
    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_TagsMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-nez v0, :cond_72

    #@a
    .line 136
    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_TagsMap:Ljava/util/Map;

    #@c
    monitor-enter v0

    #@d
    .line 137
    :try_start_d
    iget-object v1, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_TagsMap:Ljava/util/Map;

    #@f
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/util/List;

    #@15
    if-nez v1, :cond_6d

    #@17
    .line 139
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@19
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@1c
    .line 140
    iget-object v2, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    #@1e
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v2

    #@26
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_68

    #@2c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v3

    #@30
    check-cast v3, Ljava/util/Map$Entry;

    #@32
    .line 141
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@35
    move-result-object v4

    #@36
    check-cast v4, Ljava/util/List;

    #@38
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@3b
    move-result-object v4

    #@3c
    :cond_3c
    :goto_3c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@3f
    move-result v5

    #@40
    if-eqz v5, :cond_26

    #@42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@45
    move-result-object v5

    #@46
    check-cast v5, Lcom/blankj/utilcode/util/BusUtils$BusInfo;
    :try_end_48
    .catchall {:try_start_d .. :try_end_48} :catchall_6f

    #@48
    .line 143
    :try_start_48
    iget-object v6, v5, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    #@4a
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@4d
    move-result-object v6

    #@4e
    invoke-virtual {v6, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@51
    move-result v6

    #@52
    if-eqz v6, :cond_3c

    #@54
    .line 144
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@57
    move-result-object v6

    #@58
    check-cast v6, Ljava/lang/String;

    #@5a
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5d
    .line 145
    iget-object v5, v5, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->subClassNames:Ljava/util/List;

    #@5f
    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catch Ljava/lang/ClassNotFoundException; {:try_start_48 .. :try_end_62} :catch_63
    .catchall {:try_start_48 .. :try_end_62} :catchall_6f

    #@62
    goto :goto_3c

    #@63
    :catch_63
    move-exception v5

    #@64
    .line 148
    :try_start_64
    invoke-virtual {v5}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    #@67
    goto :goto_3c

    #@68
    .line 152
    :cond_68
    iget-object p1, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_TagsMap:Ljava/util/Map;

    #@6a
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6d
    .line 154
    :cond_6d
    monitor-exit v0

    #@6e
    goto :goto_72

    #@6f
    :catchall_6f
    move-exception p1

    #@70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_64 .. :try_end_71} :catchall_6f

    #@71
    throw p1

    #@72
    :cond_72
    :goto_72
    return-void
.end method

.method public static register(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 68
    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    #@3
    move-result-object v0

    #@4
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/BusUtils;->registerInner(Ljava/lang/Object;)V

    #@7
    return-void
.end method

.method private registerBus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 17

    #@0
    const/4 v8, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v5, p5

    #@7
    move v6, p6

    #@8
    move-object/from16 v7, p7

    #@a
    .line 53
    invoke-direct/range {v0 .. v8}, Lcom/blankj/utilcode/util/BusUtils;->registerBus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    #@d
    return-void
.end method

.method private registerBus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 21

    #@0
    move-object v0, p0

    #@1
    move-object v2, p1

    #@2
    .line 59
    iget-object v1, v0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    #@4
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/List;

    #@a
    if-nez v1, :cond_16

    #@c
    .line 61
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    #@e
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    #@11
    .line 62
    iget-object v3, v0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    #@13
    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    :cond_16
    move-object v10, v1

    #@17
    .line 64
    new-instance v11, Lcom/blankj/utilcode/util/BusUtils$BusInfo;

    #@19
    move-object v1, v11

    #@1a
    move-object v2, p1

    #@1b
    move-object v3, p2

    #@1c
    move-object v4, p3

    #@1d
    move-object/from16 v5, p4

    #@1f
    move-object/from16 v6, p5

    #@21
    move/from16 v7, p6

    #@23
    move-object/from16 v8, p7

    #@25
    move/from16 v9, p8

    #@27
    invoke-direct/range {v1 .. v9}, Lcom/blankj/utilcode/util/BusUtils$BusInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    #@2a
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    return-void
.end method

.method static registerBus4Test(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 17

    #@0
    .line 394
    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    #@3
    move-result-object v0

    #@4
    move-object v1, p0

    #@5
    move-object v2, p1

    #@6
    move-object v3, p2

    #@7
    move-object v4, p3

    #@8
    move-object v5, p4

    #@9
    move v6, p5

    #@a
    move-object v7, p6

    #@b
    move/from16 v8, p7

    #@d
    invoke-direct/range {v0 .. v8}, Lcom/blankj/utilcode/util/BusUtils;->registerBus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    #@10
    return-void
.end method

.method private registerInner(Ljava/lang/Object;)V
    .registers 9

    #@0
    const-string v0, "The bus of <"

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    .line 110
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    .line 111
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 113
    iget-object v3, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    #@f
    monitor-enter v3

    #@10
    .line 114
    :try_start_10
    iget-object v4, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    #@12
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v4

    #@16
    check-cast v4, Ljava/util/Set;

    #@18
    if-nez v4, :cond_26

    #@1a
    .line 116
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArraySet;

    #@1c
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    #@1f
    .line 117
    iget-object v5, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    #@21
    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    const/4 v5, 0x1

    #@25
    goto :goto_27

    #@26
    :cond_26
    const/4 v5, 0x0

    #@27
    .line 120
    :goto_27
    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2a
    move-result v6

    #@2b
    if-eqz v6, :cond_47

    #@2d
    const-string v1, "BusUtils"

    #@2f
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@34
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object p1

    #@38
    const-string v0, "> already registered."

    #@3a
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object p1

    #@3e
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object p1

    #@42
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 122
    monitor-exit v3

    #@46
    return-void

    #@47
    .line 124
    :cond_47
    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4a
    .line 126
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_10 .. :try_end_4b} :catchall_54

    #@4b
    if-eqz v5, :cond_50

    #@4d
    .line 128
    invoke-direct {p0, v1, v2}, Lcom/blankj/utilcode/util/BusUtils;->recordTags(Ljava/lang/Class;Ljava/lang/String;)V

    #@50
    .line 130
    :cond_50
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/BusUtils;->consumeStickyIfExist(Ljava/lang/Object;)V

    #@53
    return-void

    #@54
    :catchall_54
    move-exception p1

    #@55
    .line 126
    :try_start_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    #@56
    throw p1
.end method

.method public static removeSticky(Ljava/lang/String;)V
    .registers 2

    #@0
    .line 92
    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    #@3
    move-result-object v0

    #@4
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/BusUtils;->removeStickyInner(Ljava/lang/String;)V

    #@7
    return-void
.end method

.method private removeStickyInner(Ljava/lang/String;)V
    .registers 6

    #@0
    .line 372
    iget-object v0, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/List;

    #@8
    if-nez v0, :cond_25

    #@a
    const-string v0, "BusUtils"

    #@c
    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    const-string v2, "The bus of tag <"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object p1

    #@17
    const-string v1, "> is not exists."

    #@19
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object p1

    #@1d
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object p1

    #@21
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    return-void

    #@25
    .line 377
    :cond_25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v0

    #@29
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_5a

    #@2f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;

    #@35
    .line 378
    iget-boolean v2, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->sticky:Z

    #@37
    if-nez v2, :cond_3a

    #@39
    goto :goto_29

    #@3a
    .line 381
    :cond_3a
    iget-object v2, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    #@3c
    monitor-enter v2

    #@3d
    .line 382
    :try_start_3d
    iget-object v3, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_Tag_Arg4StickyMap:Ljava/util/Map;

    #@3f
    iget-object v1, v1, Lcom/blankj/utilcode/util/BusUtils$BusInfo;->className:Ljava/lang/String;

    #@41
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    check-cast v1, Ljava/util/Map;

    #@47
    if-eqz v1, :cond_55

    #@49
    .line 383
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@4c
    move-result v3

    #@4d
    if-nez v3, :cond_50

    #@4f
    goto :goto_55

    #@50
    .line 386
    :cond_50
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 387
    monitor-exit v2

    #@54
    goto :goto_29

    #@55
    .line 384
    :cond_55
    :goto_55
    monitor-exit v2

    #@56
    return-void

    #@57
    :catchall_57
    move-exception p1

    #@58
    .line 387
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_3d .. :try_end_59} :catchall_57

    #@59
    throw p1

    #@5a
    :cond_5a
    return-void
.end method

.method public static toString_()Ljava/lang/String;
    .registers 1

    #@0
    .line 96
    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/blankj/utilcode/util/BusUtils;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static unregister(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 72
    invoke-static {}, Lcom/blankj/utilcode/util/BusUtils;->getInstance()Lcom/blankj/utilcode/util/BusUtils;

    #@3
    move-result-object v0

    #@4
    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/BusUtils;->unregisterInner(Ljava/lang/Object;)V

    #@7
    return-void
.end method

.method private unregisterInner(Ljava/lang/Object;)V
    .registers 6

    #@0
    const-string v0, "The bus of <"

    #@2
    if-nez p1, :cond_5

    #@4
    return-void

    #@5
    .line 194
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    .line 195
    iget-object v2, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    #@f
    monitor-enter v2

    #@10
    .line 196
    :try_start_10
    iget-object v3, p0, Lcom/blankj/utilcode/util/BusUtils;->mClassName_BusesMap:Ljava/util/Map;

    #@12
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/util/Set;

    #@18
    if-eqz v1, :cond_26

    #@1a
    .line 197
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_21

    #@20
    goto :goto_26

    #@21
    .line 201
    :cond_21
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@24
    .line 202
    monitor-exit v2

    #@25
    return-void

    #@26
    :cond_26
    :goto_26
    const-string v1, "BusUtils"

    #@28
    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@2d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object p1

    #@31
    const-string v0, "> was not registered before."

    #@33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object p1

    #@37
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object p1

    #@3b
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 199
    monitor-exit v2

    #@3f
    return-void

    #@40
    :catchall_40
    move-exception p1

    #@41
    .line 202
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_10 .. :try_end_42} :catchall_40

    #@42
    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    #@0
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string v1, "BusUtils: "

    #@4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@7
    iget-object v1, p0, Lcom/blankj/utilcode/util/BusUtils;->mTag_BusInfoListMap:Ljava/util/Map;

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method
