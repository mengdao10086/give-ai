.class final enum Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;
.super Ljava/lang/Enum;
.source "ObservableInternalHelper.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MapToInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;",
        ">;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;

.field public static final enum INSTANCE:Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 194
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;

    #@2
    const-string v1, "INSTANCE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;->INSTANCE:Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;

    #@d
    aput-object v0, v1, v2

    #@f
    .line 193
    sput-object v1, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;->$VALUES:[Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;

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
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;
    .registers 2

    #@0
    .line 193
    const-class v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;
    .registers 1

    #@0
    .line 193
    sget-object v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;->$VALUES:[Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservableInternalHelper$MapToInt;

    #@8
    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    const/4 p1, 0x0

    #@1
    .line 197
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4
    move-result-object p1

    #@5
    return-object p1
.end method
