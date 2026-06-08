.class final enum Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;
.super Ljava/lang/Enum;
.source "SingleInternalHelper.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ToObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;",
        ">;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/SingleSource;",
        "Lio/reactivex/Observable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;

.field public static final enum INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 106
    new-instance v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;

    #@2
    const-string v1, "INSTANCE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;->INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;

    #@d
    aput-object v0, v1, v2

    #@f
    .line 104
    sput-object v1, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;->$VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;

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
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;
    .registers 2

    #@0
    .line 104
    const-class v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;
    .registers 1

    #@0
    .line 104
    sget-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;->$VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;

    #@8
    return-object v0
.end method


# virtual methods
.method public apply(Lio/reactivex/SingleSource;)Lio/reactivex/Observable;
    .registers 3

    #@0
    .line 110
    new-instance v0, Lio/reactivex/internal/operators/single/SingleToObservable;

    #@2
    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/SingleToObservable;-><init>(Lio/reactivex/SingleSource;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .line 104
    check-cast p1, Lio/reactivex/SingleSource;

    #@2
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/single/SingleInternalHelper$ToObservable;->apply(Lio/reactivex/SingleSource;)Lio/reactivex/Observable;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method
