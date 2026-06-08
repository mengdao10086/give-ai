.class Landroidx/databinding/adapters/CompoundButtonBindingAdapter$1;
.super Ljava/lang/Object;
.source "CompoundButtonBindingAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setListeners(Landroid/widget/CompoundButton;Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$attrChange:Landroidx/databinding/InverseBindingListener;

.field final synthetic val$listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Landroid/widget/CompoundButton$OnCheckedChangeListener;Landroidx/databinding/InverseBindingListener;)V
    .registers 3

    #@0
    .line 55
    iput-object p1, p0, Landroidx/databinding/adapters/CompoundButtonBindingAdapter$1;->val$listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@2
    iput-object p2, p0, Landroidx/databinding/adapters/CompoundButtonBindingAdapter$1;->val$attrChange:Landroidx/databinding/InverseBindingListener;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    #@0
    .line 58
    iget-object v0, p0, Landroidx/databinding/adapters/CompoundButtonBindingAdapter$1;->val$listener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    #@2
    if-eqz v0, :cond_7

    #@4
    .line 59
    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    #@7
    .line 61
    :cond_7
    iget-object p1, p0, Landroidx/databinding/adapters/CompoundButtonBindingAdapter$1;->val$attrChange:Landroidx/databinding/InverseBindingListener;

    #@9
    invoke-interface {p1}, Landroidx/databinding/InverseBindingListener;->onChange()V

    #@c
    return-void
.end method
