.class public abstract enum Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;
.super Ljava/lang/Enum;
.source "BaseTestConsumer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/observers/BaseTestConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "TestWaitStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum SLEEP_1000MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum SLEEP_100MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum SLEEP_10MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum SLEEP_1MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum SPIN:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum YIELD:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    #@0
    .line 903
    new-instance v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$1;

    #@2
    const-string v1, "SPIN"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$1;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SPIN:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@a
    .line 910
    new-instance v1, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$2;

    #@c
    const-string v3, "YIELD"

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v1, v3, v4}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$2;-><init>(Ljava/lang/String;I)V

    #@12
    sput-object v1, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->YIELD:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@14
    .line 917
    new-instance v3, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$3;

    #@16
    const-string v5, "SLEEP_1MS"

    #@18
    const/4 v6, 0x2

    #@19
    invoke-direct {v3, v5, v6}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$3;-><init>(Ljava/lang/String;I)V

    #@1c
    sput-object v3, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_1MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@1e
    .line 924
    new-instance v5, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$4;

    #@20
    const-string v7, "SLEEP_10MS"

    #@22
    const/4 v8, 0x3

    #@23
    invoke-direct {v5, v7, v8}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$4;-><init>(Ljava/lang/String;I)V

    #@26
    sput-object v5, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_10MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@28
    .line 931
    new-instance v7, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$5;

    #@2a
    const-string v9, "SLEEP_100MS"

    #@2c
    const/4 v10, 0x4

    #@2d
    invoke-direct {v7, v9, v10}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$5;-><init>(Ljava/lang/String;I)V

    #@30
    sput-object v7, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_100MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@32
    .line 938
    new-instance v9, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$6;

    #@34
    const-string v11, "SLEEP_1000MS"

    #@36
    const/4 v12, 0x5

    #@37
    invoke-direct {v9, v11, v12}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$6;-><init>(Ljava/lang/String;I)V

    #@3a
    sput-object v9, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_1000MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@3c
    const/4 v11, 0x6

    #@3d
    new-array v11, v11, [Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@3f
    aput-object v0, v11, v2

    #@41
    aput-object v1, v11, v4

    #@43
    aput-object v3, v11, v6

    #@45
    aput-object v5, v11, v8

    #@47
    aput-object v7, v11, v10

    #@49
    aput-object v9, v11, v12

    #@4b
    .line 901
    sput-object v11, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->$VALUES:[Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@4d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    #@0
    .line 901
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILio/reactivex/observers/BaseTestConsumer$1;)V
    .registers 4

    #@0
    .line 901
    invoke-direct {p0, p1, p2}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static sleep(I)V
    .registers 3

    #@0
    int-to-long v0, p0

    #@1
    .line 951
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    #@4
    return-void

    #@5
    :catch_5
    move-exception p0

    #@6
    .line 953
    new-instance v0, Ljava/lang/RuntimeException;

    #@8
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;
    .registers 2

    #@0
    .line 901
    const-class v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;
    .registers 1

    #@0
    .line 901
    sget-object v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->$VALUES:[Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    #@8
    return-object v0
.end method


# virtual methods
.method public abstract run()V
.end method
