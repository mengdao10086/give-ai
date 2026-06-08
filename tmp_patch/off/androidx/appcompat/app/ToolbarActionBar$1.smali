.class Landroidx/appcompat/app/ToolbarActionBar$1;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;)V
    .registers 2

    #@0
    .line 55
    iput-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$1;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    .line 58
    iget-object v0, p0, Landroidx/appcompat/app/ToolbarActionBar$1;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    #@2
    invoke-virtual {v0}, Landroidx/appcompat/app/ToolbarActionBar;->populateOptionsMenu()V

    #@5
    return-void
.end method
