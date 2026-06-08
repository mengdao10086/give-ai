.class public final synthetic Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroidx/fragment/app/strictmode/Violation;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V
    .registers 3

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    #@5
    iput-object p2, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda1;->f$1:Landroidx/fragment/app/strictmode/Violation;

    #@7
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    #@0
    iget-object v0, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    #@2
    iget-object v1, p0, Landroidx/fragment/app/strictmode/FragmentStrictMode$$ExternalSyntheticLambda1;->f$1:Landroidx/fragment/app/strictmode/Violation;

    #@4
    invoke-static {v0, v1}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->$r8$lambda$ujbeN2H_kHMJp2XfgBvtZfltiz0(Ljava/lang/String;Landroidx/fragment/app/strictmode/Violation;)V

    #@7
    return-void
.end method
