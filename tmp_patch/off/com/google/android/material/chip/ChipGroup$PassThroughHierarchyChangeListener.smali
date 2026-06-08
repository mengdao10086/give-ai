.class Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/google/android/material/chip/ChipGroup;


# direct methods
.method private constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .registers 2

    #@0
    .line 513
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V
    .registers 3

    #@0
    .line 513
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;-><init>(Lcom/google/android/material/chip/ChipGroup;)V

    #@3
    return-void
.end method

.method static synthetic access$302(Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .registers 2

    #@0
    .line 513
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@2
    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    #@0
    .line 518
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    #@2
    if-ne p1, v0, :cond_22

    #@4
    instance-of v0, p2, Lcom/google/android/material/chip/Chip;

    #@6
    if-eqz v0, :cond_22

    #@8
    .line 519
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    #@b
    move-result v0

    #@c
    const/4 v1, -0x1

    #@d
    if-ne v0, v1, :cond_16

    #@f
    .line 522
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    #@12
    move-result v0

    #@13
    .line 523
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    #@16
    .line 525
    :cond_16
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    #@18
    # getter for: Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;
    invoke-static {v0}, Lcom/google/android/material/chip/ChipGroup;->access$200(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/internal/CheckableGroup;

    #@1b
    move-result-object v0

    #@1c
    move-object v1, p2

    #@1d
    check-cast v1, Lcom/google/android/material/chip/Chip;

    #@1f
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableGroup;->addCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V

    #@22
    .line 528
    :cond_22
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@24
    if-eqz v0, :cond_29

    #@26
    .line 529
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    #@29
    :cond_29
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    #@0
    .line 535
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/google/android/material/chip/ChipGroup;

    #@2
    if-ne p1, v0, :cond_12

    #@4
    instance-of v1, p2, Lcom/google/android/material/chip/Chip;

    #@6
    if-eqz v1, :cond_12

    #@8
    .line 536
    # getter for: Lcom/google/android/material/chip/ChipGroup;->checkableGroup:Lcom/google/android/material/internal/CheckableGroup;
    invoke-static {v0}, Lcom/google/android/material/chip/ChipGroup;->access$200(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/internal/CheckableGroup;

    #@b
    move-result-object v0

    #@c
    move-object v1, p2

    #@d
    check-cast v1, Lcom/google/android/material/chip/Chip;

    #@f
    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableGroup;->removeCheckable(Lcom/google/android/material/internal/MaterialCheckable;)V

    #@12
    .line 539
    :cond_12
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$PassThroughHierarchyChangeListener;->onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    #@14
    if-eqz v0, :cond_19

    #@16
    .line 540
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    #@19
    :cond_19
    return-void
.end method
