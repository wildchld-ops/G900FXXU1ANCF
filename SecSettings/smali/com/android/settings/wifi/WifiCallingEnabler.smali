.class public final Lcom/android/settings/wifi/WifiCallingEnabler;
.super Ljava/lang/Object;
.source "WifiCallingEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsWfcProvisioned:Z


# direct methods
.method static synthetic access$100(Lcom/android/settings/wifi/WifiCallingEnabler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mIsWfcProvisioned:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiCallingEnabler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mIsWfcProvisioned:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiCallingEnabler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiCallingEnabler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiCallingEnabler;->updateWfcState(Z)V

    return-void
.end method

.method private updateWfcState(Z)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "state"

    if-eqz p1, :cond_0

    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/WfcHelper;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiCallingEnabler;->mIsWfcProvisioned:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;-><init>(Lcom/android/settings/wifi/WifiCallingEnabler;Lcom/android/settings/wifi/WifiCallingEnabler$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiCallingEnabler$WfcProvisionedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiCallingEnabler;->updateWfcState(Z)V

    goto :goto_0
.end method
