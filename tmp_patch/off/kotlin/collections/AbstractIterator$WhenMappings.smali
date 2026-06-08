.class public final synthetic Lkotlin/collections/AbstractIterator$WhenMappings;
.super Ljava/lang/Object;
.source "AbstractIterator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/collections/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    #@0
    invoke-static {}, Lkotlin/collections/State;->values()[Lkotlin/collections/State;

    #@3
    move-result-object v0

    #@4
    array-length v0, v0

    #@5
    new-array v0, v0, [I

    #@7
    :try_start_7
    sget-object v1, Lkotlin/collections/State;->Done:Lkotlin/collections/State;

    #@9
    invoke-virtual {v1}, Lkotlin/collections/State;->ordinal()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x1

    #@e
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    #@10
    :catch_10
    :try_start_10
    sget-object v1, Lkotlin/collections/State;->Ready:Lkotlin/collections/State;

    #@12
    invoke-virtual {v1}, Lkotlin/collections/State;->ordinal()I

    #@15
    move-result v1

    #@16
    const/4 v2, 0x2

    #@17
    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    #@19
    :catch_19
    sput-object v0, Lkotlin/collections/AbstractIterator$WhenMappings;->$EnumSwitchMapping$0:[I

    #@1b
    return-void
.end method
