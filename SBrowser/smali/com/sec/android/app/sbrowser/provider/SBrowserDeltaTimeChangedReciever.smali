.class public Lcom/sec/android/app/sbrowser/provider/SBrowserDeltaTimeChangedReciever;
.super Landroid/content/BroadcastReceiver;
.source "SBrowserDeltaTimeChangedReciever.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SBrowserDeltaTimeChangedReciever"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v2, "com.sec.android.app.sbrowser.provider.DELTA_TIME_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TimeDifference"

    const-wide/16 v3, 0x0

    invoke-virtual {p2, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "SBrowserDeltaTimeChangedReciever"

    const-string v3, "The value of the timeDifference is set to SBrowserContentProviderUtility !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/provider/SBrowserContentProviderUtility;->setDeltaTime(J)V

    :cond_0
    return-void
.end method
