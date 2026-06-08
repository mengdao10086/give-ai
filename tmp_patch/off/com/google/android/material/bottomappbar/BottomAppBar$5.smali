.class Lcom/google/android/material/bottomappbar/BottomAppBar$5;
.super Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar;->createFabDefaultXAnimation(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

.field final synthetic val$targetMode:I


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V
    .registers 3

    #@0
    .line 902
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2
    iput p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->val$targetMode:I

    #@4
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onHidden(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .registers 4

    #@0
    .line 905
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar;

    #@2
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;->val$targetMode:I

    #@4
    # invokes: Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX(I)F
    invoke-static {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1900(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F

    #@7
    move-result v0

    #@8
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    #@b
    .line 906
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$5$1;

    #@d
    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$5$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar$5;)V

    #@10
    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    #@13
    return-void
.end method
