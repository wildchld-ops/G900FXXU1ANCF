.class public Lcom/android/keyguard/sec/KeyguardMultiUserManager;
.super Ljava/lang/Object;
.source "KeyguardMultiUserManager.java"


# static fields
.field private static sInstance:Lcom/android/keyguard/sec/KeyguardMultiUserManager;


# instance fields
.field private final ACTION_LOCALE_CHANGED:Ljava/lang/String;

.field private final ACTION_SHOW_KEYGUARD_TO_CHANGE_USER:Ljava/lang/String;

.field private final ACTION_USER_ADDED:Ljava/lang/String;

.field private final ACTION_USER_REMOVED:Ljava/lang/String;

.field private final DEBUG:Z

.field private final KNOX_USER_ID:I

.field private final TAG:Ljava/lang/String;

.field private mActiveUser:Landroid/content/pm/UserInfo;

.field private mContext:Landroid/content/Context;

.field private mIsOngoingNotificationEnabled:Z

.field private mIsSupportMultiUser:Z

.field private mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mMumReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->sInstance:Lcom/android/keyguard/sec/KeyguardMultiUserManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KeyguardMultiUserManager"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->DEBUG:Z

    const-string v0, "com.android.Keyguard.SHOW_KEYGUARD_TO_CHANGE_USER"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->ACTION_SHOW_KEYGUARD_TO_CHANGE_USER:Ljava/lang/String;

    const-string v0, "android.intent.action.USER_ADDED"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->ACTION_USER_ADDED:Ljava/lang/String;

    const-string v0, "android.intent.action.USER_REMOVED"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->ACTION_USER_REMOVED:Ljava/lang/String;

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->ACTION_LOCALE_CHANGED:Ljava/lang/String;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->KNOX_USER_ID:I

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mUserManager:Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mActiveUser:Landroid/content/pm/UserInfo;

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsSupportMultiUser:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsOngoingNotificationEnabled:Z

    new-instance v0, Lcom/android/keyguard/sec/KeyguardMultiUserManager$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager$1;-><init>(Lcom/android/keyguard/sec/KeyguardMultiUserManager;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mMumReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsSupportMultiUser:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardMultiUserManager;)Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    return-object v0
.end method

.method private mIsOngoingUserSwitchNotificationEnabled()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mUserManager:Landroid/os/UserManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    :cond_3
    const-string v1, "KeyguardMultiUserManager"

    const-string v3, "list of users is null or user is one"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method private notifyMultiUserInfo()V
    .locals 2

    const-string v0, "KeyguardMultiUserManager"

    const-string v1, "notifyMultiUserInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mKeyguardCallback:Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;->isShowingAndNotHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->notifyMultiUserInfo(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->notifyMultiUserInfo(Z)V

    goto :goto_0
.end method

.method private notifyMultiUserInfo(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mActiveUser:Landroid/content/pm/UserInfo;

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0201b9

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsOngoingUserSwitchNotificationEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "KeyguardMultiUserManager"

    const-string v7, "Remove ongoing user switch notification"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v2, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.android.Keyguard.SHOW_KEYGUARD_TO_CHANGE_USER"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    const/high16 v7, 0x1000

    invoke-static {v6, v9, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz p1, :cond_2

    move-object v0, v5

    :goto_1
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mActiveUser:Landroid/content/pm/UserInfo;

    iget-object v7, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    const v8, 0x7f0600f6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f0201b9

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v2, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_2
    move-object v0, v4

    goto :goto_1
.end method

.method private registerMumBroadcastReceiver()V
    .locals 3

    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "registerMumBroadcastReceiver()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsSupportMultiUser:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.Keyguard.SHOW_KEYGUARD_TO_CHANGE_USER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mMumReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateMultiUserInfo()V
    .locals 3

    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "updateMultiUserInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mActiveUser:Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mActiveUser:Landroid/content/pm/UserInfo;

    goto :goto_0
.end method


# virtual methods
.method public onKeyguardHided()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "don\'t nofity on owner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->notifyMultiUserInfo()V

    :cond_0
    return-void
.end method

.method public onKeyguardShowed()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "don\'t nofity on owner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->notifyMultiUserInfo()V

    :cond_0
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 2

    const-string v0, "KeyguardMultiUserManager"

    const-string v1, "onUserInfoChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->updateAndNotifyMultiUserInfo()V

    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->updateAndNotifyMultiUserInfo()V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->updateAndNotifyMultiUserInfo()V

    return-void
.end method

.method public setupOngoingNotification()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsOngoingNotificationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsOngoingNotificationEnabled:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->registerMumBroadcastReceiver()V

    :cond_0
    return-void
.end method

.method public updateAndNotifyMultiUserInfo()V
    .locals 3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->mIsSupportMultiUser:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    :cond_0
    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "not support multi user"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    const-string v1, "KeyguardMultiUserManager"

    const-string v2, "don\'t nofity on owner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->updateMultiUserInfo()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardMultiUserManager;->notifyMultiUserInfo()V

    goto :goto_0
.end method
