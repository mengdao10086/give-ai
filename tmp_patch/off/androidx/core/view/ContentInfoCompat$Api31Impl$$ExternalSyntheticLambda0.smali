.class public final synthetic Landroidx/core/view/ContentInfoCompat$Api31Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/core/view/ContentInfoCompat$Api31Impl$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    #@5
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    #@0
    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$Api31Impl$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Predicate;

    #@2
    check-cast p1, Landroid/content/ClipData$Item;

    #@4
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    #@7
    move-result p1

    #@8
    return p1
.end method
