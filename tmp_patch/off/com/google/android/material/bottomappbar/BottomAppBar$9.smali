.class Lcom/google/android/material/bottomappbar/BottomAppBar$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->addFabAnimationListeners(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .registers 2

    #@0
    .line 1246
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 1249
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2
    iget-object v0, v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->fabAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    #@4
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    #@7
    .line 1252
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@9
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->findDependentFab()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2300(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    #@c
    move-result-object p1

    #@d
    if-eqz p1, :cond_18

    #@f
    .line 1254
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$9;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@11
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F
    invoke-static {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2400(Lcom/google/android/material/bottomappbar/BottomAppBar;)F

    #@14
    move-result v0

    #@15
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    #@18
    :cond_18
    return-void
.end method
