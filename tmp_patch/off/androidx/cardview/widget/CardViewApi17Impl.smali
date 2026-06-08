.class Landroidx/cardview/widget/CardViewApi17Impl;
.super Landroidx/cardview/widget/CardViewBaseImpl;
.source "CardViewApi17Impl.java"


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 25
    invoke-direct {p0}, Landroidx/cardview/widget/CardViewBaseImpl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public initStatic()V
    .registers 2

    #@0
    .line 29
    new-instance v0, Landroidx/cardview/widget/CardViewApi17Impl$1;

    #@2
    invoke-direct {v0, p0}, Landroidx/cardview/widget/CardViewApi17Impl$1;-><init>(Landroidx/cardview/widget/CardViewApi17Impl;)V

    #@5
    sput-object v0, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    #@7
    return-void
.end method
