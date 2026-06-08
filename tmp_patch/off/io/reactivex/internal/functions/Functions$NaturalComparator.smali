.class final enum Lio/reactivex/internal/functions/Functions$NaturalComparator;
.super Ljava/lang/Enum;
.source "Functions.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NaturalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/functions/Functions$NaturalComparator;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/functions/Functions$NaturalComparator;

.field public static final enum INSTANCE:Lio/reactivex/internal/functions/Functions$NaturalComparator;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    .line 482
    new-instance v0, Lio/reactivex/internal/functions/Functions$NaturalComparator;

    #@2
    const-string v1, "INSTANCE"

    #@4
    const/4 v2, 0x0

    #@5
    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/functions/Functions$NaturalComparator;-><init>(Ljava/lang/String;I)V

    #@8
    sput-object v0, Lio/reactivex/internal/functions/Functions$NaturalComparator;->INSTANCE:Lio/reactivex/internal/functions/Functions$NaturalComparator;

    #@a
    const/4 v1, 0x1

    #@b
    new-array v1, v1, [Lio/reactivex/internal/functions/Functions$NaturalComparator;

    #@d
    aput-object v0, v1, v2

    #@f
    .line 481
    sput-object v1, Lio/reactivex/internal/functions/Functions$NaturalComparator;->$VALUES:[Lio/reactivex/internal/functions/Functions$NaturalComparator;

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
    .line 481
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/functions/Functions$NaturalComparator;
    .registers 2

    #@0
    .line 481
    const-class v0, Lio/reactivex/internal/functions/Functions$NaturalComparator;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object p0

    #@6
    check-cast p0, Lio/reactivex/internal/functions/Functions$NaturalComparator;

    #@8
    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/functions/Functions$NaturalComparator;
    .registers 1

    #@0
    .line 481
    sget-object v0, Lio/reactivex/internal/functions/Functions$NaturalComparator;->$VALUES:[Lio/reactivex/internal/functions/Functions$NaturalComparator;

    #@2
    invoke-virtual {v0}, [Lio/reactivex/internal/functions/Functions$NaturalComparator;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lio/reactivex/internal/functions/Functions$NaturalComparator;

    #@8
    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    #@0
    .line 487
    check-cast p1, Ljava/lang/Comparable;

    #@2
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@5
    move-result p1

    #@6
    return p1
.end method
