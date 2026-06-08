.class Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;
.super Ljava/lang/Object;
.source "AppCompatTextViewAutoSizeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method computeAndSetTextDirection(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    .registers 3

    #@0
    return-void
.end method

.method isHorizontallyScrollable(Landroid/widget/TextView;)Z
    .registers 4

    #@0
    const/4 v0, 0x0

    #@1
    .line 117
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@4
    move-result-object v0

    #@5
    const-string v1, "getHorizontallyScrolling"

    #@7
    invoke-static {p1, v1, v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object p1

    #@b
    check-cast p1, Ljava/lang/Boolean;

    #@d
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    #@10
    move-result p1

    #@11
    return p1
.end method
