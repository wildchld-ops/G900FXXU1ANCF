.class Lcom/samsung/android/toolbox/TwToolBoxService$4;
.super Landroid/database/ContentObserver;
.source "TwToolBoxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxService;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxService$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxService$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxService$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    #getter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$000(Lcom/samsung/android/toolbox/TwToolBoxService;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "toolbox_earphones_only"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    #setter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mEarphonesOnly:Z
    invoke-static {v2, v0}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$302(Lcom/samsung/android/toolbox/TwToolBoxService;Z)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxService$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    #getter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mEarphonesOnly:Z
    invoke-static {v0}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$300(Lcom/samsung/android/toolbox/TwToolBoxService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxService$4;->this$0:Lcom/samsung/android/toolbox/TwToolBoxService;

    const-string v1, "0;com.sec.android.app.music/00;com.samsung.everglades.video/00;com.android.contacts/com.android.dialer.DialtactsActivity;com.google.android.youtube/00;com.sec.android.app.voicenote/00"

    #setter for: Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageListEarphonesOnly:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxService;->access$402(Lcom/samsung/android/toolbox/TwToolBoxService;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
