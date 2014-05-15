.class Lcom/samsung/contacts/impl/HelpSpeedDialActivity$1;
.super Ljava/lang/Object;
.source "HelpSpeedDialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/impl/HelpSpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/impl/HelpSpeedDialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpSpeedDialActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpSpeedDialActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpSpeedDialActivity$1;->this$0:Lcom/samsung/contacts/impl/HelpSpeedDialActivity;

    invoke-virtual {v1}, Lcom/samsung/contacts/impl/HelpSpeedDialActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
