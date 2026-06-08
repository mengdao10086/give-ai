.class Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    #@0
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    iput-object p1, p0, Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    #@5
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .registers 3

    #@0
    .line 81
    new-instance p1, Landroid/view/View;

    #@2
    iget-object v0, p0, Landroidx/fragment/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    #@7
    const/4 v0, 0x0

    #@8
    .line 82
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    #@b
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    #@e
    return-object p1
.end method
