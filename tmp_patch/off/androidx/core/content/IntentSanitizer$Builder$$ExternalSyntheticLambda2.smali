.class public final synthetic Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    #@5
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    #@0
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    #@2
    check-cast p1, Ljava/lang/String;

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->$r8$lambda$yzjFOqRUGseo4jtNtyZsqFTIwRc(Ljava/lang/String;Ljava/lang/Object;)Z

    #@7
    move-result p1

    #@8
    return p1
.end method
