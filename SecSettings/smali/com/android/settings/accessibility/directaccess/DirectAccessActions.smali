.class public Lcom/android/settings/accessibility/directaccess/DirectAccessActions;
.super Ljava/lang/Object;
.source "DirectAccessActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;,
        Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    }
.end annotation


# instance fields
.field private mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

.field private mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHandler:Landroid/os/Handler;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

.field private mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

.field private mNegativeModeObserver:Landroid/database/ContentObserver;

.field private mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

.field private mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    iput-boolean v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    sget-object v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$9;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    return v0
.end method

.method private awakenIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private prepareDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public callAccessControlMode(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.accesscontrol.TOGGLE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public callAccessibilitySettings(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public changeNegativeModeSystemSetting(Z)V
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "high_contrast"

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "color_blind"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_2
    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_2
.end method

.method public createDialog()Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;
    .locals 7

    const v6, 0x7f09099f

    const v5, 0x7f09099e

    const/4 v4, 0x1

    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$2;

    const v3, 0x7f090996

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$2;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;I)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$3;

    const v3, 0x7f090997

    invoke-direct {v2, p0, v3, v6, v5}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$3;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;III)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$4;

    const v3, 0x7f09099a

    invoke-direct {v2, p0, v3, v6, v5}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$4;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;III)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;

    const v3, 0x7f09099d

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$5;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;I)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onNegativeModeChanged()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->onTalkbackModeCheck()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessiblity:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessControl:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$SinglePressAction;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Lcom/android/settings/accessibility/directaccess/DirectAccessActions$1;)V

    iput-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    new-instance v1, Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean v4, v1, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    new-instance v0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;-><init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setLongClickable(Z)V

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$6;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$6;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-boolean v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method public handleShow()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->awakenIfNecessary()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->createDialog()Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-direct {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->prepareDialog()Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->show()V

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAdapter:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$MyAdapter;->getItem(I)Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$Action;->onPress()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onNegativeModeChanged()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_1
    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColor:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mNegativeColorState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_1
.end method

.method public onTalkbackModeChanged()V
    .locals 7

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v4, 0x20

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const v5, 0x7f090998

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$7;

    invoke-direct {v4, p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$7;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;)V

    const-wide/16 v5, 0x708

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.action.talkback_off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$8;-><init>(Lcom/android/settings/accessibility/directaccess/DirectAccessActions;Landroid/view/accessibility/AccessibilityEvent;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    const/16 v5, 0xff

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    const-string v6, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.settings.action.talkback_off"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public onTalkbackModeCheck()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->On:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    :goto_0
    iput-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkBack:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;

    iget-object v2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mTalkbackState:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction;->updateState(Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;)V

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;->Off:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$ToggleAction$State;

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDeviceProvisioned:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mDialog:Lcom/android/settings/accessibility/directaccess/DirectAccessActions$DirectAccessActionsDialog;

    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/directaccess/DirectAccessActions;->handleShow()V

    goto :goto_0
.end method
