.class public Lcom/android/settings/notificationreminder/GlobalConstant;
.super Ljava/lang/Object;
.source "GlobalConstant.java"


# static fields
.field public static ACTION_BOOT_COMPLETED:Ljava/lang/String;

.field public static ACTION_CLIPBOARD_DISMISS:Ljava/lang/String;

.field public static ACTION_CLIPBOARD_SHOW:Ljava/lang/String;

.field public static ACTION_COVER_OPEN:Ljava/lang/String;

.field public static ACTION_RESPONSE_AXT9INFO:Ljava/lang/String;

.field public static ACTION_RESPONSE_AXT9INFO_TYPE_CHANGED:Ljava/lang/String;

.field public static ACTION_SCREEN_ON:Ljava/lang/String;

.field public static ACTION_SHARING_COMPLETE:Ljava/lang/String;

.field private static final ATT:Z

.field public static IS_MOVABLE_KEYPAD:Ljava/lang/String;

.field public static IS_VISIBLE_WINDOW:Ljava/lang/String;

.field public static RecentAppListActivity:Ljava/lang/String;

.field public static SHARING_ACC_SETTINGS:Ljava/lang/String;

.field public static SHARING_ACC_SETTINGS_PREF:Ljava/lang/String;

.field private static final SPR:Z

.field public static SystemSettingAllSoundOff:Ljava/lang/String;

.field private static final TMO:Z

.field private static final USA:Z

.field private static final USCC:Z

.field private static final VZW:Z

.field public static cornerTabBottomPosY:Ljava/lang/String;

.field public static cornerTabDisplayHeight:Ljava/lang/String;

.field public static cornerTabPortrait:Ljava/lang/String;

.field public static cornerTabPosX:Ljava/lang/String;

.field public static cornerTabPosY:Ljava/lang/String;

.field public static gWindowType:I

.field public static keyControlBarPosition:Ljava/lang/String;

.field public static keyGridViewLowerHeight:Ljava/lang/String;

.field public static keyGridViewUpperHeight:Ljava/lang/String;

.field public static keyLowerItemTotalCount:Ljava/lang/String;

.field public static keyMenuItemTotalCount:Ljava/lang/String;

.field public static notificationreminderSettingsPrefs:Ljava/lang/String;

.field public static final sProductName:Ljava/lang/String;

.field public static final sUseAutoBrightnessDetail:Z

.field public static timeIntervalValueChanged:Ljava/lang/String;

.field public static touchDeviceID:I

.field public static touchLockSensetive:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x4

    sput v0, Lcom/android/settings/notificationreminder/GlobalConstant;->touchDeviceID:I

    const/high16 v0, 0x4220

    sput v0, Lcom/android/settings/notificationreminder/GlobalConstant;->touchLockSensetive:F

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->ACTION_BOOT_COMPLETED:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->ACTION_SHARING_COMPLETE:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.shareaccessibilitysettings"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->SHARING_ACC_SETTINGS:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.shareaccessibilitysettings_preferences"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->SHARING_ACC_SETTINGS_PREF:Ljava/lang/String;

    const-string v0, "ResponseAxT9Info"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->ACTION_RESPONSE_AXT9INFO:Ljava/lang/String;

    const-string v0, "ResponseAxT9InfoTypeChanged"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->ACTION_RESPONSE_AXT9INFO_TYPE_CHANGED:Ljava/lang/String;

    const-string v0, "AxT9IME.isVisibleWindow"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->IS_VISIBLE_WINDOW:Ljava/lang/String;

    const-string v0, "AxT9IME.isMovableKeypad"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->IS_MOVABLE_KEYPAD:Ljava/lang/String;

    const-string v0, "ShowClipboardDialog"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->ACTION_CLIPBOARD_SHOW:Ljava/lang/String;

    const-string v0, "dismissClipboardDialog"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->ACTION_CLIPBOARD_DISMISS:Ljava/lang/String;

    const-string v0, "android.intent.action.SCREEN_ON"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->ACTION_SCREEN_ON:Ljava/lang/String;

    const-string v0, "com.samsung.cover.OPEN"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->ACTION_COVER_OPEN:Ljava/lang/String;

    const-string v0, "NOTIFICATIONREMINDER_SETTINGS_PREFS"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->notificationreminderSettingsPrefs:Ljava/lang/String;

    const-string v0, "menuItemTotalCount"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->keyMenuItemTotalCount:Ljava/lang/String;

    const-string v0, "lowerItemTotalCount"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->keyLowerItemTotalCount:Ljava/lang/String;

    const-string v0, "gridViewUpperHeight"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->keyGridViewUpperHeight:Ljava/lang/String;

    const-string v0, "gridViewLowerHeight"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->keyGridViewLowerHeight:Ljava/lang/String;

    const-string v0, "controlBarPosition"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->keyControlBarPosition:Ljava/lang/String;

    const-string v0, "cornerTabPosX"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->cornerTabPosX:Ljava/lang/String;

    const-string v0, "cornerTabPosY"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->cornerTabPosY:Ljava/lang/String;

    const-string v0, "cornerTabPortrait"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->cornerTabPortrait:Ljava/lang/String;

    const-string v0, "cornerTabBottomPosY"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->cornerTabBottomPosY:Ljava/lang/String;

    const-string v0, "cornerTabDisplayHeight"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->cornerTabDisplayHeight:Ljava/lang/String;

    const-string v0, "timeIntervalValueChanged"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->timeIntervalValueChanged:Ljava/lang/String;

    const-string v0, "all_sound_off"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->SystemSettingAllSoundOff:Ljava/lang/String;

    const-string v0, "RecentsActivity"

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->RecentAppListActivity:Ljava/lang/String;

    const/16 v0, 0x7de

    sput v0, Lcom/android/settings/notificationreminder/GlobalConstant;->gWindowType:I

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "vzw"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->VZW:Z

    sget-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "att"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "uc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->ATT:Z

    sget-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "spr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->SPR:Z

    sget-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "tmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->TMO:Z

    sget-object v0, Lcom/android/settings/notificationreminder/GlobalConstant;->sProductName:Ljava/lang/String;

    const-string v3, "usc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->USCC:Z

    sget-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->VZW:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->ATT:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->SPR:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->TMO:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->USCC:Z

    if-eqz v0, :cond_3

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->USA:Z

    sget-boolean v0, Lcom/android/settings/notificationreminder/GlobalConstant;->USA:Z

    if-nez v0, :cond_4

    :goto_2
    sput-boolean v2, Lcom/android/settings/notificationreminder/GlobalConstant;->sUseAutoBrightnessDetail:Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
