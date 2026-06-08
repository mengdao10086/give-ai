.class final Landroidx/core/os/LocaleListPlatformWrapper;
.super Ljava/lang/Object;
.source "LocaleListPlatformWrapper.java"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# instance fields
.field private final mLocaleList:Landroid/os/LocaleList;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2

    #@0
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    check-cast p1, Landroid/os/LocaleList;

    #@5
    iput-object p1, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    #@7
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    #@0
    .line 62
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    #@2
    check-cast p1, Landroidx/core/os/LocaleListInterface;

    #@4
    invoke-interface {p1}, Landroidx/core/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    #@7
    move-result-object p1

    #@8
    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    #@b
    move-result p1

    #@c
    return p1
.end method

.method public get(I)Ljava/util/Locale;
    .registers 3

    #@0
    .line 42
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .registers 3

    #@0
    .line 83
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    #@5
    move-result-object p1

    #@6
    return-object p1
.end method

.method public getLocaleList()Ljava/lang/Object;
    .registers 2

    #@0
    .line 37
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .registers 2

    #@0
    .line 67
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    #@2
    invoke-virtual {v0}, Landroid/os/LocaleList;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .registers 3

    #@0
    .line 57
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    #@2
    invoke-virtual {v0, p1}, Landroid/os/LocaleList;->indexOf(Ljava/util/Locale;)I

    #@5
    move-result p1

    #@6
    return p1
.end method

.method public isEmpty()Z
    .registers 2

    #@0
    .line 47
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    #@2
    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .registers 2

    #@0
    .line 52
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    #@2
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .registers 2

    #@0
    .line 77
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    #@2
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    #@0
    .line 72
    iget-object v0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    #@2
    invoke-virtual {v0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
