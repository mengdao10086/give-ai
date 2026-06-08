.class public Landroidx/databinding/DataBinderMapperImpl;
.super Landroidx/databinding/MergedDataBinderMapper;
.source "DataBinderMapperImpl.java"


# direct methods
.method constructor <init>()V
    .registers 2

    #@0
    .line 4
    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;-><init>()V

    #@3
    .line 5
    new-instance v0, Lcom/example/extool/DataBinderMapperImpl;

    #@5
    invoke-direct {v0}, Lcom/example/extool/DataBinderMapperImpl;-><init>()V

    #@8
    invoke-virtual {p0, v0}, Landroidx/databinding/DataBinderMapperImpl;->addMapper(Landroidx/databinding/DataBinderMapper;)V

    #@b
    return-void
.end method
