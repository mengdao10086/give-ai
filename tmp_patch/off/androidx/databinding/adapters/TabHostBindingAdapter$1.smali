.class Landroidx/databinding/adapters/TabHostBindingAdapter$1;
.super Ljava/lang/Object;
.source "TabHostBindingAdapter.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/TabHostBindingAdapter;->setListeners(Landroid/widget/TabHost;Landroid/widget/TabHost$OnTabChangeListener;Landroidx/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$attrChange:Landroidx/databinding/InverseBindingListener;

.field final synthetic val$listener:Landroid/widget/TabHost$OnTabChangeListener;


# direct methods
.method constructor <init>(Landroid/widget/TabHost$OnTabChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 3

    #@0
    .line 65
    iput-object p1, p0, Landroidx/databinding/adapters/TabHostBindingAdapter$1;->val$listener:Landroid/widget/TabHost$OnTabChangeListener;

    #@2
    iput-object p2, p0, Landroidx/databinding/adapters/TabHostBindingAdapter$1;->val$attrChange:Landroidx/databinding/InverseBindingListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .registers 3

    #@0
    .line 68
    iget-object v0, p0, Landroidx/databinding/adapters/TabHostBindingAdapter$1;->val$listener:Landroid/widget/TabHost$OnTabChangeListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 69
    invoke-interface {v0, p1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    #@7
    .line 71
    :cond_7
    iget-object p1, p0, Landroidx/databinding/adapters/TabHostBindingAdapter$1;->val$attrChange:Landroidx/databinding/InverseBindingListener;

    #@9
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    #@c
    return-void
.end method
