.class Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$LazyHolder;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    #@0
    .line 939
    new-instance v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@2
    invoke-direct {v0}, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;-><init>()V

    #@5
    sput-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$LazyHolder;->INSTANCE:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@7
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$800()Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;
    .registers 1

    #@0
    .line 938
    sget-object v0, Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver$LazyHolder;->INSTANCE:Lcom/blankj/utilcode/util/NetworkUtils$NetworkChangedReceiver;

    #@2
    return-object v0
.end method
