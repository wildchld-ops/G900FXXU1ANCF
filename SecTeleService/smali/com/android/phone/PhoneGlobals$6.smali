.class Lcom/android/phone/PhoneGlobals$6;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Lcom/android/phone/ICallMessageNetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$6;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lcom/android/phone/CallMessageConstants$RequestType;Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    sget-object v5, Lcom/android/phone/PhoneGlobals$26;->$SwitchMap$com$android$phone$CallMessageConstants$RequestType:[I

    invoke-virtual {p1}, Lcom/android/phone/CallMessageConstants$RequestType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$6;->this$0:Lcom/android/phone/PhoneGlobals;

    #getter for: Lcom/android/phone/PhoneGlobals;->prdownstarted:Z
    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->access$3100(Lcom/android/phone/PhoneGlobals;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "dl_result"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    const-string v5, "dl_path"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "external"

    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "_data"

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->access$3200()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->access$3200()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    const v6, 0x7f0907d7

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :goto_1
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$6;->this$0:Lcom/android/phone/PhoneGlobals;

    #setter for: Lcom/android/phone/PhoneGlobals;->prdownstarted:Z
    invoke-static {v5, v7}, Lcom/android/phone/PhoneGlobals;->access$3102(Lcom/android/phone/PhoneGlobals;Z)Z

    invoke-static {}, Lcom/android/phone/PhotoRingMgr;->getInstance()Lcom/android/phone/PhotoRingMgr;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$6;->this$0:Lcom/android/phone/PhoneGlobals;

    #getter for: Lcom/android/phone/PhoneGlobals;->mCallMessageNetworkListener:Lcom/android/phone/ICallMessageNetworkListener;
    invoke-static {v6}, Lcom/android/phone/PhoneGlobals;->access$3300(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/ICallMessageNetworkListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/PhotoRingMgr;->deregisterCallMessageNetworkListener(Lcom/android/phone/ICallMessageNetworkListener;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->access$3200()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    const v6, 0x7f0907d6

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
