.class public Lcom/android/mms/transaction/MessagingNotification;
.super Landroid/content/BroadcastReceiver;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$FlashNotification;,
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;,
        Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field private static final BADGE_CLASSNAME:Ljava/lang/String; = "com.android.mms.ui.ConversationComposer"

.field private static final BADGE_PACKAGENAME:Ljava/lang/String; = "com.android.mms"

.field private static final BADGE_PROVIDER_PROJECTION:[Ljava/lang/String; = null

.field private static final BADGE_PROVIDER_SELECTION:Ljava/lang/String; = "package=?"

.field public static final CLASS0_SOUND_VIBRATE_NOTIFICATION_ID:I = 0x3e7

.field public static final CMAS_SOUND_PATH:Ljava/lang/String; = "android.resource://com.android.mms/raw/cmas_ringtone"

.field public static final CMAS_SOUND_PATH_LTN:Ljava/lang/String; = "android.resource://com.android.mms/raw/cmas_ringtone_ltn"

.field public static final CMAS_SOUND_PATH_TMO_REMINDER:Ljava/lang/String; = "android.resource://com.android.mms/raw/cmas_ringtone_reminder"

.field public static CMAS_Y:Z = false

.field private static final COLUMN_DATE:I = 0x2

.field private static final COLUMN_MMS_PRIORITY:I = 0x5

.field private static final COLUMN_MMS_SIM_SLOT:I = 0x6

.field private static final COLUMN_MSG_ID:I = 0x1

.field private static final COLUMN_SMS_ADDRESS:I = 0x4

.field private static final COLUMN_SMS_BODY:I = 0x5

.field private static final COLUMN_SMS_PRIORITY:I = 0x6

.field private static final COLUMN_SMS_SIM_SLOT:I = 0x7

.field private static final COLUMN_SUBJECT:I = 0x3

.field private static final COLUMN_SUBJECT_CS:I = 0x4

.field private static final COLUMN_THREAD_ID:I = 0x0

.field private static final COLUMN_WPM_BODY:I = 0x3

.field private static final COLUMN_WPM_SIM_SLOT:I = 0x4

.field public static final DOWNLOAD_FAILED_NOTIFICATION_ID:I = 0x213

.field private static final HebrewCode:Ljava/lang/String; = "iw"

.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator; = null

.field private static final INTENT_CLEAR_MISSED_EVENT:Ljava/lang/String; = "com.sec.android.action.CLEAR_MISSED_EVENT"

.field private static final INTENT_DISABLE_VIBRATOR:Ljava/lang/String; = "com.sec.android.app.camera.DISABLE_VIBRATOR"

.field private static final INTENT_ENABLE_VIBRATOR:Ljava/lang/String; = "com.sec.android.app.camera.ENABLE_VIBRATOR"

.field private static final INTENT_LOCALE_CHANGED:Ljava/lang/String; = "android.intent.action.LOCALE_CHANGED"

.field private static final INTENT_MSG_INSERTED:Ljava/lang/String; = "com.android.mms.INSERTED_MESSAGE"

.field private static final IN_CONVERSATION_NOTIFICATION_VOLUME:F = 0.25f

.field private static final LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri; = null

.field private static final LOG_HISTORY_URI:Landroid/net/Uri; = null

.field private static final LOG_MMS_URI:Landroid/net/Uri; = null

.field private static final LOG_SMS_URI:Landroid/net/Uri; = null

.field private static final MAX_MESSAGES_TO_SHOW:I = 0x8

.field public static final MESSAGE_FAILED_NOTIFICATION_ID:I = 0x315

.field private static final MMS:Ljava/lang/String; = null

.field private static final MMS_NOTIFICATION_IND:I = 0x82

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_THREAD_ID_PROJECTION:[Ljava/lang/String; = null

.field public static final MSG_ALL:J = -0x1L

.field public static final MSG_ALL_EXCEPT_CMAS:J = -0x3L

.field private static final MSG_BR_FOR_LOCKSCREEN:Ljava/lang/String; = "com.android.mms.ui.MessagesLockscreen"

.field public static final MSG_BR_FOR_RECEIVED:Ljava/lang/String; = "com.android.mms.RECEIVED_MSG"

.field public static final MSG_BR_FOR_SENT:Ljava/lang/String; = "com.android.mms.SENT_MSG"

.field public static final MSG_INBOX:I = 0x0

.field public static final MSG_NONE:J = -0x2L

.field public static final MSG_OUTBOX:I = 0x1

.field public static final MSG_TYPE_ALL:I = -0x1

.field public static final MSG_TYPE_ALL_EXCEPT_CMAS:I = -0x3

.field public static final MSG_TYPE_CB:I = 0x4

.field public static final MSG_TYPE_CMAS:I = 0x3

.field public static final MSG_TYPE_DDM:I = 0x5

.field public static final MSG_TYPE_MMS:I = 0x0

.field public static final MSG_TYPE_NONE:I = -0x2

.field public static final MSG_TYPE_SMS:I = 0x1

.field public static final MSG_TYPE_WAP:I = 0x2

.field private static final NEW_DELIVERY_SM_CONSTRAINT:Ljava/lang/String; = "(type = 2 AND status = 0)"

.field private static final NEW_INCOMING_CMAS_BY_MSGID_CONSTRAINT:Ljava/lang/String; = "(address like \"%#CMAS#%\" AND thread_id NOT NULL) AND _id = "

.field private static final NEW_INCOMING_CMAS_BY_MSGID_CONSTRAINT_2:Ljava/lang/String; = "(address like \"#Emergency Alert#%\" AND thread_id NOT NULL) AND _id = "

.field private static final NEW_INCOMING_CMAS_CONSTRAINT:Ljava/lang/String; = "(address like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL)"

.field private static final NEW_INCOMING_CMAS_CONSTRAINT_2:Ljava/lang/String; = "(address like \"#Emergency Alert#%\" AND read = 0 AND thread_id NOT NULL)"

.field private static final NEW_INCOMING_CMAS_PRESIDENTIAL_CONSTRAINT:Ljava/lang/String; = "(address like \"%#CMAS#Presidential%\" AND read = 0)"

.field private static final NEW_INCOMING_CMAS_PRESIDENTIAL_CONSTRAINT_2:Ljava/lang/String; = "(address like \"#Emergency Alert#Presidential%\" AND read = 0)"

.field private static final NEW_INCOMING_MM_BY_MSGID_CONSTRAINT:Ljava/lang/String; = "(msg_box=1 AND (m_type=130 OR m_type=132) AND thread_id NOT NULL) AND _id = "

.field private static final NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String; = "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132) AND thread_id NOT NULL)"

.field private static final NEW_INCOMING_SM_BY_MSGID_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND thread_id NOT NULL) AND _id = "

.field private static final NEW_INCOMING_SM_BY_MSGID_CONSTRAINT_CMAS_ENABLED:Ljava/lang/String; = "type = 1 AND address not like \"%#CMAS#%\" AND thread_id NOT NULL AND _id = "

.field private static final NEW_INCOMING_SM_BY_MSGID_CONSTRAINT_CMAS_ENABLED_2:Ljava/lang/String; = "type = 1 AND address not like \"#Emergency Alert#%\" AND thread_id NOT NULL AND _id = "

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND read = 0 AND thread_id NOT NULL)"

.field private static final NEW_INCOMING_SM_CONSTRAINT_CMAS_ENABLED:Ljava/lang/String; = "type = 1 AND address not like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL"

.field private static final NEW_INCOMING_SM_CONSTRAINT_CMAS_ENABLED_2:Ljava/lang/String; = "type = 1 AND address not like \"#Emergency Alert#%\" AND read = 0 AND thread_id NOT NULL"

.field private static final NEW_INCOMING_WPM_BY_MSGID_CONSTRAINT:Ljava/lang/String; = "(thread_id NOT NULL) AND _id = "

.field private static final NEW_INCOMING_WPM_CONSTRAINT:Ljava/lang/String; = "(read = 0 AND thread_id NOT NULL)"

.field private static final NOTIFICATION_CANCEL_ACTION:Ljava/lang/String; = "com.android.mms.NOTIFICATION_CANCEL_ACTION"

.field public static final NOTIFICATION_CMAS_ID:I = 0x41c

.field private static final NOTIFICATION_DELETED_ACTION:Ljava/lang/String; = "com.android.mms.NOTIFICATION_DELETED_ACTION"

.field public static final NOTIFICATION_ID:I = 0x7b

.field private static final PACKAGE_DRIVE_LINK:Ljava/lang/String; = "com.sec.android.automotive.drivelink"

.field private static final PERMISSION_MSG_BR_FOR_OTHER_APP:Ljava/lang/String; = "com.sec.mms.permission.RECEIVE_MESSAGES_INFORMATION"

.field private static final PRAYMODE_PACKAGENAME:Ljava/lang/String; = "com.sec.android.settings.praymodewidget"

.field private static PRIORITY_SMS_HIGH:I = 0x0

.field private static PRIORITY_SMS_NORMAL:I = 0x0

.field private static final PROCESS_BACKGROUND:I = 0x0

.field private static final PROCESS_FOREGROUND:I = 0x1

.field public static final REPORT_NOTIFICATION_ID:I = 0x378

.field public static final REPORT_TYPE_MMS_DELIVERY:I = 0x1

.field public static final REPORT_TYPE_MMS_READ:I = 0x2

.field public static final REPORT_TYPE_SMS_DELIVERY:I = 0x0

.field private static final SETTING_DRIVE_LINK:Ljava/lang/String; = "drive_link_setting"

.field private static final SETTING_VLINGO:Ljava/lang/String; = "svoice_msg_popup_disable"

.field public static final SIM_SLOT:I = 0x6

.field private static final SMS:Ljava/lang/String; = null

.field private static final SMS_FROM_NTTDOCOMO:Ljava/lang/String; = "NTT DOCOMO"

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_THREAD_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingNotification"

.field public static final THREAD_ALL:J = -0x1L

.field public static final THREAD_ALL_EXCEPT_CMAS:J = -0x3L

.field public static final THREAD_NONE:J = -0x2L

.field private static TORCH_BRIGHTNESS_OFF:Ljava/lang/String; = null

.field private static TORCH_BRIGHTNESS_STANDARD:Ljava/lang/String; = null

.field private static final UNDELIVERED_URI:Landroid/net/Uri; = null

.field public static final VIBRATE_PREFERENCE:Ljava/lang/String; = "disable_vibrate_recording"

.field private static final VLINGO_SVOICE_PACKAGE_NAME:Ljava/lang/String; = "com.vlingo.midas"

.field private static final VLINGO_TALKBACK_PACKAGE_NAME:Ljava/lang/String; = "com.vlingo.client.samsung"

.field private static final WPM_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final isMultiSIM:Z = true

.field private static lastMsgType:Ljava/lang/String; = null

.field private static mCfmsService:Landroid/os/ICustomFrequencyManager; = null

.field public static mCmasType:Ljava/lang/String; = null

.field private static mDate:Ljava/lang/String; = null

.field public static mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification; = null

.field private static mIsCmasReminder:Z = false

.field public static mIsOnce:Z = false

.field public static mIsOnceCMAS:Z = false

.field public static mMediaPlayer:Landroid/media/MediaPlayer; = null

.field private static mNotification:Landroid/app/Notification; = null

.field private static mOldVolume:I = 0x0

.field private static mRunnable:Ljava/lang/Runnable; = null

.field private static final pendingReplyIntentUniqueId:I = 0x64

.field public static sCmasVibrator:Landroid/os/Vibrator;

.field private static sCurrentlyDisplayedThreadId:J

.field private static final sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

.field private static sDisableVibrateForCamera:Z

.field private static sEnableBacklight:Z

.field private static sEnableBlockingMode:Z

.field private static sEnableCmasAudio:Z

.field private static sEnableCmasVibrate:Z

.field private static sEnableLockscreen:Z

.field private static sEnableNotification:Z

.field private static sEnableNotificationLockscreen:Z

.field private static sEnableNotificationPopup:Z

.field private static sEnablePreview:Z

.field private static sEnableVibrate:Z

.field private static sExistReportNotification:Z

.field private static sHandler:Landroid/os/Handler;

.field private static sIncreaseInt:I

.field private static final sMediaPlayerThreadLock:Ljava/lang/Object;

.field private static sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

.field private static sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

.field private static sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationOnDeleteIntent:Landroid/content/Intent;

.field private static sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private static sReminderAlertCount:Ljava/lang/String;

.field private static sReminderCount:Ljava/lang/String;

