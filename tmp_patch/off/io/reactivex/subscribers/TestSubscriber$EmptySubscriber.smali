.class final enum Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;
.super Ljava/lang/Enum;
.source "TestSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subscribers/TestSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EmptySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

.field public static final enum INSTANCE:Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 426
    new-instance v0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    #@2
    const-string v1, "INSTANCE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;->INSTANCE:Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    #@d
    aput-object v0, v1, v2

    #@f
    .line 425
    sput-object v1, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;->$VALUES:[Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    #@11
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
    .line 425
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;
    .registers 2

    #@0
    .line 425
    const-class v0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;
    .registers 1

    #@0
    .line 425
    sget-object v0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;->$VALUES:[Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    #@8
    return-object v0
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    #@0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    #@0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2

    #@0
    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 2

    #@0
    return-void
.end method
