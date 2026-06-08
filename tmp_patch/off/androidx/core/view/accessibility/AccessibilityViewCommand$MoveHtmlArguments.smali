.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveHtmlArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;
.source "AccessibilityViewCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveHtmlArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    #@0
    .line 98
    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getHTMLElement()Ljava/lang/String;
    .registers 3

    #@0
    .line 105
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveHtmlArguments;->mBundle:Landroid/os/Bundle;

    #@2
    const-string v1, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    #@4
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
