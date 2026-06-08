.class public final synthetic Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

.field public final synthetic f$1:Lcom/google/android/material/search/SearchBar;

.field public final synthetic f$2:Landroid/view/View;

.field public final synthetic f$3:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchBarAnimationHelper;Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V
    .registers 6

    #@0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    iput-object p1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@5
    iput-object p2, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/search/SearchBar;

    #@7
    iput-object p3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    #@9
    iput-object p4, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$3:Lcom/google/android/material/appbar/AppBarLayout;

    #@b
    iput-boolean p5, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$4:Z

    #@d
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    #@0
    iget-object v0, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/material/search/SearchBarAnimationHelper;

    #@2
    iget-object v1, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/material/search/SearchBar;

    #@4
    iget-object v2, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    #@6
    iget-object v3, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$3:Lcom/google/android/material/appbar/AppBarLayout;

    #@8
    iget-boolean v4, p0, Lcom/google/android/material/search/SearchBarAnimationHelper$$ExternalSyntheticLambda0;->f$4:Z

    #@a
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/search/SearchBarAnimationHelper;->lambda$startExpandAnimation$0$com-google-android-material-search-SearchBarAnimationHelper(Lcom/google/android/material/search/SearchBar;Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;Z)V

    #@d
    return-void
.end method
