.class public final synthetic Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/util/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;)V
    .registers 2

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda9;->f$0:Landroid/content/ComponentName;

    #@5
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    #@0
    iget-object v0, p0, Landroidx/core/content/IntentSanitizer$Builder$$ExternalSyntheticLambda9;->f$0:Landroid/content/ComponentName;

    #@2
    check-cast p1, Landroid/content/ComponentName;

    #@4
    invoke-static {v0, p1}, Landroidx/core/content/IntentSanitizer$Builder;->$r8$lambda$f9aU52V4hLVPTW2v-TcMiSk5YDc(Landroid/content/ComponentName;Ljava/lang/Object;)Z

    #@7
    move-result p1

    #@8
    return p1
.end method
