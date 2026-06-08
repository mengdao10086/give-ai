.class final enum Landroidx/concurrent/futures/DirectExecutor;
.super Ljava/lang/Enum;
.source "DirectExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/concurrent/futures/DirectExecutor;",
        ">;",
        "Ljava/util/concurrent/Executor;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/concurrent/futures/DirectExecutor;

.field public static final enum INSTANCE:Landroidx/concurrent/futures/DirectExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 26
    new-instance v0, Landroidx/concurrent/futures/DirectExecutor;

    #@2
    const-string v1, "INSTANCE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Landroidx/concurrent/futures/DirectExecutor;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Landroidx/concurrent/futures/DirectExecutor;->INSTANCE:Landroidx/concurrent/futures/DirectExecutor;

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [Landroidx/concurrent/futures/DirectExecutor;

    #@d
    aput-object v0, v1, v2

    #@f
    .line 25
    sput-object v1, Landroidx/concurrent/futures/DirectExecutor;->$VALUES:[Landroidx/concurrent/futures/DirectExecutor;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/concurrent/futures/DirectExecutor;
    .registers 2

    #@0
    .line 25
    const-class v0, Landroidx/concurrent/futures/DirectExecutor;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Landroidx/concurrent/futures/DirectExecutor;

    #@8
    return-object p0
.end method

.method public static values()[Landroidx/concurrent/futures/DirectExecutor;
    .registers 1

    #@0
    .line 25
    sget-object v0, Landroidx/concurrent/futures/DirectExecutor;->$VALUES:[Landroidx/concurrent/futures/DirectExecutor;

    #@2
    invoke-virtual {v0}, [Landroidx/concurrent/futures/DirectExecutor;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Landroidx/concurrent/futures/DirectExecutor;

    #@8
    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 2

    #@0
    .line 30
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    #@3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    const-string v0, "DirectExecutor"

    #@2
    return-object v0
.end method
