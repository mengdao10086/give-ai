.class public final synthetic Landroidx/core/util/Predicate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic f$0:Landroidx/core/util/Predicate;

.field public final synthetic f$1:Landroidx/core/util/Predicate;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda0;->f$0:Landroidx/core/util/Predicate;

    #@5
    iput-object p2, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda0;->f$1:Landroidx/core/util/Predicate;

    #@7
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 4

    #@0
    iget-object v0, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda0;->f$0:Landroidx/core/util/Predicate;

    #@2
    iget-object v1, p0, Landroidx/core/util/Predicate$$ExternalSyntheticLambda0;->f$1:Landroidx/core/util/Predicate;

    #@4
    invoke-static {v0, v1, p1}, Landroidx/core/util/Predicate;->lambda$or$2(Landroidx/core/util/Predicate;Landroidx/core/util/Predicate;Ljava/lang/Object;)Z

    #@7
    move-result p1

    #@8
    return p1
.end method
