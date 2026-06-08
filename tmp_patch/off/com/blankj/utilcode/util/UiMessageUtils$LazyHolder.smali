.class final Lcom/blankj/utilcode/util/UiMessageUtils$LazyHolder;
.super Ljava/lang/Object;
.source "UiMessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/UiMessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/blankj/utilcode/util/UiMessageUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    #@0
    .line 273
    new-instance v0, Lcom/blankj/utilcode/util/UiMessageUtils;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/UiMessageUtils;-><init>(Lcom/blankj/utilcode/util/UiMessageUtils$1;)V

    #@6
    sput-object v0, Lcom/blankj/utilcode/util/UiMessageUtils$LazyHolder;->INSTANCE:Lcom/blankj/utilcode/util/UiMessageUtils;

    #@8
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    #@0
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$100()Lcom/blankj/utilcode/util/UiMessageUtils;
    .registers 1

    #@0
    .line 272
    sget-object v0, Lcom/blankj/utilcode/util/UiMessageUtils$LazyHolder;->INSTANCE:Lcom/blankj/utilcode/util/UiMessageUtils;

    #@2
    return-object v0
.end method