.field private static sRingtoneStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "sub"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "subject"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    sput v3, Lcom/android/mms/transaction/MessagingNotification;->PRIORITY_SMS_NORMAL:I

    sput v6, Lcom/android/mms/transaction/MessagingNotification;->PRIORITY_SMS_HIGH:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sMediaPlayerThreadLock:Ljava/lang/Object;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v0, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    const-string v0, "content://com.samsung.android.providers.context.log.exchange_message/write"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri;

    const-string v0, "content://logs/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_SMS_URI:Landroid/net/Uri;

    const-string v0, "content://logs/mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_MMS_URI:Landroid/net/Uri;

    const-string v0, "null"

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->CMAS_Y:Z

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsOnce:Z

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->sEnableLockscreen:Z

    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotificationPopup:Z

    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotificationLockscreen:Z

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->sReminderCount:Ljava/lang/String;

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->sReminderAlertCount:Ljava/lang/String;

    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableBacklight:Z

    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasVibrate:Z

    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasAudio:Z

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->sDisableVibrateForCamera:Z

    sput v3, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->sEnableBlockingMode:Z

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->sExistReportNotification:Z

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS:Ljava/lang/String;

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS:Ljava/lang/String;

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    const-string v0, "0"

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->TORCH_BRIGHTNESS_OFF:Ljava/lang/String;

    const-string v0, "1"

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->TORCH_BRIGHTNESS_STANDARD:Ljava/lang/String;

    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "package"

    aput-object v1, v0, v3

    const-string v1, "class"

    aput-object v1, v0, v4

    const-string v1, "badgecount"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->BADGE_PROVIDER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static AddSstreamItem(Landroid/content/Context;ILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            "Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/SortedSet;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->deleteAllSstreamItems(Landroid/content/Context;)Z

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v12, 0x4079

    mul-double/2addr v5, v12

    double-to-int v5, v5

    add-int/lit16 v0, v5, 0x190

    move/from16 v18, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide/high16 v12, 0x4079

    mul-double/2addr v5, v12

    double-to-int v5, v5

    add-int/lit16 v0, v5, 0x190

    move/from16 v17, v0

    new-instance v11, Lsstream/lib/objs/Image;

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getStreamBgImagePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-direct {v11, v5, v0, v1, v6}, Lsstream/lib/objs/Image;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    new-instance v10, Lsstream/lib/objs/Author;

    invoke-interface/range {p2 .. p2}, Ljava/util/SortedSet;->size()I

    move-result v5

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move/from16 v2, p4

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v10, v5, v6}, Lsstream/lib/objs/Author;-><init>(Ljava/lang/String;Lsstream/lib/objs/Image;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/SortedSet;->size()I

    move-result v5

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v4, ""

    const/4 v5, 0x1

    move/from16 v0, p1

    if-le v0, v5, :cond_2

    const-string v4, "threadlist"

    :goto_1
    new-instance v3, Lsstream/lib/objs/StoryItem;

    const-string v5, "samsung.personal"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lsstream/lib/objs/StoryItem$StoryType;->MESSAGE:Lsstream/lib/objs/StoryItem$StoryType;

    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    const/4 v15, 0x0

    move/from16 v14, p1

    invoke-direct/range {v3 .. v15}, Lsstream/lib/objs/StoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsstream/lib/objs/StoryItem$StoryType;Lsstream/lib/objs/Author;Lsstream/lib/objs/Image;JILjava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->deleteAllSstreamItems(Landroid/content/Context;)Z

    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lsstream/lib/SStreamContentManager;->sendStoryItem(Landroid/content/Context;Lsstream/lib/objs/StoryItem;)V
    :try_end_0
    .catch Lsstream/lib/InvalidStoryItemException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Lsstream/lib/InvalidStoryItemException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method static ConvertTimeMillisFromSMS(Ljava/lang/String;)J
    .locals 20

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/4 v3, 0x3

    const/4 v8, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v3, 0x6

    const/16 v8, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v3, 0x9

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    add-int/lit8 v3, v15, -0x1

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    cmp-long v3, v16, v18

    if-gez v3, :cond_0

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    add-int/lit8 v9, v2, -0x1

    add-int/lit8 v10, v15, -0x1

    move-object v8, v1

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-virtual/range {v8 .. v14}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    :cond_0
    return-wide v18
.end method

.method public static SetFolderBox(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "from_noti_outbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "from_noti_wappush"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "from_noti_inbox"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    return-object p0

    :pswitch_1
    const-string v0, "from_noti_outbox"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "from_noti_wappush"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "from_noti_inbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const-string v0, "from_noti_outbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "from_noti_wappush"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "from_noti_inbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Landroid/os/ICustomFrequencyManager;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/os/ICustomFrequencyManager;)Landroid/os/ICustomFrequencyManager;
    .locals 0

    sput-object p0, Lcom/android/mms/transaction/MessagingNotification;->mCfmsService:Landroid/os/ICustomFrequencyManager;

    return-object p0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->TORCH_BRIGHTNESS_STANDARD:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->TORCH_BRIGHTNESS_OFF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Landroid/app/Notification;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;[J)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateAllHistoryAsRead(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;ZLjava/lang/CharSequence;JI)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;JI)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->sEnableLockscreen:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/model/SlideshowModel;)I
    .locals 1

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeOnSlide(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    return v0
.end method

.method private static final addAlertNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;J)V"
        }
    .end annotation

    const-string v2, "Mms/MessagingNotification"

    const-string v4, "getCmasNewMessageNotificationInfo()"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Mms/MessagingNotification"

    const-string v4, "getCmasNewMessageNotificationInfo()"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v20, 0x0

    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-lez v2, :cond_1

    const-string v6, "(address like \"%#CMAS#%\" AND thread_id NOT NULL) AND _id = "

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v6, "(address like \"#Emergency Alert#%\" AND thread_id NOT NULL) AND _id = "

    move-object/from16 v21, v6

    :goto_0
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    move-object/from16 v6, v21

    :goto_1
    if-nez v20, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v6, "(address like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL)"

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v6, "(address like \"#Emergency Alert#%\" AND read = 0 AND thread_id NOT NULL)"

    :cond_2
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    const/16 v20, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/4 v2, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v9, v12, v13, v2}, Lcom/android/mms/transaction/MessagingNotification;->initCmasAlertMessage(Landroid/content/Context;Ljava/lang/String;JI)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_5
    const/4 v2, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAlertNotificationInfos : simSlot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v8, 0x3

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x81

    invoke-direct/range {v7 .. v19}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJI)V

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    const/16 v20, 0x0

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    if-eqz v20, :cond_6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    const/16 v20, 0x0

    :cond_6
    throw v2

    :cond_7
    move-object/from16 v21, v6

    goto/16 :goto_0
.end method

.method private static final addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;J)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v18, 0x0

    const-wide/16 v5, 0x0

    cmp-long v2, p3, v5

    if-lez v2, :cond_1

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(msg_box=1 AND (m_type=130 OR m_type=132) AND thread_id NOT NULL) AND _id = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    :goto_0
    if-nez v18, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132) AND thread_id NOT NULL)"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v19, 0x3e8

    mul-long v5, v5, v19

    sget v2, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    add-int/lit8 v7, v2, 0x1

    sput v7, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    int-to-long v0, v2

    move-wide/from16 v19, v0

    add-long v9, v5, v19

    const/16 v16, 0x81

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    :cond_4
    const/4 v2, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    new-instance v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, -0x1

    invoke-direct/range {v4 .. v17}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJII)V

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    :cond_5
    throw v2
.end method

.method private static addMsgNotificationInfos(Landroid/content/Context;JILjava/util/SortedSet;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {p0, p5, p4, p1, p2}, Lcom/android/mms/transaction/MessagingNotification;->addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p5, p4, p1, p2}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p5

    move-object v2, p4

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;ZJ)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p5, p4, p1, p2}, Lcom/android/mms/transaction/MessagingNotification;->addAlertNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p5, p4, p1, p2}, Lcom/android/mms/transaction/MessagingNotification;->addWpmNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    const/high16 v0, 0x3400

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "noti"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method private static final addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;J)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;ZJ)V

    return-void
.end method

.method private static final addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;ZJ)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;ZJ)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v21, 0x0

    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addSmsNotificationInfos(),withCmas= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v2, p4, v4

    if-lez v2, :cond_3

    if-eqz p3, :cond_2

    const-string v6, "type = 1 AND address not like \"%#CMAS#%\" AND thread_id NOT NULL AND _id = "

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v6, "type = 1 AND address not like \"#Emergency Alert#%\" AND thread_id NOT NULL AND _id = "

    :cond_0
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    :goto_0
    if-nez v21, :cond_6

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(type = 1 AND thread_id NOT NULL) AND _id = "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_5

    const-string v6, "type = 1 AND address not like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL"

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v6, "type = 1 AND address not like \"#Emergency Alert#%\" AND read = 0 AND thread_id NOT NULL"

    :cond_4
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    goto :goto_0

    :cond_5
    sget-object v9, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v11, "(type = 1 AND read = 0 AND thread_id NOT NULL)"

    const/4 v12, 0x0

    const-string v13, "date desc"

    move-object/from16 v7, p0

    move-object v8, v3

    invoke-static/range {v7 .. v13}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    goto :goto_0

    :cond_6
    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_7

    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    const/16 v21, 0x0

    goto :goto_1

    :cond_7
    const-wide/16 v17, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v12, 0x0

    const/4 v8, 0x1

    :cond_8
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sget v2, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    add-int/lit8 v11, v2, 0x1

    sput v11, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    int-to-long v0, v2

    move-wide/from16 v23, v0

    add-long v12, v4, v23

    const-string v2, "CBmessages"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f0c00f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x4

    :goto_2
    const/16 v19, 0x81

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x6

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    sget v2, Lcom/android/mms/transaction/MessagingNotification;->PRIORITY_SMS_NORMAL:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    const/16 v19, 0x81

    :cond_9
    :goto_3
    const/4 v2, 0x7

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    new-instance v7, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v11, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v20}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJII)V

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_8

    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_a
    const/4 v8, 0x1

    goto :goto_2

    :cond_b
    const/16 v19, 0x82

    goto :goto_3

    :catch_0
    move-exception v22

    :try_start_2
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "NullPointerException - caught"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v21, :cond_1

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    const/16 v21, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v21, :cond_c

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    const/16 v21, 0x0

    :cond_c
    throw v2
.end method

.method private static final addWpmNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;J)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    cmp-long v2, p3, v19

    if-lez v2, :cond_1

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(thread_id NOT NULL) AND _id = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    :goto_0
    if-nez v18, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "(read = 0 AND thread_id NOT NULL)"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v14, 0x0

    :cond_4
    const v2, 0x7f0c015f

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "wappush"

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    :cond_5
    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const-string v2, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addWpmNotificationInfos: simSlot="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x81

    invoke-direct/range {v4 .. v17}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJJII)V

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v18, :cond_6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    :cond_6
    throw v2
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v1, -0x2

    const/4 v3, 0x0

    const-string v0, "Mms/MessagingNotification"

    const-string v4, "blockingUpdateAllNotifications()"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x2

    move-object v0, p0

    move-wide v4, v1

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    return-void
.end method

.method public static blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v1, -0x2

    const/4 v3, 0x0

    const-string v0, "Mms/MessagingNotification"

    const-string v4, "blockingUpdateAllNotificationsForMarkAsRead()"

    invoke-static {v0, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, -0x2

    move-object v0, p0

    move-wide v4, v1

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    return-void
.end method

.method public static blockingUpdateMessageIndicator(Landroid/content/Context;JZJI)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V

    return-void
.end method

.method public static blockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJIIZ)V

    return-void
.end method

