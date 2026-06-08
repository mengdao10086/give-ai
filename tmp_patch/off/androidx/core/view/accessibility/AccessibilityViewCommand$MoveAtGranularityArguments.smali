.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveAtGranularityArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 64
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getExtendSelection()Z
    .registers 3

    #@0
    .line 88
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;->mBundle:Landroid/os/Bundle;

    #@2
    const-string v1, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getGranularity()I
    .registers 3

    #@0
    .line 80
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;->mBundle:Landroid/os/Bundle;

    #@2
    const-string v1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
