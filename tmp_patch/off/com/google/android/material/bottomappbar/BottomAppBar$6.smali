.class Lcom/google/android/material/bottomappbar/BottomAppBar$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->maybeAnimateMenuView(IZ)V
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
    .line 968
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    #@0
    .line 976
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->dispatchAnimationEnd()V
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1700(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@5
    .line 977
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@7
    const/4 v0, 0x0

    #@8
    # setter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimatingWithFabAlignmentMode:Z
    invoke-static {p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$002(Lcom/google/android/material/bottomappbar/BottomAppBar;Z)Z

    #@b
    .line 978
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@d
    const/4 v0, 0x0

    #@e
    # setter for: Lcom/google/android/material/bottomappbar/BottomAppBar;->menuAnimator:Landroid/animation/Animator;
    invoke-static {p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2002(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;

    #@11
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    #@0
    .line 971
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$6;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->dispatchAnimationStart()V
    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1600(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    #@5
    return-void
.end method
