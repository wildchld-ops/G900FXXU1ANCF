.class Lcom/samsung/contacts/activities/ContactResolverActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ContactResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/activities/ContactResolverActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/activities/ContactResolverActivity;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/activities/ContactResolverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/activities/ContactResolverActivity$1;->this$0:Lcom/samsung/contacts/activities/ContactResolverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/activities/ContactResolverActivity$1;->this$0:Lcom/samsung/contacts/activities/ContactResolverActivity;

    invoke-virtual {v0}, Lcom/samsung/contacts/activities/ContactResolverActivity;->finish()V

    :cond_0
    return-void
.end method