.method public static blockingUpdateMessageIndicator(Landroid/content/Context;JZJIIZ)V
    .locals 32

    const-string v4, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blockingUpdateMessageIndicator(), threadId ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isStatusMessage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->loadNotificationPref(Landroid/content/Context;I)V

    new-instance v10, Ljava/util/TreeSet;

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v10, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    new-instance v11, Ljava/util/HashSet;

    const/4 v4, 0x4

    invoke-direct {v11, v4}, Ljava/util/HashSet;-><init>(I)V

    sget-object v12, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    monitor-enter v12

    const-wide/16 v6, 0x0

    cmp-long v4, p1, v6

    if-lez v4, :cond_0

    :try_start_0
    sget-wide v6, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    cmp-long v4, p1, v6

    if-nez v4, :cond_0

    const/4 v4, 0x3

    move/from16 v0, p6

    if-eq v0, v4, :cond_0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p4

    move/from16 v9, p6

    invoke-static/range {v4 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->notifyInConversation(Landroid/content/Context;JJILjava/util/SortedSet;Ljava/util/Set;)V

    monitor-exit v12

    :goto_0
    return-void

    :cond_0
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-virtual {v4}, Lcom/android/mms/transaction/NotificationPlayer;->stop()V

    const/4 v4, 0x0

    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    :cond_1
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    sput v4, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v27

    const-wide/16 v29, 0x0

    if-eqz v27, :cond_c

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v10, v6, v7}, Lcom/android/mms/transaction/MessagingNotification;->addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-static {v0, v11, v10, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->addWpmNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    if-eqz v27, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v4

    if-nez v4, :cond_d

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v11, v10, v6, v7}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    :cond_2
    :goto_2
    move-wide/from16 v0, p4

    move/from16 v2, p6

    invoke-static {v0, v1, v2, v10}, Lcom/android/mms/transaction/MessagingNotification;->findMostRecentNotification(JILjava/util/SortedSet;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v8

    const/4 v5, 0x0

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J

    move-result-wide v6

    cmp-long v4, p1, v6

    if-eqz v4, :cond_3

    const-wide/16 v6, -0x1

    cmp-long v4, p1, v6

    if-eqz v4, :cond_3

    const-wide/16 v6, -0x3

    cmp-long v4, p1, v6

    if-nez v4, :cond_10

    :cond_3
    const/4 v5, 0x1

    :cond_4
    :goto_3
    new-instance v15, Ljava/util/TreeSet;

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v15, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    new-instance v25, Ljava/util/HashSet;

    const/4 v4, 0x4

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v29

    invoke-static {v0, v1, v15, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->addAlertNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    move-wide/from16 v0, p4

    move/from16 v2, p6

    invoke-static {v0, v1, v2, v15}, Lcom/android/mms/transaction/MessagingNotification;->findMostRecentNotification(JILjava/util/SortedSet;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v16

    const/4 v13, 0x0

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J

    move-result-wide v6

    cmp-long v4, p1, v6

    if-eqz v4, :cond_5

    const-wide/16 v6, -0x1

    cmp-long v4, p1, v6

    if-nez v4, :cond_11

    :cond_5
    const-wide/16 v6, -0x3

    cmp-long v4, p1, v6

    if-eqz v4, :cond_11

    const/4 v13, 0x1

    :cond_6
    :goto_4
    invoke-interface {v15}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v10}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopAlertSoundOnCall()V

    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    invoke-interface {v10}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    const/16 v4, 0x7b

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSstream()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->deleteAllSstreamItems(Landroid/content/Context;)Z

    :cond_9
    :goto_5
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-eqz v4, :cond_a

    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotificationLockscreen:Z

    if-eqz v4, :cond_a

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_13

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/mms/transaction/MessagingNotification;->convertConcatenatedAddress(Landroid/content/Context;Ljava/util/SortedSet;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10}, Ljava/util/SortedSet;->size()I

    move-result v6

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v7

    move-object/from16 v0, p0

    invoke-static {v0, v4, v8, v6, v7}, Lcom/android/mms/transaction/MessagingNotification;->showMultipleThreadNotificationLockscreen(Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;II)V

    :cond_a
    :goto_6
    invoke-interface {v15}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v4, 0x41c

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    :goto_7
    if-eqz v27, :cond_15

    invoke-interface {v10}, Ljava/util/SortedSet;->size()I

    move-result v4

    invoke-interface {v15}, Ljava/util/SortedSet;->size()I

    move-result v6

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    :goto_8
    move-object/from16 v28, p0

    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/android/mms/transaction/MessagingNotification$6;

    move-object/from16 v0, v28

    invoke-direct {v6, v0}, Lcom/android/mms/transaction/MessagingNotification$6;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v4

    const/4 v6, 0x1

    if-le v4, v6, :cond_16

    const/16 v31, 0x0

    :goto_9
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->getInsertedSimNum()I

    move-result v4

    move/from16 v0, v31

    if-ge v0, v4, :cond_17

    const-string v4, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blockingUpdateNewMessageIndicator: simSlotCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getNotificationCountBySimSlot(simSlotCount)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-static {v10, v0}, Lcom/android/mms/transaction/MessagingNotification;->getNotificationCountBySimSlot(Ljava/util/SortedSet;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, v31

    invoke-static {v10, v0}, Lcom/android/mms/transaction/MessagingNotification;->getNotificationCountBySimSlot(Ljava/util/SortedSet;I)I

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelAlarm(Landroid/content/Context;I)V

    :cond_b
    add-int/lit8 v31, v31, 0x1

    goto :goto_9

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_c
    move-wide/from16 v29, p4

    goto/16 :goto_1

    :cond_d
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    move-object/from16 v4, p0

    move-object v5, v11

    move-object v6, v10

    invoke-static/range {v4 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;ZJ)V

    goto/16 :goto_2

    :cond_e
    const/4 v4, 0x4

    move/from16 v0, p6

    if-ne v0, v4, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-static {v0, v11, v10, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    goto/16 :goto_2

    :cond_f
    const/4 v7, 0x1

    move-object/from16 v4, p0

    move-object v5, v11

    move-object v6, v10

    move-wide/from16 v8, v29

    invoke-static/range {v4 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;ZJ)V

    goto/16 :goto_2

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_12
    const-string v4, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Message count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v10}, Ljava/util/SortedSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newMsgThreadId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unique = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "isSpam = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p8, :cond_9

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v6

    move-object/from16 v4, p0

    move-object v7, v10

    move/from16 v9, p7

    invoke-static/range {v4 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V

    goto/16 :goto_5

    :cond_13
    invoke-interface {v10}, Ljava/util/SortedSet;->size()I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v8, v4}, Lcom/android/mms/transaction/MessagingNotification;->showSingleNotificationLockscreen(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V

    goto/16 :goto_6

    :cond_14
    const-string v4, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alert count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v15}, Ljava/util/SortedSet;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newMsgThreadId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " unique = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v14

    move-object/from16 v12, p0

    move/from16 v17, p7

    invoke-static/range {v12 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->updateAlertNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V

    goto/16 :goto_7

    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    goto/16 :goto_8

    :cond_16
    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelAlarm(Landroid/content/Context;I)V

    :cond_17
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    if-eqz v4, :cond_18

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->size()I

    move-result v4

    if-eqz v4, :cond_19

    :cond_18
    const-wide/16 v6, -0x3

    cmp-long v4, p1, v6

    if-nez v4, :cond_1a

    :cond_19
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->cancelCMASAlarm(Landroid/content/Context;)V

    :cond_1a
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v26

    if-eqz v26, :cond_1b

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;ZI)V

    :cond_1b
    if-eqz v5, :cond_22

    :try_start_2
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v4, :cond_1c

    invoke-interface {v10}, Ljava/util/SortedSet;->clear()V

    invoke-interface {v11}, Ljava/util/Set;->clear()V

    invoke-interface {v15}, Ljava/util/SortedSet;->clear()V

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->clear()V

    goto/16 :goto_0

    :cond_1c
    :try_start_3
    move-object/from16 v0, p0

    invoke-static {v0, v10, v15, v8}, Lcom/android/mms/accessory/WatchRelay;->sendReceivedMsgIntent(Landroid/content/Context;Ljava/util/SortedSet;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V

    invoke-virtual {v8}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v7}, Lcom/android/mms/util/TelephonyDBUtils;->isReadMsg(Landroid/content/Context;IJ)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isReadMsg() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v6

    long-to-int v6, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    :cond_1d
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableBlockingMode:Z

    if-nez v4, :cond_1e

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->isPrayModeEnable(Landroid/content/Context;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1e
    invoke-interface {v10}, Ljava/util/SortedSet;->clear()V

    invoke-interface {v11}, Ljava/util/Set;->clear()V

    invoke-interface {v15}, Ljava/util/SortedSet;->clear()V

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->clear()V

    goto/16 :goto_0

    :cond_1f
    :try_start_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationPopup()Z

    move-result v4

    if-eqz v4, :cond_21

    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotificationPopup:Z

    if-eqz v4, :cond_21

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/PackageInfo;->isKidsMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/PackageInfo;->isMoviePlayerServiceRunning(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/PackageInfo;->isDmbRunning(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->isVlingoRunning(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->isDriveLinkRunning(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_21

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isInCall(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isDeviceLockedWithSecure(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_21

    :cond_20
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isCoverOpened(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, p0

    move-wide/from16 v18, p1

    move/from16 v20, p6

    move-wide/from16 v21, p4

    invoke-static/range {v17 .. v23}, Lcom/android/mms/transaction/MessagingNotification;->showNotificationDialog(Landroid/content/Context;JIJLjava/lang/String;)V

    :cond_21
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v1, v8}, Lcom/android/mms/transaction/MessagingNotification;->startMessageAlertService(Landroid/content/Context;ILcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V

    :cond_22
    if-eqz v13, :cond_25

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_23

    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-nez v4, :cond_23

    invoke-interface {v15}, Ljava/util/SortedSet;->size()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1, v4, v13}, Lcom/android/mms/transaction/MessagingNotification;->isPresidentialCmas(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;IZ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v4

    if-nez v4, :cond_23

    invoke-interface {v10}, Ljava/util/SortedSet;->clear()V

    invoke-interface {v11}, Ljava/util/Set;->clear()V

    invoke-interface {v15}, Ljava/util/SortedSet;->clear()V

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->clear()V

    goto/16 :goto_0

    :cond_23
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v10, v15, v1}, Lcom/android/mms/accessory/WatchRelay;->sendReceivedMsgIntent(Landroid/content/Context;Ljava/util/SortedSet;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6, v7}, Lcom/android/mms/util/TelephonyDBUtils;->isReadMsg(Landroid/content/Context;IJ)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isReadMsg() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v6

    long-to-int v6, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    :cond_24
    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->startMessageAlertService(Landroid/content/Context;ILcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_25
    invoke-interface {v10}, Ljava/util/SortedSet;->clear()V

    invoke-interface {v11}, Ljava/util/Set;->clear()V

    invoke-interface {v15}, Ljava/util/SortedSet;->clear()V

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->clear()V

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    invoke-interface {v10}, Ljava/util/SortedSet;->clear()V

    invoke-interface {v11}, Ljava/util/Set;->clear()V

    invoke-interface {v15}, Ljava/util/SortedSet;->clear()V

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->clear()V

    throw v4
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZII)V

    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZII)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZIIZ)V

    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZIIZ)V
    .locals 9

    const-wide/16 v1, 0x0

    invoke-static {p1}, Lcom/android/mms/util/TelephonyDBUtils;->getMsgIdFromUri(Landroid/net/Uri;)J

    move-result-wide v4

    packed-switch p3, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    :goto_0
    move-object v0, p0

    move v3, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJIIZ)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    goto :goto_0

    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static blockingUpdateNotificationAsRead(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v1, -0x2

    const/4 v3, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x6

    move-object v0, p0

    move-wide v4, v1

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V

    return-void
.end method

.method protected static buildTickerAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8

    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v3
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/data/Contact;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9

    const/16 v8, 0xd

    const/16 v7, 0xa

    const/16 v6, 0x20

    const/4 v1, 0x0

    const-string v4, "CBmessages"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f0c00f8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_7

    const-string v4, ""

    :goto_1
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u200e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p3, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p4, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v3

    :cond_3
    const-string v4, "Pushmessage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f0c015f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isCmasSender(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f0c01c1

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0c0138

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public static cancelAlarm(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelAlarm(Landroid/content/Context;I)V

    return-void
.end method

.method public static cancelAlarm(Landroid/content/Context;I)V
    .locals 5

    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/AlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "simSlot"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "MessagingNotification"

    const-string v4, "remove alarm"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v3, 0x800

    invoke-static {p0, p1, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static cancelCMASAlarm(Landroid/content/Context;)V
    .locals 7

    const/high16 v6, 0x4000

    const/4 v5, 0x0

    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/CmasAlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    const-string v3, "MessagingNotification"

    const-string v4, "remove CMAS alarm"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    if-eqz v3, :cond_0

    const-string v3, "ONCECMAS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sput-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    sput-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "TMOCMAS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/high16 v3, 0x800

    invoke-static {p0, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0
.end method

.method public static cancelCmasVibrator()V
    .locals 2

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "##cancelNotification called  cmasVibrator.cancel()##"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x378

    if-ne p1, v2, :cond_0

    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sExistReportNotification:Z

    if-eqz v2, :cond_0

    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sExistReportNotification:Z

    const/4 v2, 0x5

    invoke-static {p0, v2, v4}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    :cond_0
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->releaseMediaPlayer()V

    const-string v2, "Mms/MessagingNotification"

    const-string v3, "##cancelNotification called  mMediaPlayer.release()##"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    :cond_1
    sget v2, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    if-ltz v2, :cond_3

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    sget v3, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_2
    const/4 v2, -0x1

    sput v2, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    :cond_3
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->cancelCmasVibrator()V

    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelNotification(),notificationId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static cancelNotificationOnly(Landroid/content/Context;I)V
    .locals 4

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v1, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotificationOnly(),notificationId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static checkBadgeCount(Landroid/content/Context;)V
    .locals 11

    const-wide/16 v1, -0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount(Landroid/content/ContentResolver;)I

    move-result v10

    invoke-static {v9}, Lcom/android/mms/transaction/MessagingNotification;->getBadgeCount(Landroid/content/ContentResolver;)I

    move-result v8

    const-string v0, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBadgeCount unreadCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " badgeCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v10, v8, :cond_0

    const/4 v6, -0x2

    move-object v0, p0

    move-wide v4, v1

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V

    :cond_0
    return-void
.end method

.method private static checkVlingoAccepted(Landroid/content/Context;Z)Z
    .locals 10

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v0, "content://com.vlingo.client.vlingoconfigprovider/tos_accepted"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v0, "Mms/MessagingNotification"

    const-string v2, "Vlingo can\'t send content provider yet"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    :goto_1
    return v0

    :cond_1
    const-string v0, "content://com.vlingo.client.vlingoconfigprovider/readback_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_4
    :goto_2
    move v0, v8

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string v0, "Mms/MessagingNotification"

    const-string v2, "checkVlingoAccepted exception error"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_5
    throw v0
.end method

.method private static convertConcatenatedAddress(Landroid/content/Context;Ljava/util/SortedSet;)Ljava/lang/StringBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v12, 0x0

    invoke-virtual {v8, p0, v12}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    const v12, 0x7f0c0138

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :cond_0
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const/16 v12, 0x8

    if-le v11, v12, :cond_5

    :cond_1
    const/16 v12, 0x8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_7

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v12, v7, -0x1

    if-eq v4, v12, :cond_3

    const-string v12, ", "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v8, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v6, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    return-object v1
.end method

.method private static createMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Z)Landroid/app/Notification;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            "I",
            "Landroid/app/Notification$Builder;",
            "Z)",
            "Landroid/app/Notification;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    move/from16 v0, p3

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface/range {p1 .. p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    iget-wide v11, v7, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-wide v11, v7, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v11, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCmas()Z

    move-result v11

    if-nez v11, :cond_2

    const v11, 0x7f0c0387

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual/range {p4 .. p4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    :goto_1
    return-object v6

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/16 v11, 0x8

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, p5

    invoke-static {p0, v5, v4, v0}, Lcom/android/mms/transaction/MessagingNotification;->formatSenders(Landroid/content/Context;Ljava/util/ArrayList;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v2, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_3

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move/from16 v0, p5

    invoke-virtual {v3, p0, v4, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatInboxMessage(Landroid/content/Context;IZ)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method private static createSingleNotification(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    sget-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCmas()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isHebrew(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0c0389

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_0
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    const v2, 0x7f0c0387

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p1, p0, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAttachmentBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v2, p2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {p1, p0, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatPictureMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v3, :cond_4

    iget-wide v3, p1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v3, v4}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, p2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    if-nez p3, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v2, " "

    goto :goto_2

    :cond_4
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, p2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {p1, p0, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    if-nez p3, :cond_5

    :goto_3
    invoke-virtual {v3, v2}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v2, " "

    goto :goto_3
.end method

.method private static createUniqueMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            "I",
            "Landroid/app/Notification$Builder;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-boolean v7, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-nez v7, :cond_2

    iget-wide v7, p2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v7, v8}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x7f0c0387

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasNotiDateDescription()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    invoke-virtual {p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCmas()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    sget-object v7, Lcom/android/mms/transaction/MessagingNotification;->mDate:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_1

    const-string v7, "     -CMAS"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    sget-boolean v7, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v7, :cond_5

    invoke-virtual {p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCmas()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    :goto_2
    return-object v5

    :cond_2
    :try_start_1
    new-array v7, p3, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    invoke-interface {p1, v7}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const/4 v6, 0x0

    add-int/lit8 v3, p3, -0x1

    :goto_3
    if-ltz v3, :cond_0

    aget-object v7, v4, v3

    invoke-virtual {v7, p0, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v3, :cond_3

    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x8

    if-ge v6, v7, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const v7, 0x7f0c0387

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_5
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v7, p4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v7, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    if-nez p5, :cond_6

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8, v7}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v5

    goto :goto_2

    :cond_6
    const-string v7, " "

    goto :goto_4
.end method

.method private static decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;I)V

    return-void
.end method

.method private static decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;I)V
    .locals 18

    const-string v15, "ril.cdma.inecmmode"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAlertInEcbmMode()Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "true"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v6, 0x1

    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBNotifications()Z

    move-result v15

    if-nez v15, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7f0c00f8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    :goto_0
    return-void

    :cond_1
    sget-boolean v15, Lcom/android/mms/transaction/MessagingNotification;->sEnableBlockingMode:Z

    if-nez v15, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->isPrayModeEnable(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_2

    sget-boolean v15, Lcom/android/mms/transaction/MessagingNotification;->sEnableBacklight:Z

    if-eqz v15, :cond_2

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isCurrentUserOwner()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessageUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLCDOn()Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    const v15, 0x1000001a

    const-string v16, "New message notification LCD on"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    const-wide/16 v15, 0x1388

    invoke-virtual/range {v14 .. v16}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_2
    sget-boolean v15, Lcom/android/mms/transaction/MessagingNotification;->sEnableBlockingMode:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6, v15}, Lcom/android/mms/transaction/MessagingNotification;->notificationVibrate(Landroid/content/Context;Landroid/app/Notification;ZZ)Z

    move-result v8

    const-string v15, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v13, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    const/4 v13, 0x1

    :cond_3
    :goto_1
    const-string v15, "Mms/MessagingNotification"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "vibrateSetting="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_8

    const/4 v15, 0x0

    sput-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    :cond_4
    :goto_2
    const/4 v15, 0x1

    if-eq v6, v15, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->isPrayModeEnable(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_6

    :cond_5
    const-string v15, ""

    sput-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    :cond_6
    sget-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_f

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, p1

    iput-object v15, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_7
    const/4 v13, 0x0

    goto :goto_1

    :cond_8
    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v15

    if-eqz v15, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Contact;->getRingtone()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    const/4 v7, 0x1

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v15

    if-nez v15, :cond_a

    invoke-static {}, Lcom/android/mms/MmsConfig;->isATTCMASFeatureEnabled()Z

    move-result v15

    if-eqz v15, :cond_b

    :cond_a
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    if-nez v8, :cond_e

    sget-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    if-nez v15, :cond_b

    const-string v15, "pref_key_ringtone"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    sget-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    if-nez v15, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "notification_sound"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    :cond_b
    :goto_4
    sget-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    sget-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v11

    if-nez v11, :cond_d

    const-string v10, "pref_key_ringtone"

    if-eqz p3, :cond_c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_sim"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v16, p3, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_c
    sget-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-interface {v12, v10, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    :cond_d
    sget-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v15, v7}, Lcom/android/mms/ui/MessageUtils;->checkRingtoneIsValid(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    const-string v15, ""

    sput-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    goto :goto_4

    :cond_f
    sget-object v15, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    goto/16 :goto_3
.end method

.method private static deleteAllSstreamItems(Landroid/content/Context;)Z
    .locals 3

    const-string v1, "samsung.personal"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lsstream/lib/SStreamContentManager;->deleteAllStoryItemsFromStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 13

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v3, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v2

    const-string v0, "sim_slot"

    aput-object v0, v3, v5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v12, 0x0

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string v10, "logtype=? AND messageid=?"

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "200"

    aput-object v2, v11, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v0

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string v0, "Mms/MessagingNotification"

    const-string v2, "deleteHistoryForMMS()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static deleteHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "logtype=? AND messageid=?"

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "300"

    aput-object v2, v11, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v0

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string v0, "Mms/MessagingNotification"

    const-string v2, "deleteHistoryForSMS()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static findMostRecentNotification(JILjava/util/SortedSet;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/SortedSet;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    const-wide/16 v4, -0x2

    cmp-long v4, p0, v4

    if-nez v4, :cond_2

    invoke-interface {p3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-interface {p3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    :try_start_0
    invoke-virtual {v3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, p2, :cond_3

    move-object v2, v3

    :cond_4
    if-nez v2, :cond_5

    invoke-interface {p3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    :cond_5
    move-object v4, v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Mms/MessagingNotification"

    const-string v5, "findMostRecentNotification - Catch Exception:"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static foregroundPresidentialAlert(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Z)V
    .locals 5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, p0, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "President"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    :cond_2
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/MessagingNotification$9;

    invoke-direct {v2}, Lcom/android/mms/transaction/MessagingNotification$9;-><init>()V

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x4268

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static formatSenders(Landroid/content/Context;Ljava/util/ArrayList;IZ)Ljava/lang/CharSequence;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;IZ)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v6, 0x7f0e0009

    invoke-direct {v2, p0, v6}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const v6, 0x7f0c038c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_2

    if-lez v0, :cond_0

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    invoke-virtual {v6, p0, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const v6, 0x7f0c0138

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v2, v7, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v5
.end method

.method private static getAttachmentTypeOnSlide(Lcom/android/mms/model/SlideshowModel;)I
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-le v1, v3, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0
.end method

.method private static getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0e000a

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-lez v0, :cond_0

    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    return-object v2

    :pswitch_0
    const v0, 0x7f0c00aa

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0c00a8

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0c038a

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0c00a6

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getBadgeCount(Landroid/content/ContentResolver;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->BADGE_PROVIDER_PROJECTION:[Ljava/lang/String;

    const-string v3, "package=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "com.android.mms"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    :goto_1
    move v0, v8

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "getBadgeCount has exception"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method public static getDeleteIntent()Landroid/content/Intent;
    .locals 2

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static getDisableVibrateVideo(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v2, "disable_vibrate_recording"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "disable_vibrate"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_2
    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_3
    throw v0
.end method

.method private static getImage(Lcom/android/mms/model/SlideModel;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f0c009d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const v0, 0x7f0c00a2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0c009f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0c00e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const v1, 0x7f0c009e

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f0c009b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c02a5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMmsText(Lcom/android/mms/model/SlideshowModel;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->isDrmProtected()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getNewCMASCount(Landroid/content/Context;Landroid/content/ContentResolver;)I
    .locals 9

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "getNewCMASCount()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "(address like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL)"

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v4, "(address like \"#Emergency Alert#%\" AND read = 0 AND thread_id NOT NULL)"

    :cond_2
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNewCMASCount() count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_3
    throw v0
.end method

.method private static getNewCMASPresidentialCount(Landroid/content/Context;)I
    .locals 9

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    const-string v0, "Mms/MessagingNotification"

    const-string v2, "getNewCMASPresidentialCount()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "(address like \"%#CMAS#Presidential%\" AND read = 0)"

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v4, "(address like \"#Emergency Alert#Presidential%\" AND read = 0)"

    :cond_2
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const-string v0, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewCMASPresidentialCount() count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_3
    throw v0
.end method

.method public static getNewMessageCount(Landroid/content/Context;)I
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getNewSmsCount(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v3

    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getNewMmsCount(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getNewWpmCount(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v4

    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASCount(Landroid/content/Context;Landroid/content/ContentResolver;)I

    move-result v0

    const-string v5, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNewMessageCount() smsCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mmsCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wpmCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cmasCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int v5, v3, v1

    add-int/2addr v5, v4

    add-int/2addr v5, v0

    return v5
.end method

.method private static getNewMissedCallSMS(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x0

    const-string v7, "^[0-1][0-9]/[0-3][0-9]\\s[0-2][0-9]:[0-5][0-9]\\s\\n"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v7, "^[0-1][0-9]/[0-3][0-9]\\s[0-2][0-9]:[0-5][0-9]\\s\uff83\uff9a\uff8b\uff9e\u96fb\u8a71\\n"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v7, "^\u6d77\u5916\\s\u7740\u4fe1\u901a\u77e5\\(\u65e5\u672c\u6642\u9593\\)\\n"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    goto :goto_0
.end method

.method public static getNewMmsCount(Landroid/content/Context;Landroid/content/ContentResolver;)I
    .locals 9

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132) AND thread_id NOT NULL)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v7, 0x0

    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getNewSmsCount(Landroid/content/Context;Landroid/content/ContentResolver;)I
    .locals 14

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v4, "type = 1 AND address not like \"%#CMAS#%\" AND read = 0 AND thread_id NOT NULL"

    invoke-static {}, Lcom/android/mms/MmsConfig;->useNewCmasPrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "type = 1 AND address not like \"#Emergency Alert#%\" AND read = 0 AND thread_id NOT NULL"

    :cond_0
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    :goto_0
    const/4 v12, 0x0

    if-eqz v13, :cond_1

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    :cond_1
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    return v12

    :cond_3
    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v9, "(type = 1 AND read = 0 AND thread_id NOT NULL)"

    const/4 v10, 0x0

    const-string v11, "date desc"

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static getNewWpmCount(Landroid/content/Context;Landroid/content/ContentResolver;)I
    .locals 9

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(read = 0 AND thread_id NOT NULL)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v7, 0x0

    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static declared-synchronized getNotificationCountBySimSlot(Ljava/util/SortedSet;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;I)I"
        }
    .end annotation

    const-class v5, Lcom/android/mms/transaction/MessagingNotification;

    monitor-enter v5

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Ljava/util/SortedSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    monitor-exit v5

    return v4

    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    invoke-virtual {v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getSimSlot()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    if-ne v4, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v4, "Mms/MessagingNotification"

    const-string v6, "getNotificationCountBySimSlot - Catch Exception:"

    invoke-static {v4, v6, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    move v4, v0

    goto :goto_0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private static getSlideshowModel(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 5

    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/mms/pdu/RetrieveConf;

    if-nez v2, :cond_0

    instance-of v2, v1, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMmsText MmsException parsingPdu e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const v0, 0x7f0c00a2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0c009d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0c009a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0c00e1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x46 -> :sswitch_3
    .end sparse-switch
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 9

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 2 AND status = 0)"

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "Mms/MessagingNotification"

    const-string v2, "getSmsNewDeliveryInfo"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const v0, 0x7f0c00ae

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-direct {v5, v0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_3
    throw v0
.end method

.method public static getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 11

    const-wide/16 v9, -0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsThreadId uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NULL cursor! returning THREAD_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v9

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "thread_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_3

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsThreadId uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Couldn\'t read row 0, col -1! returning THREAD_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_2
    move-wide v0, v9

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsThreadId uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NULL cursor! returning THREAD_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_5
    move-wide v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_6
    throw v0
.end method

.method private static getStreamBgImagePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 15

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    iget-object v0, v13, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/files/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mux_per_default_bg_02.jpg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_4

    :cond_0
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    const-string v13, "mux_per_default_bg_02.jpg"

    invoke-virtual {v1, v13}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/files/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    const/16 v13, 0x400

    :try_start_1
    new-array v4, v13, [B

    :goto_0
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_5

    const/4 v13, 0x0

    invoke-virtual {v10, v4, v13, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v9, v10

    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_2
    const/4 v7, 0x0

    :cond_2
    if-eqz v9, :cond_3

    :try_start_4
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_3
    :try_start_5
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :goto_4
    const/4 v9, 0x0

    :cond_3
    :goto_5
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_4
    return-object v2

    :cond_5
    if-eqz v7, :cond_6

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    const/4 v7, 0x0

    :cond_6
    if-eqz v10, :cond_9

    :try_start_7
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    const/4 v9, 0x0

    goto :goto_5

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v13

    :goto_9
    if-eqz v7, :cond_7

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :goto_a
    const/4 v7, 0x0

    :cond_7
    if-eqz v9, :cond_8

    :try_start_a
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :goto_b
    :try_start_b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :goto_c
    const/4 v9, 0x0

    :cond_8
    throw v13

    :catch_7
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_8
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catch_9
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catchall_1
    move-exception v13

    move-object v9, v10

    goto :goto_9

    :catch_a
    move-exception v6

    goto :goto_1

    :cond_9
    move-object v9, v10

    goto :goto_5
.end method

.method private static getSystemService(Ljava/lang/String;)Landroid/app/AlarmManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getText(Lcom/android/mms/model/SlideModel;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 11

    const-wide/16 v9, -0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThreadId uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NULL cursor! returning THREAD_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v9

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "thread_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_3

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThreadId uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Couldn\'t read row 0, col -1! returning THREAD_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_2
    move-wide v0, v9

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getThreadId uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NULL cursor! returning THREAD_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_5
    move-wide v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_6
    throw v0
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 13

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v7

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const-wide/16 v11, 0x0

    if-eqz p1, :cond_9

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    aput-wide v11, p1, v0

    :cond_2
    :goto_1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x0

    aget-wide v8, p1, v0

    :cond_3
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    if-lez v7, :cond_8

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_7

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, -0x1

    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v7, :cond_2

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    aput-wide v11, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_7
    cmp-long v0, v11, v8

    if-eqz v0, :cond_3

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_8
    const/4 v0, 0x1

    :try_start_1
    aput-wide v8, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 11

    const-wide/16 v9, -0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWpmThreadId uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NULL cursor! returning THREAD_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v9

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "thread_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_3

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWpmThreadId uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Couldn\'t read row 0, col -1! returning THREAD_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_2
    move-wide v0, v9

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWpmThreadId uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " NULL cursor! returning THREAD_NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_5
    move-wide v0, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_6
    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init start"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.mms.NOTIFICATION_CANCEL_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init end"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initCmasAlertMessage(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 4

    const-string v1, "Mms/MessagingNotification"

    const-string v2, "initCmasAlertMessage()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x80b10

    invoke-static {p0, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->mDate:Ljava/lang/String;

    if-lez p4, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategoryStringId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    const-string v1, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCmasAlertMessage() mCmasType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static insertCallLogDB(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 28

    move-object/from16 v4, p1

    const/4 v7, 0x0

    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    const-string v24, "^\u6d77\u5916\\s\u7740\u4fe1\u901a\u77e5\\(\u65e5\u672c\u6642\u9593\\)\\n"

    invoke-static/range {v24 .. v24}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_0

    const-string v24, "\n"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v24, "^[0-1][0-9]/[0-3][0-9]\\s[0-2][0-9]:[0-5][0-9]\\s\\n"

    invoke-static/range {v24 .. v24}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    const-string v24, "^[0-1][0-9]/[0-3][0-9]\\s[0-2][0-9]:[0-5][0-9]\\s\uff83\uff9a\uff8b\uff9e\u96fb\u8a71\\n"

    invoke-static/range {v24 .. v24}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v17

    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v19, ""

    :goto_0
    if-nez v7, :cond_d

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    const-string v5, ""

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    const-string v24, "\n\n"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    if-ltz v18, :cond_7

    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v24, "+"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_6

    const-string v24, "\n\n"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_4

    invoke-static {v5}, Lcom/android/mms/transaction/MessagingNotification;->ConvertTimeMillisFromSMS(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v19, ""

    const-string v24, "\u901a\u77e5\u4e0d\u53ef\u80fd"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    const-string v24, "\u975e\u901a\u77e5\u8a2d\u5b9a"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    const-string v24, "\u516c\u8846\u96fb\u8a71"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    :cond_1
    move-object/from16 v19, v13

    :cond_2
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/16 v24, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v24, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const/16 v24, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_3

    const-string v24, "\u975e\u901a\u77e5\u8a2d\u5b9a"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    const-string v13, "-2"

    const-string v19, "2"

    :goto_3
    const-string v24, "presentation"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    const-string v24, "date"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v25, "type"

    const-wide/16 v26, 0x1

    cmp-long v24, v21, v26

    if-nez v24, :cond_b

    const/16 v24, 0x1

    :goto_4
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v24, "number"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "messageid"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v24, "m_content"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "new"

    if-nez v20, :cond_c

    const/16 v24, 0x1

    :goto_5
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    sget-object v24, Lcom/android/mms/transaction/MessagingNotification;->LOG_SMS_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    const-string v24, ""

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\n\n"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_7
    move-object v13, v4

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_8
    const-string v24, "\u516c\u8846\u96fb\u8a71"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    const-string v13, "-3"

    const-string v19, "4"

    goto/16 :goto_3

    :cond_9
    const-string v24, "\u901a\u77e5\u4e0d\u53ef\u80fd"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    const-string v13, "-1"

    const-string v19, "3"

    goto/16 :goto_3

    :cond_a
    const-string v19, "1"

    goto/16 :goto_3

    :cond_b
    const/16 v24, 0x2

    goto/16 :goto_4

    :cond_c
    const/16 v24, 0x0

    goto/16 :goto_5

    :catch_0
    move-exception v6

    const-string v24, "Mms/MessagingNotification"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception addcall to CallLog from sms: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public static isBlockingModeEnabled(Landroid/content/Context;)Z
    .locals 14

    const/4 v13, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportDormantMode()Z

    move-result v11

    if-nez v11, :cond_0

    move v7, v10

    :goto_0
    return v7

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_switch_onoff"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_disable_notifications"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v13, :cond_1

    if-ne v6, v13, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_always"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v13, :cond_2

    const/4 v7, 0x1

    :cond_1
    :goto_1
    const-string v10, "Mms/MessagingNotification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isBlockingModeEnable() = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v11, 0xb

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x3c

    const/16 v12, 0xc

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int v3, v11, v12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_start_hour"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x3c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_start_min"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    add-int v9, v11, v12

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_end_hour"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x3c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "dormant_end_min"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    add-int v4, v11, v10

    if-ge v9, v4, :cond_3

    if-lt v3, v9, :cond_1

    if-ge v3, v4, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    if-le v9, v4, :cond_5

    if-lt v3, v4, :cond_4

    if-lt v3, v9, :cond_1

    :cond_4
    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public static isDriveLinkRunning(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "drive_link_setting"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDriveLinkRunning isForeground="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v0, v3, :cond_0

    const-string v4, "com.sec.android.automotive.drivelink"

    invoke-static {p0, v4}, Lcom/android/mms/util/PackageInfo;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDriveLinkRunning isRunning="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "undelivered_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "failed_download_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isHebrew(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPrayModeEnable(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportDormantMode()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.sec.android.settings.praymodewidget"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v4, "PraymodePreference"

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "isPrayerNotiOn"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Mms/MessagingNotification"

    const-string v5, "this device doesn\'t support pray mode"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isPresidentialCmas(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;IZ)Z
    .locals 5

    const/4 v1, 0x0

    const-string v0, ""

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const v2, 0x7f0c01cd

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "presidentialCMAS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mostRecentNotification.getTitle(context, messageCount) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const v2, 0x7f0c01f1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static isValidThreadId(Landroid/content/Context;J)Z
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVlingoRunning(Landroid/content/Context;)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "svoice_msg_popup_disable"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v10, "Mms/MessagingNotification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVlingoRunning isForeground="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v2, v9, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v10, "activity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v10, "com.vlingo.midas"

    iget-object v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    :cond_3
    :goto_1
    if-eqz v3, :cond_6

    invoke-static {p0, v9}, Lcom/android/mms/transaction/MessagingNotification;->checkVlingoAccepted(Landroid/content/Context;Z)Z

    move-result v1

    :cond_4
    :goto_2
    const-string v10, "Mms/MessagingNotification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isInstalledSvoice="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isInstalledTalkback="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", isAccepted="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    move v8, v9

    goto/16 :goto_0

    :cond_5
    const-string v10, "com.vlingo.client.samsung"

    iget-object v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_4

    invoke-static {p0, v8}, Lcom/android/mms/transaction/MessagingNotification;->checkVlingoAccepted(Landroid/content/Context;Z)Z

    move-result v1

    goto :goto_2
.end method

.method private static loadNotificationPref(Landroid/content/Context;I)V
    .locals 12

    const/4 v11, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v6, "pref_key_enable_statusbar_preview_message"

    const-string v2, "pref_key_enable_preview_message"

    const-string v5, "pref_key_msg_reminder_alert"

    const-string v0, "pref_key_backlight"

    const-string v3, "pref_key_ringtone"

    const-string v4, "pref_key_vibrateWhen_checkbox"

    const-string v1, "pref_key_enable_popup_reply"

    if-eqz p1, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    sget-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    sget-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableLockscreen:Z

    invoke-interface {v7, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableLockscreen:Z

    const-string v8, "pref_key_enable_notifications"

    sget-boolean v9, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    const-string v8, "0"

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/mms/transaction/MessagingNotification;->sReminderCount:Ljava/lang/String;

    const-string v8, "pref_key_emergency_alert_reminder"

    const-string v9, "0"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/mms/transaction/MessagingNotification;->sReminderAlertCount:Ljava/lang/String;

    const-string v8, "pref_key_cmas_vibrateWhen_checkbox"

    sget-boolean v9, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasVibrate:Z

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasVibrate:Z

    const-string v8, "pref_key_cmas_audioWhen_checkbox"

    sget-boolean v9, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasAudio:Z

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasAudio:Z

    sget-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableBacklight:Z

    invoke-interface {v7, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableBacklight:Z

    sget-object v8, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-interface {v7, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDisableVibrateVideo(Landroid/content/Context;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sDisableVibrateForCamera:Z

    const-string v8, "Mms/MessagingNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sDisableVibrateForCamera = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/mms/transaction/MessagingNotification;->sDisableVibrateForCamera:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sDisableVibrateForCamera:Z

    if-eqz v8, :cond_1

    sput-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    sput-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotificationPopup:Z

    :goto_0
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isBlockingModeEnabled(Landroid/content/Context;)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableBlockingMode:Z

    return-void

    :cond_1
    sget-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    sget-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotificationPopup:Z

    invoke-interface {v7, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    sput-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotificationPopup:Z

    goto :goto_0
.end method

.method private static makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;IZ)Ljava/lang/StringBuffer;
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_2

    if-ne v4, v8, :cond_3

    :cond_2
    const-string v5, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeReadOutNewMessageString ringerMode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_message_notification"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-ne v2, v8, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isPrioritySender(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f0c0152

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const v1, 0x7f0c0151

    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isMms()Z

    move-result v5

    if-nez v5, :cond_5

    const v1, 0x7f0c0150

    :cond_5
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3, v1}, Lcom/android/mms/util/UIUtils;->addBlankForTTS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuffer;I)V

    goto :goto_0
.end method

.method public static nonBlockUpdateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$8;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$8;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static nonBlockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V
    .locals 9

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "nonBlockingUpdateMessageIndicator()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$4;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification$4;-><init>(Landroid/content/Context;JZJI)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 2

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "nonBlockingUpdateNewMessageIndicator()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$3;-><init>(Landroid/content/Context;Landroid/net/Uri;ZI)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v1, -0x2

    const/4 v3, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x6

    move-object v0, p0

    move-wide v4, v1

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V

    return-void
.end method

.method public static nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$5;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$5;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static notificationVibrate(Landroid/content/Context;Landroid/app/Notification;ZZ)Z
    .locals 9

    const/4 v6, 0x0

    const/16 v8, 0x11

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isPrayModeEnable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v5, "Mms/MessagingNotification"

    const-string v7, "notificationVibrate : isPrayModeEnable = true"

    invoke-static {v5, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v6

    :cond_0
    const/4 v2, 0x0

    const-string v7, "audio"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    if-ne v7, v5, :cond_4

    move v3, v5

    :cond_1
    :goto_1
    if-nez p2, :cond_f

    const-string v6, "vibrator"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SystemVibrator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    if-eqz v6, :cond_3

    if-nez p3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnCall()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnChatonCall()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_2
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "MessagingNotification vibrate: Block this in SPR On Alert on Call State"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    move v6, v2

    goto :goto_0

    :cond_4
    move v3, v6

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnVoLTECall()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v5, "Mms/MessagingNotification"

    const-string v6, "message notification pass vibrate, because alert during VoLTE call is off"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "ril.domesticOtaStart"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v5, "Mms/MessagingNotification"

    const-string v6, "MessagingNotification vibrate: false, during OTA"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isCurrentUserOwner()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v5, "Mms/MessagingNotification"

    const-string v6, "MessagingNotification pass vibrate: because alert during multi user is not owner and not knox"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v6, "Mms/MessagingNotification"

    const-string v7, "MessagingNotification vibrate: true"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-ne v6, v5, :cond_9

    const/4 v2, 0x1

    :cond_9
    invoke-virtual {v4, v8}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "alertoncall_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnCall()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnChatonCall()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "MessagingNotification pass vibrate: Block this in SPR On Alert on Call State"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVoLTE()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnVoLTECall()Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v0, :cond_d

    const-string v5, "Mms/MessagingNotification"

    const-string v6, "MessagingNotification pass vibrate: because alert during VoLTE call is off"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isCurrentUserOwner()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, "Mms/MessagingNotification"

    const-string v6, "MessagingNotification pass vibrate: because alert during multi user is not owner and not knox"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "MessagingNotification vibrate: true"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    goto/16 :goto_2

    :cond_f
    if-eqz v3, :cond_3

    if-nez p2, :cond_3

    if-eqz p1, :cond_3

    const-string v5, "Mms/MessagingNotification"

    const-string v6, "vibrate: true"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p1, Landroid/app/Notification;->defaults:I

    iput v8, p1, Landroid/app/Notification;->haptic:I

    goto/16 :goto_2
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZI)V

    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;JI)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZI)V

    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZI)V
    .locals 15

    const-string v11, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyFailed(),isDownload="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",threadId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",noisy="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v0, p5

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->loadNotificationPref(Landroid/content/Context;I)V

    sget-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-nez v11, :cond_0

    const-string v11, "Mms/MessagingNotification"

    const-string v12, "NOTIFICATION_ENABLED - false"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v11, 0x2

    new-array v5, v11, [J

    fill-array-data v5, :array_0

    invoke-static {p0, v5}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v10

    const-string v11, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyFailed(),totalFailedCount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v10, :cond_1

    if-nez p1, :cond_1

    const/16 v11, 0x315

    invoke-static {p0, v11}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const/4 v11, 0x1

    aget-wide v11, v5, v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_2

    if-eqz p1, :cond_4

    :cond_2
    const/4 v2, 0x1

    :goto_1
    const-string v11, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyFailed(),allFailedInSameThread="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-class v11, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v4, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    const/4 v11, 0x1

    if-le v10, v11, :cond_5

    const v11, 0x7f0c00b3

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v11, 0x7f0c00b4

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_2
    if-eqz v2, :cond_8

    if-eqz p1, :cond_7

    const-string v11, "failed_download_flag"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_3
    const-string v11, "thread_id"

    move-wide/from16 v0, p2

    invoke-virtual {v4, v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_4
    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    const-string v11, "isFailedNoti"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v11, 0x0

    const/high16 v12, 0x800

    invoke-static {p0, v11, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    const v11, 0x7f020302

    iput v11, v6, Landroid/app/Notification;->icon:I

    iput-object v9, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v6, p0, v9, v3, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v11, 0x2

    iput v11, v6, Landroid/app/Notification;->priority:I

    if-eqz p4, :cond_3

    const/4 v11, 0x0

    move/from16 v0, p5

    invoke-static {p0, v6, v11, v0}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;I)V

    :cond_3
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    if-eqz p1, :cond_9

    const/16 v11, 0x213

    invoke-virtual {v7, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_5
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    if-eqz p1, :cond_6

    const v11, 0x7f0c00c7

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_6
    const v11, 0x7f0c00c9

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    const v11, 0x7f0c00c8

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    aget-wide p2, v5, v11

    const-string v11, "undelivered_flag"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    :cond_8
    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_9
    const/16 v11, 0x315

    invoke-virtual {v7, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_5

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static notifyInConversation(Landroid/content/Context;JJILjava/util/SortedSet;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockingUpdateNewMessageIndicator: newMsgThreadId == sCurrentlyDisplayedThreadId so NOT showing notification, but playing soft sound. threadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p3

    move v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->addMsgNotificationInfos(Landroid/content/Context;JILjava/util/SortedSet;Ljava/util/Set;)V

    invoke-static/range {p3 .. p6}, Lcom/android/mms/transaction/MessagingNotification;->findMostRecentNotification(JILjava/util/SortedSet;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    sget-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isPrayModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p5, p3, p4, v0}, Lcom/android/mms/accessory/WatchRelay;->sendReceivedMsgIntent(Landroid/content/Context;IJLjava/lang/String;)V

    invoke-static {p0, p5, p3, p4}, Lcom/android/mms/util/TelephonyDBUtils;->isReadMsg(Landroid/content/Context;IJ)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Mms/MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isReadMsg() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v0, p3

    invoke-static {p0, p5, v0}, Lcom/android/mms/accessory/WatchRelay;->sendReadMsgIntent(Landroid/content/Context;II)V

    :cond_2
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAlertInEcbmMode()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "true"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    :cond_3
    sget-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->sEnableBlockingMode:Z

    if-nez v0, :cond_0

    if-nez v8, :cond_0

    const/4 v6, 0x0

    if-eqz v9, :cond_4

    const/4 v0, 0x1

    invoke-virtual {v9, p0, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    :cond_4
    if-nez v6, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->playInConversationNotificationSound(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, p5, v9}, Lcom/android/mms/transaction/MessagingNotification;->startMessageAlertService(Landroid/content/Context;ILcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getRingtone()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZI)V

    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;I)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, v1

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZI)V

    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZI)V

    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;ZI)V
    .locals 6

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZI)V

    return-void
.end method

.method private static playCmasTone(Landroid/content/Context;)V
    .locals 11

    const/4 v10, 0x7

    const/4 v9, 0x6

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-eq v5, v9, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-ne v5, v10, :cond_1

    :cond_0
    const-string v4, "android.resource://com.android.mms/raw/cmas_ringtone_ltn"

    :goto_0
    if-nez v4, :cond_3

    const-string v5, "Mms/MessagingNotification"

    const-string v6, "Ringtone str not found"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const-string v4, "android.resource://com.android.mms/raw/cmas_ringtone_reminder"

    goto :goto_0

    :cond_2
    const-string v4, "android.resource://com.android.mms/raw/cmas_ringtone"

    goto :goto_0

    :cond_3
    :try_start_0
    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->sMediaPlayerThreadLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->releaseMediaPlayer()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-eq v5, v9, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-ne v5, v10, :cond_6

    :cond_4
    sget v5, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    if-ltz v5, :cond_6

    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_5

    const/4 v5, 0x3

    sget v7, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v7, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_5
    const/4 v5, -0x1

    sput v5, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    :cond_6
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_9

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-eq v5, v9, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-ne v5, v10, :cond_8

    :cond_7
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_8

    sget-boolean v5, Lcom/android/mms/ui/MessageUtils;->mIsHeadsetPlugged:Z

    if-eqz v5, :cond_a

    const/16 v1, 0x9

    :goto_2
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    sput v5, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    const/4 v5, 0x3

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v1, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_8
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    const-string v5, "Mms/MessagingNotification"

    const-string v7, "Am now in playing"

    invoke-static {v5, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    monitor-exit v6

    goto/16 :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    const-string v5, "Mms/MessagingNotification"

    const-string v6, "Exception in tree click"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x3

    :try_start_3
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    goto :goto_2
.end method

.method private static playInConversationNotificationSound(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x5

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isInVoLTECall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnCall()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isOnChatonCall()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    invoke-virtual {v6, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v0, 0x0

    invoke-static {p0, v0, v3, v3}, Lcom/android/mms/transaction/MessagingNotification;->notificationVibrate(Landroid/content/Context;Landroid/app/Notification;ZZ)Z

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/mms/transaction/NotificationPlayer;

    const-string v1, "Mms:app"

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationPlayer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    :goto_1
    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/transaction/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZIF)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-virtual {v0}, Lcom/android/mms/transaction/NotificationPlayer;->stop()V

    goto :goto_1

    :cond_4
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "playInConversationNotificationSound : volume is 0.0f"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static playToneViaHeadset(Landroid/content/Context;)V
    .locals 5

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playToneViaHeadset(), cmasHeadsetUri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->releaseMediaPlayer()V

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->sRingtoneStr:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playToneViaHeadset() caught Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static releaseMediaPlayer()V
    .locals 1

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public static setBadge(Landroid/content/Context;I)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationComposer"

    invoke-static {v0, v2, v3, p1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBadgeCount(), count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Mms/MessagingNotification"

    const-string v3, "BadgeProvider wasn\'t installed"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Mms/MessagingNotification"

    const-string v3, "updateAllHistoryAsRead() caught SQLiteDiskIOException while setting badge count, e"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setCmasAlert(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 14

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLCDOn()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "power"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    const v11, 0x1000001a

    const-string v12, "New message notification LCD on"

    invoke-virtual {v6, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    const-wide/16 v11, 0x2af8

    invoke-virtual {v10, v11, v12}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    const-string v11, "audio"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v11, 0x0

    iput-object v11, p1, Landroid/app/Notification;->vibrate:[J

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x5

    if-ne v11, v12, :cond_1

    const/4 v0, 0x1

    :cond_1
    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->cancelCmasVibrator()V

    :cond_2
    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    if-nez v11, :cond_3

    const-string v11, "vibrator"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Vibrator;

    sput-object v11, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6

    sget-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    sget-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->sEnableVibrate:Z

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_7

    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    const/16 v12, 0xc

    new-array v12, v12, [J

    fill-array-data v12, :array_0

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_4
    :goto_1
    const-string v7, "android.resource://com.android.mms/raw/cmas_ringtone"

    sget-boolean v11, Lcom/android/mms/ui/MessageUtils;->mIsHeadsetPlugged:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_10

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_10

    const/4 v11, 0x0

    iput-object v11, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->playToneViaHeadset(Landroid/content/Context;)V

    :goto_2
    return-void

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    :cond_6
    sget-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasVibrate:Z

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v9

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "vibrate_in_silent"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_8

    if-nez v3, :cond_9

    :cond_8
    if-nez v2, :cond_4

    const/4 v11, 0x1

    if-ne v9, v11, :cond_4

    :cond_9
    const/16 v11, 0xc

    new-array v11, v11, [J

    fill-array-data v11, :array_1

    iput-object v11, p1, Landroid/app/Notification;->vibrate:[J

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    :cond_c
    if-eqz v0, :cond_d

    if-eqz v5, :cond_d

    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    const/16 v12, 0xc

    new-array v12, v12, [J

    fill-array-data v12, :array_2

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_1

    :cond_d
    if-eqz v5, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_f

    :cond_e
    sget-object v8, Lcom/android/mms/transaction/MessagingNotification;->sCmasVibrator:Landroid/os/Vibrator;

    check-cast v8, Landroid/os/SystemVibrator;

    const/16 v11, 0xc

    new-array v11, v11, [J

    fill-array-data v11, :array_3

    const/4 v12, 0x0

    invoke-virtual {v8}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v13

    invoke-virtual {v8, v11, v12, v13}, Landroid/os/SystemVibrator;->vibrate([JII)V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v5, :cond_4

    const/16 v11, 0xc

    new-array v11, v11, [J

    fill-array-data v11, :array_4

    iput-object v11, p1, Landroid/app/Notification;->vibrate:[J

    goto/16 :goto_1

    :cond_10
    if-eqz v0, :cond_12

    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableCmasAudio:Z

    if-eqz v4, :cond_11

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->playCmasTone(Landroid/content/Context;)V

    :cond_11
    const/4 v11, 0x0

    iput-object v11, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_2

    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x6

    if-eq v11, v12, :cond_13

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_14

    :cond_13
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->playCmasTone(Landroid/content/Context;)V

    goto/16 :goto_2

    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_15

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->playCmasTone(Landroid/content/Context;)V

    const/4 v11, 0x0

    iput-object v11, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_2

    :cond_15
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_16

    const/4 v11, 0x0

    :goto_5
    iput-object v11, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_2

    :cond_16
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_5

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static setCmasNotiIcon(Landroid/content/Context;ZLcom/android/mms/transaction/MessagingNotification$NotificationInfo;)I
    .locals 5

    const/4 v4, 0x4

    invoke-virtual {p2, p0, p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v4, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "President"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const v1, 0x7f020039

    :goto_0
    return v1

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    if-ne v2, v4, :cond_3

    const v1, 0x7f020300

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    const v1, 0x7f0202fe

    goto :goto_0

    :cond_4
    const v1, 0x7f0202fd

    goto :goto_0
.end method

.method private static setCmasReminder(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V
    .locals 15

    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v8, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/CmasAlarmReceiver;

    invoke-direct {v8, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "threadId"

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J

    move-result-wide v11

    invoke-virtual {v8, v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "msgId"

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v11

    invoke-virtual {v8, v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Mms/MessagingNotification"

    const-string v11, "START TMO Reminder"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v1

    const/4 v11, 0x2

    if-lt v1, v11, :cond_1

    const-string v1, "Mms/MessagingNotification"

    const-string v11, "START TMO Reminder"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "Mms/MessagingNotification"

    const-string v11, "START TMO Reminder"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v10

    add-int/lit8 v1, v10, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v9, v1, 0x1

    const-string v1, "TMOCMAS"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v11, 0x4000

    invoke-static {p0, v1, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v1, "Mms/MessagingNotification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "next interval = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    mul-int/lit8 v13, v9, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-virtual {v0, v1, v11, v12, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sReminderAlertCount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    const-string v1, "Mms/MessagingNotification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mIsOnce = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v7, v1, :cond_4

    sget-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    if-nez v1, :cond_3

    const-string v1, "MessagingNotification"

    const-string v11, "this is not mIsOnceCMAS"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ONCECMAS"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    const/4 v1, 0x0

    const/high16 v11, 0x4000

    invoke-static {p0, v1, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/32 v13, 0x1d4c0

    add-long/2addr v11, v13

    invoke-virtual {v0, v1, v11, v12, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_3
    :goto_1
    const-string v1, "Mms/MessagingNotification"

    const-string v11, "Suman Test of notification.bRepeat"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "Mms/MessagingNotification"

    const-string v11, "every 2 sec"

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/high16 v11, 0x800

    invoke-static {p0, v1, v8, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    mul-int/lit8 v1, v7, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v13, v1

    add-long v2, v11, v13

    mul-int/lit8 v1, v7, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    const-string v1, "Mms/MessagingNotification"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "startTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public static setCurrentlyDisplayedThreadId(J)V
    .locals 2

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-wide p0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setDisableVibrateVideo(Landroid/content/Context;Z)V
    .locals 4

    sput-boolean p1, Lcom/android/mms/transaction/MessagingNotification;->sDisableVibrateForCamera:Z

    const-string v2, "disable_vibrate_recording"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "disable_vibrate"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static setFlashNotification(Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "Mms/MessagingNotification"

    const-string v5, "setFlashNotification()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "flash_notification"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "torch_light"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    :goto_1
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isBlockingModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isPrayModeEnable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    invoke-direct {v3, p0}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/mms/transaction/MessagingNotification;->mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    invoke-virtual {v3, v2}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->setDaemon(Z)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    invoke-virtual {v2}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->start()V

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private static setNotificationAvatar(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, p0, p4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v3, p0, v8}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    if-eqz v4, :cond_3

    sget-boolean v8, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-eqz v8, :cond_3

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v8

    if-eqz v8, :cond_1

    sget-boolean v8, Lcom/android/mms/ui/SecretModeHandler;->mIsSecretMode:Z

    if-eqz v8, :cond_1

    iget-wide v8, p1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v8, v9}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020073

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v5, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_3

    const v8, 0x1050006

    invoke-virtual {p3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v8, 0x1050005

    invoke-virtual {p3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v8, v6, :cond_2

    const/4 v8, 0x1

    invoke-static {v0, v7, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_3
    return-object v0
.end method

.method private static showMultipleThreadNotificationLockscreen(Landroid/content/Context;Ljava/lang/String;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;II)V
    .locals 4

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Mms/MessagingNotification"

    const-string v2, "showMultipleThreadNotificationLockscreen() - Current user is not owner"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.ui.MessagesLockscreen"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "thread_count"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "message_count"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "thread_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "address"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "date"

    invoke-virtual {p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "isMms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "simSlot"

    invoke-virtual {p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getSimSlot()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static showNotificationDialog(Landroid/content/Context;JIJLjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Mms/MessagingNotification"

    const-string v2, "showNotificationDialog() - Current user is not owner"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/replyservice/QuickReplyService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "message_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "message_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "message_address"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static showSingleNotificationLockscreen(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V
    .locals 4

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isCurrentUserOwner()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Mms/MessagingNotification"

    const-string v2, "showSingleNotificationLockscreen() - Current user is not owner"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.ui.MessagesLockscreen"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "thread_count"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "message_count"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v1, "thread_id"

    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "address"

    invoke-virtual {p1, p0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "date"

    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "body"

    invoke-virtual {p1, p0, p2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isMms"

    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isMms()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "subject"

    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "attachment_count"

    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAttachmentCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "simSlot"

    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getSimSlot()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static startMessageAlertService(Landroid/content/Context;ILcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isCurrentUserOwner()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isKnoxMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Mms/MessagingNotification"

    const-string v4, "startMessageAlertService() - Current user is not owner"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p2, v5, v5}, Lcom/android/mms/transaction/MessagingNotification;->makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;IZ)Ljava/lang/StringBuffer;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TTS_INFO"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    const-string v3, "IsCMASTyep"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, p0, v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, "SenderRingtonePath"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getRingtone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    const-string v3, "SenderRingtonePath"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static stopNotification()V
    .locals 2

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    if-eqz v0, :cond_0

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "stopNotification sNotiPlay is not null so play stop!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-virtual {v0}, Lcom/android/mms/transaction/NotificationPlayer;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotiPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    :cond_0
    return-void
.end method

.method private static updateAlertNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            "I)V"
        }
    .end annotation

    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAlertNotification(),isNew="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", simSlot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-eqz v4, :cond_8

    const/16 v4, 0x41c

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    :cond_2
    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->size()I

    move-result v7

    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p4

    iget-wide v5, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    if-eqz p1, :cond_3

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTicker(Landroid/content/Context;IZ)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/16 v24, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    move/from16 v0, p2

    if-le v0, v4, :cond_a

    new-instance v18, Landroid/content/Intent;

    invoke-direct/range {v18 .. v18}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v18

    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.ui.ConversationComposer"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x7f0c00b2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    :goto_2
    const/16 v20, 0x0

    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Temp : mostRecentNotification.getAddress() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->setCmasNotiIcon(Landroid/content/Context;ZLcom/android/mms/transaction/MessagingNotification$NotificationInfo;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/NotificationManager;

    const/4 v4, 0x0

    const/high16 v5, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasNotiDateDescription()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    new-instance v16, Ljava/lang/StringBuffer;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, " ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "android.message"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    :goto_3
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    if-eqz v4, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->cancelCMASAlarm(Landroid/content/Context;)V

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCmasReminder(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V

    const/16 v17, 0x0

    or-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getDeleteIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v4, 0x1

    if-ne v7, v4, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1, v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->createSingleNotification(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v21

    :goto_4
    if-eqz p1, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->setCmasAlert(Landroid/content/Context;Landroid/app/Notification;I)V

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "GATE"

    const-string v5, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New message, updateAlertNotification() sound path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_6

    const/4 v4, 0x1

    move-object/from16 v0, v21

    iput v4, v0, Landroid/app/Notification;->commonValue:I

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_f

    const/4 v4, -0x1

    invoke-static {v4}, Lcom/android/mms/transaction/CmasAlarmReceiver;->setReminderCount(I)V

    :cond_7
    :goto_6
    move-object/from16 v0, v21

    iput v7, v0, Landroid/app/Notification;->missedCount:I

    const/4 v4, 0x2

    move-object/from16 v0, v21

    iput v4, v0, Landroid/app/Notification;->priority:I

    const/16 v4, 0x41c

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    sput-object v21, Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->foregroundPresidentialAlert(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Z)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v4

    if-gtz v4, :cond_9

    const/16 v4, 0x41c

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_9
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->size()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p1

    invoke-static {v0, v1, v4, v2}, Lcom/android/mms/transaction/MessagingNotification;->isPresidentialCmas(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x41c

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move/from16 v3, p1

    invoke-static {v0, v1, v8, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->setNotificationAvatar(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v18

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v5, "android.message"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    :cond_c
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_d

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-static/range {v4 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->createUniqueMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v21

    goto/16 :goto_4

    :cond_d
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move v13, v7

    move-object v14, v8

    move/from16 v15, p1

    invoke-static/range {v10 .. v15}, Lcom/android/mms/transaction/MessagingNotification;->createMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Z)Landroid/app/Notification;

    move-result-object v21

    const-string v4, "Mms/MessagingNotification"

    const-string v5, "updateAlertNotification: multi messages, showing inboxStyle notification"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    const/16 v4, 0x41c

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAlertNotification() sound path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/mms/transaction/CmasAlarmReceiver;->setReminderCount(I)V

    goto/16 :goto_6
.end method

.method private static updateAllHistoryAsRead(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "(logtype=? OR logtype=?) AND new=1"

    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "200"

    aput-object v5, v3, v7

    const/4 v5, 0x1

    const-string v6, "300"

    aput-object v6, v3, v5

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "new"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateAllHistoryAsRead()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateAllHistoryAsRead() caught SQLiteDiskIOException, e"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateAllHistoryAsRead() Catch a SQLiteException: "

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateAllHistoryAsRead() Catch a IllegalStateException: "

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 23

    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->isContextProviderForAlways(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v16, 0x0

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "msg_box"

    aput-object v4, v5, v2

    const/4 v2, 0x1

    const-string v4, "sub"

    aput-object v4, v5, v2

    const/4 v2, 0x2

    const-string v4, "sub_cs"

    aput-object v4, v5, v2

    const/4 v2, 0x3

    const-string v4, "sim_slot"

    aput-object v4, v5, v2

    if-nez p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    if-nez v13, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v14

    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateAlwaysHistoryForMms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v20, v0

    const-wide/16 v6, 0x1

    cmp-long v2, v20, v6

    if-nez v2, :cond_6

    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object v11, v10

    array-length v0, v11

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_11

    aget-object v9, v11, v15

    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/MmsApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForMms(),isSpam="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " address ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v16, :cond_8

    const/4 v2, 0x0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_6
    const-wide/16 v6, 0x2

    cmp-long v2, v20, v6

    if-nez v2, :cond_7

    :try_start_3
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_8
    :try_start_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "contact_address"

    const-string v4, "-1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {p0 .. p1}, Lcom/android/mms/transaction/MessagingNotification;->getSlideshowModel(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/mms/transaction/MessagingNotification;->getMmsText(Lcom/android/mms/model/SlideshowModel;)Ljava/lang/String;

    move-result-object v12

    if-eqz v19, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "subject"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    const-string v2, "message_body"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v2, "custom_id"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "type"

    const-wide/16 v6, 0x1

    cmp-long v2, v20, v6

    if-nez v2, :cond_10

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAlwaysHistoryForMms(),len="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_b
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const v2, 0x7f0c0138

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_c
    const-string v2, "contact_address"

    const-string v4, "-1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v14

    :try_start_5
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateAlwaysHistoryForMms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v13, :cond_d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_d
    :goto_5
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_e
    :try_start_6
    const-string v2, "contact_address"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    if-eqz v13, :cond_f

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_f
    throw v2

    :cond_10
    const/4 v2, 0x2

    goto :goto_4

    :cond_11
    if-eqz v13, :cond_d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto :goto_5
.end method

.method public static updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 14

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isContextProviderForAlways(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "address"

    aput-object v2, v3, v0

    const/4 v0, 0x1

    const-string v2, "type"

    aput-object v2, v3, v0

    const/4 v0, 0x2

    const-string v2, "body"

    aput-object v2, v3, v0

    const/4 v0, 0x3

    const-string v2, "sim_slot"

    aput-object v2, v3, v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    :try_start_0
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    if-nez v9, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v0, "Mms/MessagingNotification"

    const-string v2, "updateAlwaysHistoryForSms() Catch a IllegalStateException: "

    invoke-static {v0, v2, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v11, v0

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "app_id"

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "contact_address"

    const-string v2, "-1"

    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "message_body"

    invoke-virtual {v13, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "custom_id"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    const-wide/16 v4, 0x1

    cmp-long v0, v11, v4

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const-string v0, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAlwaysHistoryForSms(),len="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    :try_start_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const v0, 0x7f0c0138

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const-string v0, "contact_address"

    const-string v2, "-1"

    invoke-virtual {v13, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    :try_start_4
    const-string v0, "Mms/MessagingNotification"

    const-string v2, "updateAlwaysHistoryForSms() Catch a IllegalStateException: "

    invoke-static {v0, v2, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v0, 0x0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_9
    :try_start_5
    const-string v0, "contact_address"

    invoke-virtual {v13, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_a
    throw v0

    :cond_b
    const/4 v0, 0x2

    goto :goto_2
.end method

.method public static updateBadgeforNonDefault(Landroid/content/Context;JZJI)V
    .locals 11

    const-string v0, "Mms/MessagingNotification"

    const-string v3, "updateBadgeforNonDefault"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->loadNotificationPref(Landroid/content/Context;I)V

    new-instance v2, Ljava/util/TreeSet;

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v2, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/HashSet;

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    sput v0, Lcom/android/mms/transaction/MessagingNotification;->sIncreaseInt:I

    const-wide/16 v9, 0x0

    const-wide/16 v3, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    invoke-static {p0, v1, v2, v9, v10}, Lcom/android/mms/transaction/MessagingNotification;->addWpmNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v3, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    :goto_0
    new-instance v6, Ljava/util/TreeSet;

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v6, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    new-instance v7, Ljava/util/HashSet;

    const/4 v0, 0x4

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {p0, v7, v6, v9, v10}, Lcom/android/mms/transaction/MessagingNotification;->addAlertNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;J)V

    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    move-result v0

    invoke-interface {v6}, Ljava/util/SortedSet;->size()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    return-void

    :cond_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;ZJ)V

    goto :goto_0
.end method

.method public static updateCMASRepeatNotifications(Landroid/content/Context;JJ)V
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V

    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    return-void
.end method

.method public static updateClass0SoundnVibrate(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateClass0SoundnVibrate(Landroid/content/Context;I)V

    return-void
.end method

.method public static updateClass0SoundnVibrate(Landroid/content/Context;I)V
    .locals 3

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->loadNotificationPref(Landroid/content/Context;I)V

    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;I)V

    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->priority:I

    const/16 v2, 0x3e7

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;JI)V
    .locals 2

    sget-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$7;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification$7;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateDownloadFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 33

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v16, 0x0

    const/4 v2, 0x6

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v2

    const/4 v2, 0x1

    const-string v4, "date"

    aput-object v4, v5, v2

    const/4 v2, 0x2

    const-string v4, "msg_box"

    aput-object v4, v5, v2

    const/4 v2, 0x3

    const-string v4, "sub"

    aput-object v4, v5, v2

    const/4 v2, 0x4

    const-string v4, "sub_cs"

    aput-object v4, v5, v2

    const/4 v2, 0x5

    const-string v4, "read"

    aput-object v4, v5, v2

    if-nez p1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v13, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    if-nez v13, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v14

    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForMms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    const-wide/16 v20, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v31, 0x3e8

    mul-long v26, v6, v31

    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v28, v0

    const/4 v2, 0x5

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const-wide/16 v6, 0x1

    cmp-long v2, v28, v6

    if-nez v2, :cond_7

    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v10

    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    :cond_6
    const-string v23, "logtype=? AND ( messageid=? OR messageid=?)"

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v2, 0x0

    const-string v4, "200"

    aput-object v4, v24, v2

    const/4 v2, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v24, v2

    const/4 v2, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v24, v2

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v11, v10

    array-length v0, v11

    move/from16 v17, v0

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v15, v0, :cond_14

    aget-object v9, v11, v15

    new-instance v30, Landroid/content/ContentValues;

    invoke-direct/range {v30 .. v30}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForMms(),isSpam="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " address ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v16, :cond_9

    const/4 v2, 0x0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_7
    const-wide/16 v6, 0x2

    cmp-long v2, v28, v6

    if-nez v2, :cond_8

    :try_start_3
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v10

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_9
    :try_start_4
    const-string v2, "date"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "type"

    const-wide/16 v6, 0x1

    cmp-long v2, v28, v6

    if-nez v2, :cond_d

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    invoke-static {v9, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "ci_person_id"

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "ci_phoneNumber"

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getNumberInContactDB()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ci_normalizedNumber"

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/samsung/mms/util/MmsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v9, :cond_c

    const/4 v2, 0x1

    invoke-static {v9, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    const-string v2, "cnap_name"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/util/EcidLookup;->getEcidName(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v2, "messageid"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "m_subject"

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "new"

    if-nez v22, :cond_13

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_MMS_URI:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_d
    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LGU+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "number"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "service_type"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_4

    :catch_1
    move-exception v14

    :try_start_5
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForMms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v2, 0x0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_f
    :try_start_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const v2, 0x7f0c0138

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v14

    :try_start_7
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForMms() Catch a SQLiteException: "

    invoke-static {v2, v4, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v2, 0x0

    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_11
    :try_start_8
    const-string v2, "number"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    if-eqz v13, :cond_12

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_12
    throw v2

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_14
    if-eqz v13, :cond_15

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    const/4 v13, 0x0

    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 25

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v2

    const/4 v2, 0x1

    const-string v4, "date"

    aput-object v4, v5, v2

    const/4 v2, 0x2

    const-string v4, "address"

    aput-object v4, v5, v2

    const/4 v2, 0x3

    const-string v4, "body"

    aput-object v4, v5, v2

    const/4 v2, 0x4

    const-string v4, "type"

    aput-object v4, v5, v2

    const/4 v2, 0x5

    const-string v4, "read"

    aput-object v4, v5, v2

    const/4 v2, 0x6

    const-string v4, "sim_slot"

    aput-object v4, v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    if-nez v12, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v13

    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForSms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v22, v0

    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_6

    :cond_5
    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v9, "Mensaje de Alerta"

    :cond_6
    const/16 v19, 0x0

    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForSms sim : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "logtype=? AND messageid=?"

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/4 v2, 0x0

    const-string v4, "300"

    aput-object v4, v18, v2

    const/4 v2, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v18, v2

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v24, Landroid/content/ContentValues;

    invoke-direct/range {v24 .. v24}, Landroid/content/ContentValues;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getmEnableDoCoMoDeliveryReportFormat()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v9, :cond_9

    const-string v2, "NTT DOCOMO"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/android/mms/transaction/MessagingNotification;->getNewMissedCallSMS(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    invoke-static {v0, v10, v12, v3}, Lcom/android/mms/transaction/MessagingNotification;->insertCallLogDB(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_7
    :goto_1
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v10, :cond_a

    :try_start_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x32

    if-le v2, v4, :cond_a

    const/4 v2, 0x0

    const/16 v4, 0x32

    invoke-virtual {v10, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :cond_a
    const-string v2, "date"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "type"

    const-wide/16 v6, 0x1

    cmp-long v2, v22, v6

    if-nez v2, :cond_e

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    invoke-static {v9, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "ci_person_id"

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "ci_phoneNumber"

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getNumberInContactDB()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ci_normalizedNumber"

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v2, "ecid_enable"

    invoke-static {v2}, Lcom/samsung/mms/util/MmsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v9, :cond_d

    const/4 v2, 0x1

    invoke-static {v9, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    const-string v2, "cnap_name"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/util/EcidLookup;->getEcidName(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v2, "messageid"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "m_content"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "new"

    if-nez v16, :cond_15

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "sim_id"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_SMS_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    if-eqz v9, :cond_7

    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForSms(), len="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    :catch_1
    move-exception v13

    :try_start_4
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForSms() Catch a IllegalStateException: "

    invoke-static {v2, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x2

    goto/16 :goto_2

    :cond_f
    :try_start_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {v9}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "service_type"

    const/16 v4, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v13

    :try_start_6
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "updateHistoryForSms() Catch a SQLiteException: "

    invoke-static {v2, v4, v13}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v2, 0x0

    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_10
    :try_start_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsTransactionCustomize4Korea()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LGU+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static/range {p0 .. p0}, Lcom/android/mms/util/TelephonyUtils;->isRoaming(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "number"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "service_type"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    if-eqz v12, :cond_11

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const/4 v12, 0x0

    :cond_11
    throw v2

    :cond_12
    :try_start_8
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const v2, 0x7f0c0138

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_13
    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_14
    const-string v2, "number"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3

    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_4
.end method

.method public static updateMMSHistoryAsBlock(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 13

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "logtype=? AND messageid=?"

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "200"

    aput-object v2, v11, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "reject_flag"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_3

    const-string v0, "number"

    invoke-virtual {v12, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v12, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string v0, "Mms/MessagingNotification"

    const-string v2, "updateMMSHistoryAsBlock()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateMmsDataforInternalApp(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;I)Z
    .locals 34

    const-string v3, "Mms/MessagingNotification"

    const-string v4, "updateMmsDataforInternalApp"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    new-array v10, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sub"

    aput-object v4, v10, v3

    const/4 v3, 0x1

    const-string v4, "sub_cs"

    aput-object v4, v10, v3

    const/4 v3, 0x2

    const-string v4, "date"

    aput-object v4, v10, v3

    const/4 v3, 0x3

    const-string v4, "thread_id"

    aput-object v4, v10, v3

    const/4 v3, 0x4

    const-string v4, "ct_l"

    aput-object v4, v10, v3

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ct_l"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "locked"

    aput-object v4, v6, v3

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    const/16 v27, 0x0

    const/16 v26, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    if-eqz v27, :cond_2

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    :cond_2
    if-eqz v27, :cond_3

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    :cond_3
    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, v31

    move-object/from16 v9, p1

    :try_start_1
    invoke-static/range {v7 .. v13}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v27

    if-nez v27, :cond_6

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v28

    :try_start_2
    const-string v3, "Mms/MessagingNotification"

    const-string v4, "updateMmsDataforInternalApp() Catch a IllegalStateException: "

    move-object/from16 v0, v28

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v27, :cond_3

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v27, :cond_4

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    :cond_4
    throw v3

    :catch_1
    move-exception v28

    const-string v3, "Mms/MessagingNotification"

    const-string v4, "updateMmsDataforInternalApp() Catch a IllegalStateException: "

    move-object/from16 v0, v28

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v27, :cond_5

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    :try_start_3
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    goto :goto_0

    :cond_7
    :try_start_4
    new-instance v33, Landroid/content/Intent;

    invoke-direct/range {v33 .. v33}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {p0 .. p1}, Lcom/android/mms/transaction/MessagingNotification;->getSlideshowModel(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/mms/transaction/MessagingNotification;->getMmsText(Lcom/android/mms/model/SlideshowModel;)Ljava/lang/String;

    move-result-object v14

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    const/4 v3, 0x2

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    mul-long v15, v3, v7

    if-nez v26, :cond_8

    const/4 v3, 0x4

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    :cond_8
    if-nez p3, :cond_b

    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v23

    :goto_2
    move-object/from16 v24, v23

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v30, v0

    const/16 v29, 0x0

    :goto_3
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_12

    aget-object v22, v24, v29

    const-string v4, "box_type"

    if-nez p3, :cond_d

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v22, "-1"

    :cond_9
    :goto_5
    const-string v3, "msg_address"

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_a

    const-string v3, "msg_body"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    const-string v3, "date"

    move-object/from16 v0, v33

    move-wide v1, v15

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "app_id"

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/MmsApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "custom_id"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "msg_type"

    const-string v4, "mms"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "msgid"

    move-object/from16 v0, v33

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "msg_subject"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "content_location"

    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMmsDataforInternalApp(), len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_10

    const-string v3, "com.android.mms.RECEIVED_MSG"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_6
    const-string v3, "com.sec.mms.permission.RECEIVE_MESSAGES_INFORMATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    if-nez p3, :cond_11

    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, v22

    invoke-static {v0, v3}, Lcom/android/mms/glance/GlanceUtils;->updateCount(Ljava/lang/String;I)Z

    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    :cond_b
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_c

    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v23

    goto/16 :goto_2

    :cond_c
    const/4 v3, 0x0

    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v3, 0x2

    goto/16 :goto_4

    :cond_e
    :try_start_5
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    const v3, 0x7f0c0138

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_f
    const-string v22, "-1"

    goto/16 :goto_5

    :cond_10
    const-string v3, "com.android.mms.SENT_MSG"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_2
    move-exception v28

    :try_start_6
    const-string v3, "Mms/MessagingNotification"

    const-string v4, "updateMmsDataforInternalApp() Catch a IllegalStateException: "

    move-object/from16 v0, v28

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v3, 0x0

    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    goto/16 :goto_0

    :cond_11
    const/4 v3, 0x1

    goto :goto_7

    :cond_12
    :try_start_7
    move-object/from16 v0, v23

    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    if-nez p3, :cond_15

    const/4 v3, 0x3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v25, 0x0

    if-eqz v32, :cond_13

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/model/SlideshowModel;->getAttachmentCount()I

    move-result v25

    :cond_13
    const/4 v3, 0x1

    move/from16 v0, v25

    if-le v0, v3, :cond_17

    const v3, 0x7f0c019a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    :cond_14
    :goto_8
    const/4 v3, 0x0

    aget-object v12, v23, v3

    const/16 v19, 0x0

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v21}, Lcom/android/mms/prioritysender/SmartAssistant;->postCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJ)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_15
    if-eqz v27, :cond_16

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    :cond_16
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_17
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_14

    const v3, 0x7f0c0447

    :try_start_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3

    move-result-object v14

    goto :goto_8

    :catch_3
    move-exception v28

    :try_start_9
    const-string v3, "Mms/MessagingNotification"

    const-string v4, "updateMmsDataforInternalApp() Catch a SQLiteException: "

    move-object/from16 v0, v28

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const/4 v3, 0x0

    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    if-eqz v27, :cond_18

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    const/16 v27, 0x0

    :cond_18
    throw v3
.end method

.method private updateMsgInsertedState(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    invoke-static/range {p1 .. p1}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms/MessagingNotification"

    const-string v2, "Message app is default app so do not anything just return"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msgUri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v1, "boxType"

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "m_type"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    new-instance v7, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$1;

    move-object v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Lcom/android/mms/transaction/MessagingNotification;Ljava/lang/String;ILandroid/content/Context;I)V

    const-string v2, "updateMmsReceivedState"

    invoke-direct {v7, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Mms/MessagingNotification"

    const-string v2, "updateMsgReceivedState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msgUri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    const-string v1, "boxType"

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "m_type"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v12, :cond_1

    const-string v1, "Mms/MessagingNotification"

    const-string v2, "Invalid uri return"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    :cond_2
    const-string v1, "Mms/MessagingNotification"

    const-string v2, "Invalid uri return"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/16 v2, 0x2f

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v14, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/Thread;

    new-instance v7, Lcom/android/mms/transaction/MessagingNotification$2;

    move-object v8, p0

    move-object v9, v3

    move v10, v4

    move-object/from16 v11, p1

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Lcom/android/mms/transaction/MessagingNotification;Ljava/lang/String;ILandroid/content/Context;Landroid/net/Uri;I)V

    const-string v2, "updateMmsReceivedState"

    invoke-direct {v1, v7, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V

    return-void
.end method

.method private static updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            "I)V"
        }
    .end annotation

    const-string v6, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateNotification(),isNew="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", simSlot = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v6, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/android/mms/MmsApp;->getLmsReceivingStatus()Z

    move-result v6

    if-nez v6, :cond_b

    const/16 v6, 0x7b

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSstream()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->AddSstreamItem(Landroid/content/Context;ILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Z)V

    :cond_1
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->size()I

    move-result v15

    new-instance v6, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p4

    iget-wide v12, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    invoke-virtual {v6, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v16

    const-string v36, "pref_key_enable_preview_message"

    if-eqz p5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, "_sim"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v12, p5, 0x1

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    :cond_2
    if-eqz p1, :cond_3

    const v6, 0x7f0c006d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    sget-boolean v6, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v6, :cond_d

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const/16 v38, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x1

    move/from16 v0, p2

    if-le v0, v6, :cond_10

    new-instance v30, Landroid/content/Intent;

    invoke-direct/range {v30 .. v30}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.intent.action.MAIN"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static/range {v30 .. v30}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v30

    const-string v6, "com.android.mms"

    const-string v12, "com.android.mms.ui.ConversationComposer"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v6, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v6, :cond_e

    const/high16 v6, 0x7f0c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v38

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_4
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    const-string v6, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateNotification(),notificationInfo Id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v33

    iget-wide v13, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v33

    iget-wide v12, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v12, v13}, Lcom/android/mms/ui/SecretCacheManager$SecretModeCache;->isSecretMode(J)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "secretThreadId_in_multiThreadNoti"

    move-object/from16 v0, v33

    iget-wide v12, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_5
    :goto_4
    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mPriority:I

    const/16 v12, 0x82

    if-eq v6, v12, :cond_15

    const v6, 0x7f020303

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    const-string v12, "wappush"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x4

    move-object/from16 v0, v30

    invoke-static {v0, v6}, Lcom/android/mms/transaction/MessagingNotification;->SetFolderBox(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v30

    :cond_6
    const-string v6, "null"

    sput-object v6, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    :cond_7
    const/4 v6, 0x0

    const/high16 v12, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v6, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v12, "android.message"

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->sReminderCount:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    const/4 v6, 0x1

    move/from16 v0, v26

    if-le v0, v6, :cond_8

    const-string v6, "MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "every"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "sec"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    new-instance v29, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/transaction/AlarmReceiver;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "threadId"

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J

    move-result-wide v12

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "simSlot"

    move-object/from16 v0, v29

    move/from16 v1, p5

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "msgId"

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgId()J

    move-result-wide v12

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "msgType"

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getMsgType()I

    move-result v12

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v6, 0x800

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    mul-int/lit8 v6, v26, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v0, v6

    move-wide/from16 v18, v0

    add-long v7, v12, v18

    mul-int/lit8 v6, v26, 0x3c

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v9, v6

    const-string v6, "MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startTime = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string v6, "MessagingNotification"

    const-string v12, "Suman Test of notification.bRepeat"

    invoke-static {v6, v12}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v27, 0x0

    or-int/lit8 v27, v27, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getDeleteIntent()Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v12, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v6, 0x1

    if-ne v15, v6, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->createSingleNotification(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v32

    :goto_6
    const-string v6, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/NotificationManager;

    if-eqz p1, :cond_19

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, p5

    invoke-static {v0, v1, v6, v2}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;I)V

    move-object/from16 v0, v32

    iget-object v6, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v6, :cond_9

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "GATE"

    const-string v12, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p4

    iget-wide v12, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    move-object/from16 v0, v32

    iput-wide v12, v0, Landroid/app/Notification;->threadId:J

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    if-nez v6, :cond_18

    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, v32

    iput-object v6, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    const-string v6, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New message, updateNotification() sound path = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v32

    iget-object v13, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportFlashNotification()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->setFlashNotification(Landroid/content/Context;)V

    :cond_a
    :goto_8
    const/4 v6, 0x2

    move-object/from16 v0, v32

    iput v6, v0, Landroid/app/Notification;->priority:I

    move-object/from16 v0, v32

    iput v15, v0, Landroid/app/Notification;->missedCount:I

    const/16 v6, 0x7b

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_b
    const-string v6, "Mms/MessagingNotification"

    const-string v12, "getLmsReceivingStatus true, so skip cancelNotification"

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v6, "Mms/MessagingNotification"

    const-string v12, "updateNotification: notifications turned off in prefs"

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTicker(Landroid/content/Context;IZ)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_2

    :cond_e
    const/4 v6, 0x1

    if-le v15, v6, :cond_f

    const v6, 0x7f0c0387

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_3

    :cond_f
    const v6, 0x7f0c00b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_3

    :cond_10
    sget-boolean v6, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-nez v6, :cond_14

    const/high16 v6, 0x7f0c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v38

    :goto_9
    move-object/from16 v0, p4

    iget v6, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mPriority:I

    const/16 v12, 0x82

    if-eq v6, v12, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    move-object/from16 v3, v37

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->setNotificationAvatar(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;Landroid/app/Notification$Builder;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v17

    :cond_11
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v30

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isPhoneNumberWithPlus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isWap()Z

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->isCb()Z

    move-result v6

    if-nez v6, :cond_13

    sget-boolean v6, Lcom/android/mms/transaction/MessagingNotification;->sEnablePreview:Z

    if-eqz v6, :cond_13

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v12}, Lcom/android/mms/ui/MessageUtils;->makeCallFromNoti(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v25

    const/16 v35, 0x0

    if-eqz v25, :cond_12

    const/4 v6, 0x0

    const/high16 v12, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v6, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v35

    :cond_12
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v24

    const-string v6, "isSipNeeded"

    const/4 v12, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v6, 0x7f02002b

    const v12, 0x7f0c0005

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v6, v12, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const v6, 0x7f0200c1

    const v12, 0x7f0c0091

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x64

    const/high16 v14, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v13, v1, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v12, v13}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFingerprintService()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "address_SecretMode"

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    :cond_14
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->size()I

    move-result v6

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTitle(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_9

    :cond_15
    const v6, 0x7f020306

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_5

    :cond_16
    const/4 v6, 0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_17

    move-object/from16 v12, p0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static/range {v12 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->createUniqueMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v32

    goto/16 :goto_6

    :cond_17
    move-object/from16 v18, p0

    move-object/from16 v19, p3

    move-object/from16 v20, p4

    move/from16 v21, v15

    move-object/from16 v22, v16

    move/from16 v23, p1

    invoke-static/range {v18 .. v23}, Lcom/android/mms/transaction/MessagingNotification;->createMultipleNotification(Landroid/content/Context;Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ILandroid/app/Notification$Builder;Z)Landroid/app/Notification;

    move-result-object v32

    goto/16 :goto_6

    :cond_18
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getContact(Landroid/content/Context;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_7

    :cond_19
    invoke-static {}, Lcom/android/mms/MmsApp;->getLmsReceivingStatus()Z

    move-result v6

    if-nez v6, :cond_1a

    const/16 v6, 0x7b

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopAlertSoundOnCall()V

    const/4 v6, 0x0

    move-object/from16 v0, v32

    iput-object v6, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    const-string v6, "Mms/MessagingNotification"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateNotification() sound path = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v32

    iget-object v13, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1a
    const-string v6, "Mms/MessagingNotification"

    const-string v12, "Skip nm.cancel() bacause of LmsReceivingStatus true"

    invoke-static {v6, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/mms/MmsApp;->setLmsReceivingStatus(Z)V

    goto/16 :goto_8
.end method

.method public static updateNotificatoinAlert(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0138

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0, v2, v3, v6}, Lcom/android/mms/util/UIUtils;->addBlankForTTS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuffer;I)V

    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/transaction/MessagingNotificationAlert;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "TTS_INFO"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    invoke-static {p1, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static updateRepeatNotifications(Landroid/content/Context;JJI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MessagingNotification;->updateRepeatNotifications(Landroid/content/Context;JJII)V

    return-void
.end method

.method public static updateRepeatNotifications(Landroid/content/Context;JJII)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V

    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    return-void
.end method

.method public static updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MessagingNotification;->updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;I)V

    return-void
.end method

.method public static updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;I)V
    .locals 14

    move/from16 v0, p6

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->loadNotificationPref(Landroid/content/Context;I)V

    sget-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sEnableNotification:Z

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v9, Ljava/lang/StringBuffer;

    const/16 v11, 0x64

    invoke-direct {v9, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v11, "Mms/MessagingNotification"

    const-string v12, "updateReportNotification(),type="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ",status="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, ",threadId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    const-string v11, "notification"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    packed-switch p1, :pswitch_data_0

    const-string v8, ""

    goto :goto_0

    :pswitch_0
    const v11, 0x7f0c00a4

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    const v11, 0x7f020301

    iput v11, v6, Landroid/app/Notification;->icon:I

    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v4, ""

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    const/4 v11, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v11}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_2
    const/4 v3, 0x0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u202a"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u202c : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    const/4 v11, 0x0

    const/high16 v12, 0x800

    invoke-static {p0, v11, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v11, 0x378

    invoke-static {p0, v11}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    iput-object v10, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v6, p0, v10, v3, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v11, 0x0

    move/from16 v0, p6

    invoke-static {p0, v6, v11, v0}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/app/Notification;Lcom/android/mms/data/Contact;I)V

    const/4 v11, 0x2

    iput v11, v6, Landroid/app/Notification;->priority:I

    const/16 v11, 0x378

    invoke-virtual {v5, v11, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/mms/transaction/MessagingNotification;->sExistReportNotification:Z

    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1, v10, v3}, Lcom/android/mms/accessory/WatchRelay;->sendReceivedMsgIntentForDDM(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    const v11, 0x7f0c00a4

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    const v11, 0x7f020301

    iput v11, v6, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    :pswitch_2
    const v11, 0x7f0c00a5

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v0, p2

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    const v11, 0x7f020305

    iput v11, v6, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static updateSMSHistoryAsBlock(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 13

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "logtype=? AND messageid=?"

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "300"

    aput-object v2, v11, v0

    const/4 v0, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v0

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "reject_flag"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v12, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string v0, "Mms/MessagingNotification"

    const-string v2, "updateSMSHistoryAsBlock()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateSendFailedNotification(Landroid/content/Context;)V
    .locals 2

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateSendFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x315

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 5

    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/16 v1, 0x315

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static updateSmsDataforInternalApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 21

    const-string v3, "Mms/MessagingNotification"

    const-string v5, "updateSmsDataforInternalApp"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "date"

    aput-object v5, v6, v3

    const/4 v3, 0x1

    const-string v5, "thread_id"

    aput-object v5, v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v18, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    :try_start_0
    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    if-nez v18, :cond_2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v19

    const-string v3, "Mms/MessagingNotification"

    const-string v5, "updateHistoryForSms() Catch a IllegalStateException: "

    move-object/from16 v0, v19

    invoke-static {v3, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v5, 0x6

    if-eq v3, v5, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_5

    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/android/mms/ui/MessageUtils;->isCmasPrefix(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string p2, "Mensaje de Alerta"

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string p2, "-1"

    :cond_6
    :goto_1
    const-string v3, "date"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "app_id"

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/MmsApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "box_type"

    if-nez p4, :cond_d

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "msg_address"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "custom_id"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "msg_type"

    const-string v5, "sms"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "msgid"

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "msg_body"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_7

    const-string v3, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSmsDataforInternalApp(), len="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-nez p4, :cond_e

    const-string v3, "com.android.mms.RECEIVED_MSG"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const-string v3, "com.sec.mms.permission.RECEIVE_MESSAGES_INFORMATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/android/mms/glance/GlanceUtils;->getGlanceDbHelper(Landroid/content/Context;)Lcom/android/mms/glance/GlanceDBHelper;

    if-nez p4, :cond_f

    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/mms/glance/GlanceUtils;->updateCount(Ljava/lang/String;I)Z

    :cond_8
    if-nez p4, :cond_9

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const/4 v9, 0x0

    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    invoke-static/range {v7 .. v17}, Lcom/android/mms/prioritysender/SmartAssistant;->postCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_9
    if-eqz v18, :cond_a

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    :cond_a
    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_b
    :try_start_3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const v3, 0x7f0c0138

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_c
    const-string p2, "-1"

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_e
    const-string v3, "com.android.mms.SENT_MSG"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_1
    move-exception v19

    :try_start_4
    const-string v3, "Mms/MessagingNotification"

    const-string v5, "updateHistoryForSms() Catch a IllegalStateException: "

    move-object/from16 v0, v19

    invoke-static {v3, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v3, 0x0

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v3, 0x1

    goto :goto_4

    :catch_2
    move-exception v19

    :try_start_5
    const-string v3, "Mms/MessagingNotification"

    const-string v5, "updateHistoryForSms() Catch a SQLiteException: "

    move-object/from16 v0, v19

    invoke-static {v3, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v3, 0x0

    if-eqz v18, :cond_0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    if-eqz v18, :cond_10

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    const/16 v18, 0x0

    :cond_10
    throw v3
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-wide/16 v1, -0x2

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const-string v0, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " flags "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.camera.DISABLE_VIBRATOR"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->setDisableVibrateVideo(Landroid/content/Context;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.sec.android.app.camera.ENABLE_VIBRATOR"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, v3}, Lcom/android/mms/transaction/MessagingNotification;->setDisableVibrateVideo(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, -0x2

    move-object v0, p1

    move-wide v4, v1

    move v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateMessageIndicator(Landroid/content/Context;JZJII)V

    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockUpdateDownloadFailedNotification(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v0, "com.android.mms.INSERTED_MESSAGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification;->updateMsgInsertedState(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v0, "com.sec.android.action.CLEAR_MISSED_EVENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7b

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0
.end method
