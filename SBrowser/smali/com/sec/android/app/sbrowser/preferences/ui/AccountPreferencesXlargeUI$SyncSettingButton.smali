.class public Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI$SyncSettingButton;
.super Landroid/widget/ImageButton;
.source "AccountPreferencesXlargeUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncSettingButton"
.end annotation


# instance fields
.field mAccount:Landroid/accounts/Account;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI$SyncSettingButton;->this$0:Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI;

    invoke-direct {p0, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI$SyncSettingButton;->mAccount:Landroid/accounts/Account;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI$SyncSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_2

    const-string v1, "com.osp.app.signin"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI$SyncSettingButton;->mAccount:Landroid/accounts/Account;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI$SyncSettingButton;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p0}, Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI$SyncSettingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.settings.ACCOUNT_SYNC_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "account"

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI$SyncSettingButton;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/preferences/ui/AccountPreferencesXlargeUI$SyncSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
