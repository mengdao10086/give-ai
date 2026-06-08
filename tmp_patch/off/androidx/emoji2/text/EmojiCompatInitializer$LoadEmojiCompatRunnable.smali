.class Landroidx/emoji2/text/EmojiCompatInitializer$LoadEmojiCompatRunnable;
.super Ljava/lang/Object;
.source "EmojiCompatInitializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompatInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadEmojiCompatRunnable"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    #@0
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    #@0
    :try_start_0
    const-string v0, "EmojiCompat.EmojiCompatInitializer.run"

    #@2
    .line 137
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    #@5
    .line 138
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->isConfigured()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_12

    #@b
    .line 139
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()Landroidx/emoji2/text/EmojiCompat;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat;->load()V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_16

    #@12
    .line 142
    :cond_12
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@15
    return-void

    #@16
    :catchall_16
    move-exception v0

    #@17
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    #@1a
    .line 143
    throw v0
.end method
