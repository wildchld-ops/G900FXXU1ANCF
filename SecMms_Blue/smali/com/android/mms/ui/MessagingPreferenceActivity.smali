.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;
    }
.end annotation


# static fields
.field public static final ALLOW_REPLY_ALL:Ljava/lang/String; = "pref_key_mms_allow_reply_all"

.field public static final APN_ONOFF:Ljava/lang/String; = "pref_key_apn_onoff"

.field public static final APN_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean; = null

.field public static final AUTO_DELETE:Ljava/lang/String; = "pref_key_auto_delete"

.field public static final AUTO_RETRIEVAL:Ljava/lang/String; = "pref_key_mms_auto_retrieval"

.field public static final AUTO_RETRIEVAL_SETTINGS:Ljava/lang/String; = "pref_key_auto_retrieval_settings"

.field public static final BACKGROUND_STYLE:Ljava/lang/String; = "pref_key_background_color"

.field public static final BACKGROUND_STYLE_DEFAULT_VALUE:I = 0x1

.field public static final BUBBLE_DATE_FONT_SIZE:[F = null

.field public static final BUBBLE_FONT_SIZE:[F = null

.field public static final BUBBLE_FONT_SIZE_WVGA:[F = null

.field public static final BUBBLE_STYLE:Ljava/lang/String; = "pref_key_bubble_style"

.field public static final BUBBLE_TYPE_DEFAULT_VALUE:I = 0x0

.field private static final CALLBACK_CATAGORY:Ljava/lang/String; = "pref_callback_settings"

.field private static final CALLBACK_ENABLED:Ljava/lang/String; = "pref_key_enable_callback"

.field public static final CALLBACK_NUMBER:Ljava/lang/String; = "pref_key_callback_text"

.field public static final CALLBACK_SETTINGS:Ljava/lang/String; = "pref_key_settings_callback_number"

.field public static final CB_CHANNEL_SELECTION:Ljava/lang/String; = "pref_key_cb_channel_selection"

.field public static final CB_MYCHANNEL_SELECTION:Ljava/lang/String; = "pref_key_cb_my_channels"

.field public static final CB_MY_CHANNEL_ENABLED_COUNT:Ljava/lang/String; = "pref_cb_my_channel_enabled_count"

.field public static final CB_MY_CHANNEL_MAX_COUNT:Ljava/lang/String; = "pref_cb_my_channel_max_count"

.field public static final CB_SETTINGS_CHANNEL:Ljava/lang/String; = "pref_key_cb_settings_channel"

.field public static final CDMA_ROAMING_ACTIVE_NOT_SENT_CDMA_SMS:I = 0x0

.field public static final CDMA_ROAMING_ACTIVE_SENT_CDMA_SMS:I = 0x1

.field public static final CDMA_ROAMING_NOT_ACTIVE:I = 0x2

.field public static final CELL_BROADCAST_ACTIVATION:Ljava/lang/String; = "pref_key_cb_settings_activation"

.field public static final CELL_BROADCAST_ACTIVATION_SLOT2:Ljava/lang/String; = "pref_key_cb_settings_activation_sim2"

.field public static final CHAMELEON_TEXT_TEMPLATE_EN:Ljava/lang/String; = "pref_key_chameleon_text_template_en"

.field public static final CHAMELEON_TEXT_TEMPLATE_ES:Ljava/lang/String; = "pref_key_chameleon_text_template_es"

.field public static final CHAMELEON_TEXT_TEMPLATE_KO:Ljava/lang/String; = "pref_key_chameleon_text_template_ko"

.field public static final CHAMELEON_TEXT_TEMPLATE_VI:Ljava/lang/String; = "pref_key_chameleon_text_template_vi"

.field public static final CHAMELEON_TEXT_TEMPLATE_ZH:Ljava/lang/String; = "pref_key_chameleon_text_template_zh"

.field public static final CMAS_ALERT_REMINDER:Ljava/lang/String; = "pref_key_emergency_alert_reminder"

.field public static final CMAS_AUDIO_WHEN:Ljava/lang/String; = "pref_key_cmas_audioWhen_checkbox"

.field public static final CMAS_CATEGORY:Ljava/lang/String; = "pref_cmas_settings"

.field public static final CMAS_TEST_ONOFF:Ljava/lang/String; = "pref_key_cmas_test_onoff"

.field public static final CMAS_TEST_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean; = null

.field public static final CMAS_VIBRATE_WHEN:Ljava/lang/String; = "pref_key_cmas_vibrateWhen_checkbox"

.field private static final CONFIRM_CLEAR_SEARCH_HISTORY_DIALOG:I = 0x3

.field public static final DEFAULT_ALLOW_REPLY_ALL:Z = true

.field public static final DEFAULT_EXPIRY_TIME:Ljava/lang/String; = "3"

.field public static final DEFAULT_MMSC_PORT:Ljava/lang/String; = "80"

.field public static final DEFAULT_MMSC_URL:Ljava/lang/String; = "http://mmsc.vnet.mobi"

.field public static final DEFAULT_MMS_DELIVERY_TIME:Ljava/lang/String; = null

.field public static final DEFAULT_MMS_PRIORITY:Ljava/lang/String; = null

.field public static final DELAY_ARLET:Ljava/lang/String; = "pref_key_msg_delay_sending"

.field public static final DELAY_ENABLED:Ljava/lang/String; = "pref_key_enable_delaysending"

.field public static final DELIVERY_REPORT_ROAMING_TOAST_CHECK_PREFERENCE:Ljava/lang/String; = "delivery_report_roaming_toast_check_preference"

.field public static final DISPLAY_CATEGORY:Ljava/lang/String; = "pref_key_display_settings"

.field public static final EXPIRY_TIME:Ljava/lang/String; = "pref_key_mms_expiry"

.field public static final FAVORITE_EMOTICONS:Ljava/lang/String; = "pref_key_favorite_emoticons"

.field private static final FAVORITE_EMOTICON_DELIMITER:Ljava/lang/String; = "/"

.field private static final FAVORITE_EMOTICON_MAX_COUNT:I = 0x1c

.field public static final FONTSIZE_USE_NOT_MODEL:Ljava/lang/String; = "EK-GC100"

.field public static final FONT_SIZE_BUBBLE:I = 0x2

.field public static final FONT_SIZE_BY_SYSTEM_FONT_SIZE_DEFAULT_VALUE:I = 0x0

.field public static final FONT_SIZE_BY_VOLUME_KEY:Ljava/lang/String; = "pref_key_font_size_by_volume_key_enable"

.field public static final FONT_SIZE_BY_VOLUME_KEY_DEFAULT_VALUE:Z = true

.field public static final FONT_SIZE_BY_VOLUME_KEY_FONT_SIZE:Ljava/lang/String; = "pref_key_font_size_by_volume_key_font_size"

.field public static final FONT_SIZE_BY_VOLUME_KEY_FONT_SIZE_DEFAULT_VALUE:I = 0x0

.field public static final FONT_SIZE_DEFAULT_VALUE:Ljava/lang/String; = "Normal"

.field public static final FONT_SIZE_EDIT:I = 0x3

.field public static final FONT_SIZE_EXTRA_LARGE_7_STEP:I = 0x6

.field public static final FONT_SIZE_EXTRA_SMALL_7_STEP:I = 0x2

.field public static final FONT_SIZE_FOLLOW_SYSTEM_FONT_SIZE:I = 0x0

.field public static final FONT_SIZE_HUGE:I = 0x5

.field public static final FONT_SIZE_HUGE_7_STEP:I = 0x7

.field public static final FONT_SIZE_HUGE_VALUE:Ljava/lang/String; = "Huge"

.field public static final FONT_SIZE_LARGE:I = 0x4

.field public static final FONT_SIZE_LARGE_7_STEP:I = 0x5

.field public static final FONT_SIZE_LARGE_VALUE:Ljava/lang/String; = "Large"

.field public static final FONT_SIZE_MEDIUM_7_STEP:I = 0x4

.field public static final FONT_SIZE_NORMAL:I = 0x3

.field public static final FONT_SIZE_NORMAL_VALUE:Ljava/lang/String; = "Normal"

.field public static final FONT_SIZE_RECIPIENTS:I = 0x1

.field public static final FONT_SIZE_RESTRICTED:I = 0x5

.field public static final FONT_SIZE_SMALL:I = 0x2

.field public static final FONT_SIZE_SMALL_7_STEP:I = 0x3

.field public static final FONT_SIZE_SMALL_VALUE:Ljava/lang/String; = "Small"

.field public static final FONT_SIZE_TINY:I = 0x1

.field public static final FONT_SIZE_TINY_7_STEP:I = 0x1

.field public static final FONT_SIZE_TINY_VALUE:Ljava/lang/String; = "Tiny"

.field public static final FONT_SIZE_VEIWER:I = 0x4

.field public static final GROUP_MMS_MODE:Ljava/lang/String; = "pref_key_mms_group_mms"

.field public static final HAS_DEFAULT_VALUE:Ljava/lang/String; = "pref_key_has_default_value"

.field public static final INIT_CSC:Ljava/lang/String; = "pref_key_init_csc"

.field public static final INSERT_SENDER_INFO_WHEN_FWD_MSG:Ljava/lang/String; = "pref_key_insert_sender_info_when_fwd_msg"

.field public static final INSERT_SENDER_INFO_WHEN_FWD_MSG_CATEGORY:Ljava/lang/String; = "pref_key_insert_sender_info_when_fwd_msg_category"

.field public static final MANAGE_SD_MESSAGES:Ljava/lang/String; = "pref_key_manage_SD_messages"

.field public static final MANAGE_SIM_MESSAGES:Ljava/lang/String; = "pref_key_manage_sim_messages"

.field public static final MAX_MMS_MESSAGES_PER_THREAD:Ljava/lang/String; = "MaxMmsMessagesPerThread"

.field public static final MAX_SMS_MESSAGES_PER_THREAD:Ljava/lang/String; = "MaxSmsMessagesPerThread"

.field public static final MENU_RESTORE_DEFAULTS:I = 0x1

.field public static final MESSAGE_BUBBLE_RECEIVE_TYPE_DEFAULT_VALUE:I = 0x0

.field public static final MESSAGE_BUBBLE_SENT_TYPE_DEFAULT_VALUE:I = 0x0

.field public static final MESSAGE_FONT_Q1_INDEX_DIFF:I = 0x3

.field public static final MESSAGE_FONT_SIZE:Ljava/lang/String; = "pref_key_font_size"

.field public static final MESSAGE_FONT_SIZE_DEFAULT_VALUE_SYSTEM:Ljava/lang/String; = "Follow system font size"

.field public static final MESSAGE_TEXT_FIELD_COLOR:Ljava/lang/String; = "pref_key_text_field_color"

.field public static final MESSAGE_TEXT_FIELD_COLOR_AMOLED_DEFAULT_VALUE:Ljava/lang/String; = "Black"

.field public static final MESSAGE_TEXT_FIELD_COLOR_BLACK:I = 0x0

.field public static final MESSAGE_TEXT_FIELD_COLOR_LCD_DEFAULT_VALUE:Ljava/lang/String; = "White"

.field public static final MESSAGE_TEXT_FIELD_COLOR_WHITE:I = 0x1

.field public static final MMSC_PORT:Ljava/lang/String; = "pref_mmsc_port"

.field public static final MMSC_URL:Ljava/lang/String; = "pref_mmsc_url"

.field public static final MMS_CHANGE_OVER_ALARM:Ljava/lang/String; = "pref_key_mms_change_over_alarm"

.field public static final MMS_CREATION_MODE:Ljava/lang/String; = "pref_key_mms_creation_mode"

.field public static final MMS_CREATION_MODE_DEFAULT_VALUE:Ljava/lang/String; = "free"

.field public static final MMS_DELETE_LIMIT:Ljava/lang/String; = "pref_key_mms_delete_limit"

.field public static final MMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_delivery_reports"

.field public static final MMS_DELIVERY_TIME:Ljava/lang/String; = "pref_key_mms_delivery_time"

.field public static final MMS_EXPIRY_TIME:Ljava/lang/String; = "pref_key_mms_expiry_time"

.field public static final MMS_IMAGE_RESIZE_RESOLUTION:Ljava/lang/String; = "pref_key_mms_image_resize_resolution"

.field public static final MMS_MAX_RECIPIENT:Ljava/lang/String; = "pref_key_mms_max_recipient"

.field public static final MMS_MAX_SIZE:Ljava/lang/String; = "pref_key_mms_max_size"

.field public static final MMS_PRIORITY:Ljava/lang/String; = "pref_key_mmspriority"

.field public static final MMS_SEND_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_send_mms_delivery_reports"

.field public static final MMS_SLIDE_MAX_COUNT:Ljava/lang/String; = "pref_key_mms_slide_max_count"

.field public static final MMS_VIEW_MODE:Ljava/lang/String; = "pref_view_mode"

.field public static final MMS_VIEW_MODE_DEFAULT_VALUE:Ljava/lang/String; = "0"

.field public static final MSGTONE_REPEAT_INTERVAL:Ljava/lang/String; = "pref_key_msgtone_repeat_interval"

.field public static final NOTIFICATION_BACKLIGHT:Ljava/lang/String; = "pref_key_backlight"

.field public static final NOTIFICATION_BACKLIGHT_SIM2:Ljava/lang/String; = "pref_key_backlight_sim2"

.field public static final NOTIFICATION_CATEGORY:Ljava/lang/String; = "pref_notification_settings"

.field public static final NOTIFICATION_ENABLED:Ljava/lang/String; = "pref_key_enable_notifications"

.field public static final NOTIFICATION_POPUP:Ljava/lang/String; = "pref_key_enable_popup_reply"

.field public static final NOTIFICATION_POPUP_SIM2:Ljava/lang/String; = "pref_key_enable_popup_reply_sim2"

.field public static final NOTIFICATION_PREVIEW:Ljava/lang/String; = "pref_key_enable_preview_message"

.field public static final NOTIFICATION_PREVIEW_SIM2:Ljava/lang/String; = "pref_key_enable_preview_message_sim2"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field public static final NOTIFICATION_RINGTONE_SIM2:Ljava/lang/String; = "pref_key_ringtone_sim2"

.field public static final NOTIFICATION_VIBRATE:Ljava/lang/String; = "pref_key_vibrate"

.field public static final NOTIFICATION_VIBRATE_WHEN:Ljava/lang/String; = "pref_key_vibrateWhen_checkbox"

.field public static final NOTIFICATION_VIBRATE_WHEN_SIM2:Ljava/lang/String; = "pref_key_vibrateWhen_checkbox_sim2"

.field public static final PREF_RESET_PDP_PARAM:Ljava/lang/String; = "pref_reset_pdp_param"

.field public static final PREVIEW_MESSAGE_CATEGORY:Ljava/lang/String; = "pref_key_preview_category"

.field public static final PREVIEW_MESSAGE_CATEGORY_SIM2:Ljava/lang/String; = "pref_key_preview_category_sim2"

.field public static final PRIORITY:Ljava/lang/String; = "pref_key_mms_priority"

.field public static final PRIORITY_SENDER:Ljava/lang/String; = "pref_key_priority_sender"

.field public static final PUSH_MESSAGE:Ljava/lang/String; = "pref_key_enable_push_message"

.field public static final PUSH_MESSAGE_NOT_ATT:Ljava/lang/String; = "pref_key_enable_push_message_not_att"

.field public static final READ_REPORT_MODE:Ljava/lang/String; = "pref_key_mms_read_reports"

.field public static final REMINDER_ALERT:Ljava/lang/String; = "pref_key_msg_reminder_alert"

.field public static final REMINDER_ALERT_SIM2:Ljava/lang/String; = "pref_key_msg_reminder_alert_sim2"

.field public static final RESTORE_MESSAGES:Ljava/lang/String; = "pref_key_sms_restore"

.field public static final RETRIEVAL_DURING_ROAMING:Ljava/lang/String; = "pref_key_mms_retrieval_during_roaming"

.field public static final SERVICE_LOADING_ACTION:Ljava/lang/String; = "pref_key_service_loading_action"

.field public static final SERVICE_LOADING_ACTION_ALWAYS:I = 0x0

.field public static final SERVICE_LOADING_ACTION_DEFAULT_VALUE:Ljava/lang/String; = "Prompt"

.field public static final SERVICE_LOADING_ACTION_NEVER:I = 0x2

.field public static final SERVICE_LOADING_ACTION_PROMPT:I = 0x1

.field public static final SIGNATURE:Ljava/lang/String; = "pref_signature_settings"

.field public static final SIGNATURE_ENABLE:Ljava/lang/String; = "pref_key_enable_signature"

.field public static final SIGNATURE_TEXT:Ljava/lang/String; = "pref_key_signature_text"

.field public static final SIM_READY_STATUS:Ljava/lang/String; = "pref_sim_ready_status"

.field public static final SMISHING_ENABLE:Ljava/lang/String; = "pref_manage_access_authority"

.field public static final SMSC_ADDR_VALUE:Ljava/lang/String; = "pref_key_manage_smsc_address"

.field public static final SMSC_ADDR_VALUE_SIM2:Ljava/lang/String; = "pref_key_manage_smsc_address_sim2"

.field public static final SMSC_URI:Landroid/net/Uri; = null

.field public static final SMSC_URI_SIM2:Landroid/net/Uri; = null

.field public static final SMS_DELETE_LIMIT:Ljava/lang/String; = "pref_key_sms_delete_limit"

.field public static final SMS_DELIVERY_REPORT_MODE:Ljava/lang/String; = "pref_key_sms_delivery_reports"

.field public static final SMS_EMAIL_GATEWAY:Ljava/lang/String; = "pref_key_sms_email_gateway"

.field public static final SMS_EXPIRY_TIME:Ljava/lang/String; = "pref_key_sms_expiry"

.field public static final SMS_INPUT_MODE:Ljava/lang/String; = "pref_key_sms_input_mode"

.field public static final SMS_INPUT_MODE_DEFAULT_VALUE:Ljava/lang/String; = "Automatic"

.field public static final SMS_MAX_RECIPIENT:Ljava/lang/String; = "pref_key_max_recipient"

.field public static final SMS_REASSEMBLY:Ljava/lang/String; = "pref_key_sms_reassembly"

.field public static final SMS_RESTORE_MESSAGES:Ljava/lang/String; = "pref_key_sms_restore"

.field public static final SMS_TEXT_TEMPLATE:Ljava/lang/String; = "pref_key_sms_text_template"

.field public static final SMS_THRESHOLD:Ljava/lang/String; = "pref_key_threshold"

.field public static final SMS_THRESHOLD_TYPE:Ljava/lang/String; = "pref_key_threshold_type"

.field public static final SPAM_ADD_NUM:Ljava/lang/String; = "pref_key_spam_num_add"

.field public static final SPAM_ADD_TEXT:Ljava/lang/String; = "pref_key_spam_text_add"

.field public static final SPAM_CATAGORY:Ljava/lang/String; = "pref_key_spam_settings"

.field public static final SPAM_FILTER_UNKNOWN_EABLE:Ljava/lang/String; = "pref_key_spam_filter_unknown_enable"

.field public static final SPAM_OPTION:Ljava/lang/String; = "pref_key_spam_option"

.field public static final SPAM_OPTION_EABLE:Ljava/lang/String; = "pref_key_spam_option_enable"

.field public static final SPAM_OPTION_OFF:I = 0x0

.field public static final SPAM_OPTION_OFF_VALUE:Ljava/lang/String; = "0"

.field public static final SPAM_OPTION_REJECT_ALL_MESSAGES:I = 0x1

.field public static final SPAM_OPTION_REJECT_ALL_MESSAGES_VALUE:Ljava/lang/String; = "1"

.field public static final SPAM_OPTION_REJECT_BLOCK_NUMBER_AND_STRING:I = 0x2

.field public static final SPAM_OPTION_REJECT_BLOCK_NUMBER_AND_STRING_VALUE:Ljava/lang/String; = "2"

.field public static final SPLIT_BAR_POSITION:Ljava/lang/String; = "pref_key_splitbar_position"

.field public static final SPLIT_VIEW:Ljava/lang/String; = "pref_key_split_view"

.field public static final SPLIT_VIEW_DEFAULT_VALUE:Z = true

.field public static final STATUS_PREVIEW:Ljava/lang/String; = "pref_key_enable_statusbar_preview_message"

.field public static final STATUS_PREVIEW_SIM2:Ljava/lang/String; = "pref_key_enable_statusbar_preview_message_sim2"

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingPreferenceActivity"

.field public static final TEXT_TEMPLATE:Ljava/lang/String; = "pref_key_text_templates"

.field public static final TRUNCATE_LONG_MESSAGES:Ljava/lang/String; = "pref_key_truncate_long_messages"

.field public static final TTS_READ_OUT_MESSAGE_CONTENTS:Ljava/lang/String; = "pref_key_read_out_message_contents"

.field public static final TTS_READ_OUT_NEW_MESSAGE_NOTIFICATION:Ljava/lang/String; = "pref_key_read_out_new_message_notification"

.field public static final URLLINK_OPTION_EABLE:Ljava/lang/String; = "pref_key_urllink_option_enable"

.field public static final VALUE_CREATION_MODE_FREE:I = 0x2

.field public static final VALUE_CREATION_MODE_RESTRICTED:I = 0x0

.field public static final VALUE_CREATION_MODE_WARNING:I = 0x1

.field public static final VALUE_EXPIRY_TIME_1HOUR:Ljava/lang/String; = "0"

.field public static final VALUE_EXPIRY_TIME_24HOURS:Ljava/lang/String; = "2"

.field public static final VALUE_EXPIRY_TIME_2DAYS:Ljava/lang/String; = "3"

.field public static final VALUE_EXPIRY_TIME_6HOURS:Ljava/lang/String; = "1"

.field public static final VALUE_EXPIRY_TIME_DEFAULT:Ljava/lang/String; = "4"

.field public static final VALUE_EXPIRY_TIME_MAXIMUM:Ljava/lang/String; = "5"

.field public static final VALUE_INT_DELIVERY_TIME_1HOUR:I = 0x1

.field public static final VALUE_INT_DELIVERY_TIME_1WEEK:I = 0x4

.field public static final VALUE_INT_DELIVERY_TIME_24HOUR:I = 0x3

.field public static final VALUE_INT_DELIVERY_TIME_6HOUR:I = 0x2

.field public static final VALUE_INT_DELIVERY_TIME_IMMEDIATELY:I = 0x0

.field public static final VALUE_INT_EXPIRY_TIME_1HOUR:I = 0x0

.field public static final VALUE_INT_EXPIRY_TIME_24HOURS:I = 0x2

.field public static final VALUE_INT_EXPIRY_TIME_2DAYS:I = 0x3

.field public static final VALUE_INT_EXPIRY_TIME_6HOURS:I = 0x1

.field public static final VALUE_INT_EXPIRY_TIME_DEFAULT:I = 0x4

.field public static final VALUE_INT_EXPIRY_TIME_MAXIMUM:I = 0x5

.field public static final VALUE_INT_MMS_PRIORITY_HIGH:I = 0x0

.field public static final VALUE_INT_MMS_PRIORITY_LOW:I = 0x2

.field public static final VALUE_INT_MMS_PRIORITY_MEDIUM:I = 0x1

.field public static final VALUE_VIEW_MODE_CONVERSATION:I = 0x0

.field public static final VALUE_VIEW_MODE_FOLDER:I = 0x1

.field public static mBubbleFontRateArray:[F = null

.field public static mFontRateArray:[F = null

.field public static mFontSizeExceptionHuge:F = 0.0f

.field public static mFontSizeNormal:F = 0.0f

.field private static mOldSettingFontSizeIndex:I = 0x0

.field public static final targetDirPath:Ljava/lang/String; = "/data/data/com.android.mms/"

.field public static final targetFileName:Ljava/lang/String; = "message_background_image.jpg"


# instance fields
.field private airplaneReceiver:Landroid/content/BroadcastReceiver;

.field private cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

.field private isMultiSIM:Z

.field private mCallbackNumberPref:Landroid/preference/EditTextPreference;

.field private mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

.field private mGroupMms:Landroid/preference/CheckBoxPreference;

.field private mManageSDPref:Landroid/preference/Preference;

.field private mManageSimPref:Landroid/preference/Preference;

.field private mMaxChannelCount:I

.field private mMessageBubbleStyleName:[Ljava/lang/String;

.field private mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

.field private mMmsDeliveryReportPref:Landroid/preference/Preference;

.field private mMmsDeliveryTimePref:Landroid/preference/Preference;

.field private mMmsExpiryTimePref:Landroid/preference/Preference;

.field mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mMmsLimitPref:Landroid/preference/Preference;

.field private mMmsMMSCPortPref:Landroid/preference/Preference;

.field private mMmsMMSCUrlPref:Landroid/preference/Preference;

.field private mMmsPriorityPref:Landroid/preference/Preference;

.field private mMmsReadReportPref:Landroid/preference/Preference;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mMmsSendDeliveryReportPref:Landroid/preference/Preference;

.field private mMsgPopupPref:Landroid/preference/CheckBoxPreference;

.field private mMyChannels:I

.field private mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

.field private mReplyAllPref:Landroid/preference/CheckBoxPreference;

.field private mRestoreSDPref:Landroid/preference/Preference;

.field private mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

.field private mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private mServiceLoadingActionName:[Ljava/lang/String;

.field private mSimStatus:Z

.field private mSmsDeliveryReportPref:Landroid/preference/Preference;

.field mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

.field private mSmsLimitPref:Landroid/preference/Preference;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;

.field private mSmsc:Ljava/lang/String;

.field private mSmsc2:Ljava/lang/String;

.field private mSmscAddrPref:Landroid/preference/EditTextPreference;

.field private mSpamOption:Landroid/preference/ListPreference;

.field private mURLlinkPref:Landroid/preference/CheckBoxPreference;

.field private mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

.field private misTalkbackOn:Z

.field private simStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x0

    const-string v0, "content://sms/smsc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    const-string v0, "content://sms/smsc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI_SIM2:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->APN_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->CMAS_TEST_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean;

    sput-object v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    sput-object v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    sput v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    sput v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeExceptionHuge:F

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_FONT_SIZE_WVGA:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->BUBBLE_DATE_FONT_SIZE:[F

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_PRIORITY:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->DEFAULT_MMS_DELIVERY_TIME:Ljava/lang/String;

    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xb0t 0x41t
        0x0t 0x0t 0x98t 0x41t
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0xb0t 0x41t
        0x0t 0x0t 0xe8t 0x41t
        0x0t 0x0t 0x64t 0x42t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0x60t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x90t 0x41t
        0x0t 0x0t 0xc0t 0x41t
        0x0t 0x0t 0xf8t 0x41t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x40t 0x41t
        0xaet 0x47t 0x55t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x80t 0x41t
        0x0t 0x0t 0x80t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageBubbleStyleName:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mGroupMms:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->misTalkbackOn:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->isMultiSIM:Z

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc2:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimStatus:Z

    iput v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMaxChannelCount:I

    iput v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMyChannels:I

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$7;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$8;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$10;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$11;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->simStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$12;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setVibrateMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceSummary()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->refreshSIMPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateGroupMmsPreference()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessagingPreferenceActivity;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private allowReplyAll()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "pref_key_mms_allow_reply_all"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private backupNetworkStatus(Landroid/content/SharedPreferences;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "pref_key_manage_smsc_address"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->isMultiSIM:Z

    if-eqz v0, :cond_0

    const-string v0, "pref_key_manage_smsc_address_sim2"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc2:Ljava/lang/String;

    :cond_0
    const-string v0, "pref_sim_ready_status"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimStatus:Z

    const-string v0, "pref_cb_my_channel_max_count"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMaxChannelCount:I

    const-string v0, "pref_cb_my_channel_enabled_count"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMyChannels:I

    return-void
.end method

.method public static changeAcessOption(Landroid/content/Context;Z)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_manage_access_authority"

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_0

    const-string v2, "pref_manage_access_authority"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static changeAutoDeleteOption(Landroid/content/Context;Z)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_key_auto_delete"

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_0

    const-string v2, "pref_key_auto_delete"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static changeCBMessgesOption(Landroid/content/Context;ZI)Z
    .locals 5

    const/4 v4, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-lez p2, :cond_1

    const-string v0, "pref_key_cb_settings_activation_sim2"

    :goto_0
    if-nez p1, :cond_2

    move v3, v4

    :goto_1
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v3, p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return v4

    :cond_1
    const-string v0, "pref_key_cb_settings_activation"

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static changeCallbackOption(Landroid/content/Context;Z)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_key_enable_callback"

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_0

    const-string v2, "pref_key_enable_callback"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static changeCallbackString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_callback_text"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pref_key_callback_text"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v2, "pref_key_callback_text"

    return-object v2
.end method

.method public static changeDelayOption(Landroid/content/Context;Z)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_key_enable_delaysending"

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_0

    const-string v2, "pref_key_enable_delaysending"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static changeNotificationOption(Landroid/content/Context;Z)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_key_enable_notifications"

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_0

    const-string v2, "pref_key_enable_notifications"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static changePushMessgesOption(Landroid/content/Context;Z)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_key_enable_push_message"

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_0

    const-string v2, "pref_key_enable_push_message"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static changeSignOption(Landroid/content/Context;Z)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_key_enable_signature"

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_0

    const-string v2, "pref_key_enable_signature"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static changeSignString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_signature_text"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pref_key_signature_text"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v2, "pref_key_signature_text"

    return-object v2
.end method

.method public static changeSpamOption(Landroid/content/Context;Z)Z
    .locals 5

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "pref_key_spam_option_enable"

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eq v2, p1, :cond_0

    const-string v2, "pref_key_spam_option_enable"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clearPickerDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    :cond_0
    return-void
.end method

.method private confirmGroupMmsDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c03c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c03ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private confirmSDcardDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0126

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0127

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static convertCreationMode(Ljava/lang/String;)I
    .locals 2

    const-string v0, "restricted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS creation mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAcessOption(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_manage_access_authority"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getApnOnOff(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_apn_onoff"

    sget-object v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->APN_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static getAutoDeleteOption(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_auto_delete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getBubbleBackgroundStyle(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_background_color"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getBubbleReceiveStyle(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_bubble_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public static getBubbleSentStyle(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_bubble_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public static getBubbleStyle(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_bubble_style"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getCBMessagesOption(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_cb_settings_activation"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getCBMessagesOption(Landroid/content/Context;I)Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-lez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pref_key_cb_settings_activation_sim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "pref_key_cb_settings_activation"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static getCMASTestOnOff(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_cmas_test_onoff"

    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->CMAS_TEST_ONOFF_DEFAULT_VALUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getCallbackEnabled(Landroid/content/SharedPreferences;)Z
    .locals 3

    const-string v1, "pref_key_enable_callback"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3

    const-string v1, "pref_key_callback_text"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallbackOption(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_enable_callback"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getCallbackString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_callback_text"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDelayOption(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_enable_delaysending"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getDelaySendingLength(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_msg_delay_sending"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getEnableDelaySending(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDelaySending()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_enable_delaysending"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSizeByVolumeKey()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_font_size_by_volume_key_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEnablePrioritySender(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_priority_sender"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getExpiryTime(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_sms_expiry"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "1 day"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa7

    goto :goto_0

    :cond_1
    const-string v2, "2 days"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xa8

    goto :goto_0

    :cond_2
    const/16 v2, 0xa9

    goto :goto_0
.end method

.method public static getFavoriteEmoticons(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "pref_key_favorite_emoticons"

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static getFontSize(II)F
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize7Step(II)F

    move-result v0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    if-nez v2, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->updateFontRateArray(I)[F

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/FontSizeController;->updateBubbleFontRateArray(Landroid/content/Context;)[F

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    :cond_2
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->updateFontSizeNormal(I)F

    move-result v2

    sput v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    if-ne p1, v5, :cond_3

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->updateFontSizeExceptionHuge()F

    move-result v2

    sput v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeExceptionHuge:F

    :cond_3
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    invoke-static {p1, v2}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 p1, 0x3

    :cond_4
    packed-switch p0, :pswitch_data_0

    :goto_1
    if-ne p1, v5, :cond_5

    packed-switch p0, :pswitch_data_1

    :cond_5
    :goto_2
    move v1, v0

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, v4

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    goto :goto_1

    :pswitch_1
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, p1

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    goto :goto_1

    :pswitch_2
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, p1

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    goto :goto_1

    :pswitch_3
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, p1

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    goto :goto_1

    :pswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForKorFullDHModel()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->useRecipientsFontSizeCustomizeForKor()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->useFontSizeCustomizeForLargeScreenModel()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, p1

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    if-ge p1, v2, :cond_9

    const/4 p1, 0x1

    :cond_8
    :goto_3
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, p1

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    goto :goto_1

    :cond_9
    if-le p1, v4, :cond_8

    const/4 p1, 0x3

    goto :goto_3

    :pswitch_5
    sget-object v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v2, v2, v4

    sget v3, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v2, v3

    goto :goto_2

    :pswitch_6
    sget v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeExceptionHuge:F

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static getFontSize7Step(II)F
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->updateFontRateArray(I)[F

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/FontSizeController;->updateBubbleFontRateArray(Landroid/content/Context;)[F

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->updateFontSizeNormal(I)F

    move-result v1

    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    if-ne p1, v4, :cond_2

    invoke-static {}, Lcom/android/mms/ui/FontSizeController;->updateFontSizeExceptionHuge()F

    move-result v1

    sput v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeExceptionHuge:F

    :cond_2
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    invoke-static {p1, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p1, 0x3

    :cond_3
    packed-switch p0, :pswitch_data_0

    :goto_0
    if-ne p1, v4, :cond_4

    packed-switch p0, :pswitch_data_1

    :cond_4
    :goto_1
    return v0

    :pswitch_0
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, v3

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, p1

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, p1

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, p1

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    if-ge p1, v1, :cond_6

    const/4 p1, 0x1

    :cond_5
    :goto_2
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, p1

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    goto :goto_0

    :cond_6
    if-le p1, v3, :cond_5

    const/4 p1, 0x3

    goto :goto_2

    :pswitch_5
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontRateArray:[F

    aget v1, v1, v3

    sget v2, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeNormal:F

    mul-float v0, v1, v2

    goto :goto_1

    :pswitch_6
    sget v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mFontSizeExceptionHuge:F

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public static getFontSizeIndex(Landroid/content/Context;)I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMessageFontSizeIndex(Landroid/content/Context;)I

    move-result v4

    sget v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    if-nez v6, :cond_0

    sput v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getEnableFontSizeByVolumeKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    sget v6, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    if-eq v4, v6, :cond_2

    :try_start_0
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->mOldSettingFontSizeIndex:I

    const/4 v3, 0x0

    :goto_1
    add-int v2, v4, v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x7

    if-le v2, v6, :cond_3

    const/4 v2, 0x7

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    rsub-int/lit8 v7, v4, 0x7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    :goto_2
    return v2

    :cond_2
    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_1

    :cond_3
    if-ge v2, v8, :cond_1

    const/4 v2, 0x1

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    rsub-int/lit8 v7, v4, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :cond_4
    const/4 v6, 0x5

    if-le v2, v6, :cond_5

    const/4 v2, 0x5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    rsub-int/lit8 v7, v4, 0x5

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :cond_5
    if-ge v2, v8, :cond_1

    const/4 v2, 0x1

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "pref_key_font_size_by_volume_key_font_size"

    rsub-int/lit8 v7, v4, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    :cond_6
    move v2, v4

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public static getFontSizePreferenceDialogFontSize(I)F
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/mms/ui/FontSizeController;->DIALOG_FONT_SIZE_7_STEP:[I

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    :cond_0
    sget-object v1, Lcom/android/mms/ui/FontSizeController;->DIALOG_FONT_SIZE_7_STEP:[I

    aget v1, v1, p0

    int-to-float v0, v1

    :goto_0
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFontSizePreferenceDialogFontSize() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    sget-object v1, Lcom/android/mms/ui/FontSizeController;->DIALOG_FONT_SIZE:[I

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[I)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, 0x0

    :cond_2
    sget-object v1, Lcom/android/mms/ui/FontSizeController;->DIALOG_FONT_SIZE:[I

    aget v1, v1, p0

    int-to-float v0, v1

    goto :goto_0
.end method

.method public static getInputmode(Landroid/content/Context;)I
    .locals 5

    const/4 v2, 0x2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "pref_key_sms_input_mode"

    const-string v4, "Automatic"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getInputModeForCHN()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "GSM alphabet"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "Unicode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getIsGroupMmsEnabled(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "pref_key_mms_group_mms"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessageBanner()Z

    move-result v1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v5, "Mms/MessagingPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "groupMmsPrefOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isGroupMmsEnable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isLocalNumberEmpty = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getMessageFontSizeIndex(Landroid/content/Context;)I
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSelectedFontSizeIndexByPref(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/mms/ui/FontSizeController;->updateBubbleFontRateArray(Landroid/content/Context;)[F

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    :cond_1
    :goto_1
    return v0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/mms/ui/MessagingPreferenceActivity;->mBubbleFontRateArray:[F

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[F)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1
.end method

.method public static getMmsViewMode(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_view_mode"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getNotificationEnabled(Landroid/content/Context;)Z
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_key_enable_notifications"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getNotificationOption(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getPDP_PARAM(Landroid/content/Context;)Z
    .locals 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_reset_pdp_param"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "Mms/MessagingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get PDP_PARAM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public static getPushMessagesOption(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_enable_push_message"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSelectedFontSize(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Small"

    packed-switch p0, :pswitch_data_0

    :goto_0
    const-string v1, "Mms/MessagingPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedFontSize() returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    const-string v0, "Tiny"

    goto :goto_0

    :pswitch_1
    const-string v0, "Extra small"

    goto :goto_0

    :pswitch_2
    const-string v0, "Small"

    goto :goto_0

    :pswitch_3
    const-string v0, "Medium"

    goto :goto_0

    :pswitch_4
    const-string v0, "Large"

    goto :goto_0

    :pswitch_5
    const-string v0, "Extra large"

    goto :goto_0

    :pswitch_6
    const-string v0, "Huge"

    goto :goto_0

    :cond_0
    const-string v0, "Normal"

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_7
    const-string v0, "Tiny"

    goto :goto_0

    :pswitch_8
    const-string v0, "Small"

    goto :goto_0

    :pswitch_9
    const-string v0, "Normal"

    goto :goto_0

    :pswitch_a
    const-string v0, "Large"

    goto :goto_0

    :pswitch_b
    const-string v0, "Huge"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getSelectedFontSizeIndexByPref(Landroid/content/Context;)I
    .locals 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pref_key_font_size"

    const-string v4, "Follow system font size"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSupport7StepFontSize()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "Follow system font size"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "Mms/MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSelectedFontSizeIndex() returns "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v3, "Tiny"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "Extra small"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_2
    const-string v3, "Small"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const-string v3, "Medium"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x4

    goto :goto_0

    :cond_4
    const-string v3, "Large"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x5

    goto :goto_0

    :cond_5
    const-string v3, "Extra large"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x6

    goto :goto_0

    :cond_6
    const-string v3, "Huge"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v2, 0x7

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    goto :goto_0

    :cond_8
    const-string v3, "Follow system font size"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v2, 0x0

    goto :goto_0

    :cond_9
    const-string v3, "Tiny"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x1

    goto :goto_0

    :cond_a
    const-string v3, "Small"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x2

    goto :goto_0

    :cond_b
    const-string v3, "Normal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x3

    goto/16 :goto_0

    :cond_c
    const-string v3, "Large"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v2, 0x4

    goto/16 :goto_0

    :cond_d
    const-string v3, "Huge"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x5

    goto/16 :goto_0

    :cond_e
    const/4 v2, 0x3

    goto/16 :goto_0
.end method

.method public static getServiceLoading(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_service_loading_action"

    const-string v3, "Prompt"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static getServiceLoading(Ljava/lang/String;)I
    .locals 3

    const-string v0, "Mms/MessagingPreferenceActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PushMsg getServiceLoading slAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Always"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "Prompt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoading(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->checkArrayIndex(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public static getSignOption(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_enable_signature"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSignString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_signature_text"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSignatureEnabledValue(Landroid/content/SharedPreferences;)Z
    .locals 2

    const-string v0, "pref_key_enable_signature"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSpamFilterUnknown(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_spam_filter_unknown_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSpamOption(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_spam_option_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getSystemFontSizeIndex(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_size"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getTextFieldColor(Landroid/content/Context;)I
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_text_field_color"

    const-string v3, "Black"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getTextFieldColor(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getTextFieldColor(Ljava/lang/String;)I
    .locals 1

    const-string v0, "white"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getURLlinkOption(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_urllink_option_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isUsingMsgFontSize()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSelectedFontSizeIndexByPref(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSize()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshSIMPreferences()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v6, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-ne v6, v10, :cond_0

    if-ne v0, v9, :cond_8

    :cond_0
    const-string v6, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_0
    const-string v6, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSC()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-ne v6, v10, :cond_2

    if-ne v0, v9, :cond_9

    :cond_2
    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_1
    const-string v6, "pref_key_cb_settings"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-eq v6, v10, :cond_d

    :cond_4
    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_5
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableDeliveryReportInRoaming()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v6, "delivery_report_roaming_toast_check_preference"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/util/TelephonyUtils;->isCdmaRoamingActive(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    if-ne v3, v11, :cond_6

    const-string v6, "delivery_report_roaming_toast_check_preference"

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_6
    :goto_3
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_7
    return-void

    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-ne v6, v10, :cond_1

    const-string v6, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-ne v6, v10, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSCEditable()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableSmscEditableOnlyFor()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/util/TelephonyUtils;->isNotKorUsim(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKTSIM()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    if-ne v6, v10, :cond_5

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_e
    const-string v6, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v6, "delivery_report_roaming_toast_check_preference"

    invoke-interface {v2, v6, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_3
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private restoreDefaultPreferences()V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->backupNetworkStatus(Landroid/content/SharedPreferences;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableChameleon()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/android/mms/csc/CscLoader;->update(Landroid/content/Context;Z)Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreNetworkStatus(Landroid/content/SharedPreferences;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter;->deleteAll(Landroid/content/Context;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->isMultiSIM:Z

    if-eqz v1, :cond_2

    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "pref_key_storage_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v2, "pref_key_truncate_long_messages"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->deleteBubbleBackgroundStyle()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsPreferences()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsPreferences()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOthersPreferences()V

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCMASPreferences()V

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceSummary()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "message.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->refreshSIMPreferences()V

    return-void

    :cond_2
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_0
.end method

.method private restoreNetworkStatus(Landroid/content/SharedPreferences;)V
    .locals 3

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_manage_smsc_address"

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-boolean v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->isMultiSIM:Z

    if-eqz v1, :cond_0

    const-string v1, "pref_key_manage_smsc_address_sim2"

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc2:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v1, "pref_sim_ready_status"

    iget-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSimStatus:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_cb_my_channel_max_count"

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMaxChannelCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_cb_my_channel_enabled_count"

    iget v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMyChannels:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setApnOnOff(Landroid/content/Context;Z)V
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_apn_onoff"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setCMASPreferences()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "#cmas#type##extreme#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "#cmas#type##severe#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "#cmas#type##amber#enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v3, "#cmas#type##exercise#enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCMASTestOnOff(Landroid/content/Context;Z)V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v2, "pref_key_cmas_test_onoff"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string v2, "pref_key_cmas_test_onoff"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private setCallbackNumber(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, ""

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumberSummary(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method private setCallbackNumberSummary(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1
.end method

.method private setCmasReminderSummary(Landroid/content/SharedPreferences;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string v5, "pref_key_emergency_alert_reminder"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const-string v5, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_2

    const/4 v5, 0x3

    aget-object v3, v2, v5

    :cond_1
    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_3

    const/4 v5, 0x0

    aget-object v3, v2, v5

    goto :goto_1

    :cond_3
    if-ne v0, v8, :cond_4

    aget-object v3, v2, v7

    goto :goto_1

    :cond_4
    const/16 v5, 0xf

    if-ne v0, v5, :cond_1

    aget-object v3, v2, v8

    goto :goto_1
.end method

.method public static setDefaultPreference(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "com.android.mms_preferences"

    const v1, 0x7f060005

    invoke-static {p0, v0, v2, v1, p1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    const-string v0, "com.android.mms_preferences"

    const v1, 0x7f060012

    invoke-static {p0, v0, v2, v1, p1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    const-string v0, "com.android.mms_preferences"

    const v1, 0x7f060014

    invoke-static {p0, v0, v2, v1, p1}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private setMessageDealySummary(Landroid/content/SharedPreferences;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v0, 0x0

    const/4 v3, 0x0

    const-string v5, "pref_key_msg_delay_sending"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-ne v0, v7, :cond_2

    const/4 v5, 0x0

    aget-object v3, v2, v5

    :cond_0
    :goto_0
    const-string v5, "pref_key_msg_delay_sending"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const/4 v5, 0x5

    if-ne v0, v5, :cond_3

    const/4 v5, 0x1

    aget-object v3, v2, v5

    goto :goto_0

    :cond_3
    const/16 v5, 0xa

    if-ne v0, v5, :cond_4

    const/4 v5, 0x2

    aget-object v3, v2, v5

    goto :goto_0

    :cond_4
    const/16 v5, 0x14

    if-ne v0, v5, :cond_5

    aget-object v3, v2, v7

    goto :goto_0

    :cond_5
    const/16 v5, 0x1e

    if-ne v0, v5, :cond_0

    const/4 v5, 0x4

    aget-object v3, v2, v5

    goto :goto_0
.end method

.method private setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v5, "pref_key_msg_reminder_alert"

    const-string v6, "0"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-ne v0, v7, :cond_2

    const/4 v5, 0x0

    aget-object v2, v3, v5

    :cond_0
    :goto_0
    const-string v5, "pref_key_msg_reminder_alert"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    if-ne v0, v8, :cond_3

    aget-object v2, v3, v7

    goto :goto_0

    :cond_3
    const/16 v5, 0xa

    if-ne v0, v5, :cond_0

    aget-object v2, v3, v8

    goto :goto_0
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0c0060

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static setMmsViewMode(Landroid/content/Context;I)V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p1, :cond_0

    const-string v2, "pref_view_mode"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string v2, "pref_view_mode"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setPDP_PARAM(Landroid/content/Context;Z)V
    .locals 5

    const-string v2, "Mms/MessagingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set PDP_PARAM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_reset_pdp_param"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setPreferenceSummary()V
    .locals 25

    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    const-string v2, "pref_key_bubble_style"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleSentStyle(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v14, v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getBubbleReceiveStyle(Landroid/content/Context;)I

    move-result v2

    add-int/lit8 v13, v2, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c034f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0c034f

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v2, "pref_key_background_color"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    if-eqz v11, :cond_1

    const-string v2, "pref_key_background_color"

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {}, Lcom/android/mms/ui/MessageBubbleActivity;->isCustomItemExist()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    if-ne v10, v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c0233

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const-string v2, "pref_key_ringtone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    if-eqz v19, :cond_4

    const-string v2, "pref_key_ringtone"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_e

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f0c006e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    if-eqz v3, :cond_2

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x10406c4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    :cond_3
    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v2, "pref_key_signature_text"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    if-eqz v22, :cond_5

    const-string v2, "pref_key_signature_text"

    const-string v4, ""

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCmasReminderSummary(Landroid/content/SharedPreferences;)V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmscSummary(Landroid/content/SharedPreferences;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setServiceLoadingSummary(Landroid/content/SharedPreferences;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessageDealySummary(Landroid/content/SharedPreferences;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_9

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumber(Ljava/lang/String;)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->allowReplyAll()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x6

    if-ne v2, v4, :cond_b

    const-string v2, "pref_key_cb_settings_activation"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v2, "pref_key_channel_configuration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v2, "pref_key_channel_configuration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_b
    return-void

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0232

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    add-int/lit8 v7, v10, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0232

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_f
    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "content://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    :goto_3
    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    :cond_10
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v23

    const-string v2, "Mms/MessagingPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when query ringtone title"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "title"

    aput-object v7, v6, v2

    const-string v7, "_data=?"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v18, v8, v2

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    goto :goto_3
.end method

.method private setServiceLoadingSummary(Landroid/content/SharedPreferences;)V
    .locals 4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServiceLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "pref_key_service_loading_action"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "pref_key_service_loading_action"

    const-string v3, "Prompt"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getServiceLoadingActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    const v1, 0x7f0c0060

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setSmscSummary(Landroid/content/SharedPreferences;)V
    .locals 4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "pref_key_manage_smsc_address"

    const-string v3, ""

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/android/mms/util/TelephonyUtils;->getSmsc(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v3, "pref_key_manage_smsc_address"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private setVibrateMenu()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v2, "pref_key_ringtone"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateNotificationAlert()V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_5
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showCMASExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0405

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c0406

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showCMASPreviewDialog()V
    .locals 1

    new-instance v0, Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CMASPreviewDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASPreviewDialog;->show()V

    return-void
.end method

.method private showMmsLimitMessagePickerDialog()V
    .locals 9

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const/4 v6, -0x1

    const v1, 0x7f0c0067

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->show()V

    return-void
.end method

.method private showSmsLimitMessagePickerDialog()V
    .locals 9

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->clearPickerDialog()V

    new-instance v0, Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const/4 v6, -0x1

    const v1, 0x7f0c0066

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/ui/MessagePickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessagePickerDialog$OnDurationSetListener;IIIILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->show()V

    return-void
.end method

.method private startMmsDownload()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ENABLE_AUTO_RETRIEVE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private updateDeletePreference()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "pref_key_auto_delete"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "pref_key_sms_delete_limit"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    const-string v4, "pref_key_mms_delete_limit"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    :cond_0
    return-void
.end method

.method public static updateFavoriteEmoticon(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFavoriteEmoticons(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/16 v7, 0x1c

    if-lt v1, v7, :cond_2

    :cond_1
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "pref_key_favorite_emoticons"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateGroupMmsPreference()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "pref_key_mms_group_mms"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_mms_group_mms"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mGroupMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method

.method public static useSplitView(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_key_split_view"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    return-void
.end method

.method public changeURLlinkOption(Landroid/content/Context;Z)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "pref_key_urllink_option_enable"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_urllink_option_enable"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mURLlinkPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mURLlinkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v2, "pref_key_urllink_option_enable"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mURLlinkPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mURLlinkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public deleteBubbleBackgroundStyle()V
    .locals 5

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.mms/"

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceManager()Landroid/preference/PreferenceManager;
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->isMultiSIM:Z

    if-eqz v2, :cond_2

    const v2, 0x7f060013

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableMmsAllPageBubble()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "pref_key_storage_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    const-string v3, "pref_key_truncate_long_messages"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mServiceLoadingActionName:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMessageBubbleStyleName:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsPreferences()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsPreferences()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setOthersPreferences()V

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->simStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_2
    const v2, 0x7f060012

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$9;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$9;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0c0053

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v2
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->simStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->airplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRingtoneStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSDCardMountStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mGroupMms:Landroid/preference/CheckBoxPreference;

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagePickerDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPickerDialog:Lcom/android/mms/ui/MessagePickerDialog;

    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setVibrateMenu()V

    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    new-instance v1, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->cmasPreviewDialog:Lcom/android/mms/ui/CMASPreviewDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASPreviewDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "Mms/MessagingPreferenceActivity"

    const-string v2, "onPause - pref is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    if-ne v1, p1, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCallbackNumber(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmsLimitMessagePickerDialog()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    return v8

    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showMmsLimitMessagePickerDialog()V

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    if-ne p2, v8, :cond_3

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "pref_key_cmas"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_4

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/CMASPreferenceActivity;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "pref_key_emergency_alert"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_5

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showCMASPreviewDialog()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "pref_key_explain_emergency_alert"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_6

    const-string v8, "Mms/MessagingPreferenceActivity"

    const-string v9, "onPreferenceTreeClick key : pref_key_explain_emergency_alert"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showCMASExplainDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "pref_cmas_receive_class1"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_7

    const-string v8, "Mms/MessagingPreferenceActivity"

    const-string v9, "onPreferenceTreeClick key : pref_cmas_receive_class1"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v6, v9}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v8, "Mms/MessagingPreferenceActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error in setCMAS config "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v8, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_8

    invoke-virtual {p2}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v8, "pref_key_font_size_by_volume_key_font_size"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_8
    const-string v8, "pref_key_manage_SD_messages"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_a

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/ManageSDMessages;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_9
    new-instance v8, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmSDcardDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_a
    const-string v8, "pref_key_spam_num_add"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_b

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/spam/SetupSpamNumberList;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_b
    const-string v8, "pref_key_spam_text_add"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_c

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/spam/SetupSpamKeywordList;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_f

    const-string v8, "pref_key_mms_allow_reply_all"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v8, "pref_key_mms_allow_reply_all"

    const/4 v9, 0x1

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_d
    :goto_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_e
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-nez v8, :cond_d

    const-string v8, "pref_key_mms_allow_reply_all"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_f
    const-string v8, "pref_key_sms_reassembly"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_10

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v7

    const-class v8, Landroid/telephony/SmsManager;

    const-string v9, "setCDMASmsReassembly"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v7, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "pref_key_sms_reassembly"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v5, v8}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_10
    const-string v8, "pref_key_enable_notifications"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_11

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->updateNotificationAlert()V

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v8

    if-eqz v8, :cond_12

    const-string v8, "pref_key_sms_restore"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_12

    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/samsung/mms/ui/SavedMsgsList;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "mode"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_12
    const-string v8, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_13

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_0

    :cond_13
    const-string v8, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_14

    iget-boolean v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->isMultiSIM:Z

    if-eqz v8, :cond_14

    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/settings/MessageSmscActivityDS;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "pref_key_mms_group_mms"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    if-ne p2, v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mGroupMms:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mGroupMms:Landroid/preference/CheckBoxPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v8, Lcom/android/mms/ui/MessagingPreferenceActivity$6;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$6;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmGroupMmsDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 5

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GATE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MessagingPreferenceActivity.onResume : android.util.GateConfig.isGateEnabled() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "Mms/MessagingPreferenceActivity"

    const-string v3, "onResume - pref is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSizeByVolumeKey()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p0}, Lcom/android/mms/util/PackageInfo;->isTalkBackAvailable(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->misTalkbackOn:Z

    iget-boolean v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->misTalkbackOn:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setVibrateMenu()V

    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceSummary()V

    return-void

    :cond_2
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "Mms/MessagingPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSharedPreferenceChanged key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pref_key_cb_settings_activation"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCDMACMASEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCdmaCmasOverLte()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v5}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "pref_key_mms_delivery_reports"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_mms_delivery_reports"

    invoke-interface {p1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v2, "GATE"

    const-string v3, "<GATE-M>DELIVERY_REPORT_OFF</GATE-M>"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "GATE"

    const-string v3, "<GATE-M>DELIVERY_REPORT_ON</GATE-M>"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v2, "pref_key_service_loading_action"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setServiceLoadingSummary(Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_5
    const-string v2, "pref_key_emergency_alert_reminder"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setCmasReminderSummary(Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_6
    const-string v2, "pref_key_msg_reminder_alert"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessageRepetitionSummary(Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_7
    const-string v2, "pref_key_mms_creation_mode"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "pref_key_mms_creation_mode"

    const-string v3, "free"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/mms/MmsConfig;->setMaxMessageSize(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v2, "pref_key_msg_delay_sending"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMessageDealySummary(Landroid/content/SharedPreferences;)V

    goto :goto_0

    :cond_9
    const-string v2, "pref_key_priority_sender"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "pref_key_priority_sender"

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/mms/prioritysender/SmartAssistant;->removeAllCards(Landroid/content/Context;)Z

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 9

    invoke-static {}, Lcom/android/mms/MmsConfig;->isUnknownURLlink()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v8, "URLinkCall"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string v8, "URL_LINK_SETTING"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "pref_key_urllink_settings"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setSelection(I)V

    const-string v8, "URLinkCall"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setMmsPreferences()V
    .locals 3

    const-string v1, "pref_key_mms_auto_retrieval"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsAutoRetrievialPref:Landroid/preference/CheckBoxPreference;

    const-string v1, "pref_key_mms_delivery_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    const-string v1, "pref_key_send_mms_delivery_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsSendDeliveryReportPref:Landroid/preference/Preference;

    const-string v1, "pref_key_mms_read_reports"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    const-string v1, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    const-string v1, "pref_key_mms_expiry_time"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryTimePref:Landroid/preference/Preference;

    const-string v1, "pref_key_mmspriority"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriorityPref:Landroid/preference/Preference;

    const-string v1, "pref_key_mms_delivery_time"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryTimePref:Landroid/preference/Preference;

    const-string v1, "pref_mmsc_url"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCUrlPref:Landroid/preference/Preference;

    const-string v1, "pref_mmsc_port"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCPortPref:Landroid/preference/Preference;

    const-string v1, "pref_key_mms_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "pref_key_mms_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v1, "pref_key_storage_settings"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitPref:Landroid/preference/Preference;

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "pref_key_mms_group_mms"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSDeliveryReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSSendDeliveryReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsSendDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMMSReadReportsEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMoveReadNDeliverySettingToComposer()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsReadReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRetrievalDuringRoaming()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "pref_key_mms_retrieval_during_roaming"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsCreationMode()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsExpiryDate()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsExpiryTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsPriority()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsPriorityPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsDeliveryTime()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryTimePref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuMmsServerAddr()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCUrlPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsMMSCPortPref:Landroid/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNGMGroupMessage()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_d
    const-string v1, "pref_key_mms_allow_reply_all"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mReplyAllPref:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsParamsForChn()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "pref_key_mms_group_mms"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mGroupMms:Landroid/preference/CheckBoxPreference;

    :cond_e
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsDeliveryReportPref:Landroid/preference/Preference;

    const v2, 0x7f0c0271

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected setOthersPreferences()V
    .locals 15

    const/4 v14, 0x6

    const/4 v13, 0x1

    const/4 v12, 0x5

    const-string v10, "pref_key_vibrateWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    const-string v10, "pref_key_enable_popup_reply"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMsgPopupPref:Landroid/preference/CheckBoxPreference;

    const-string v10, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCmasVibrateWhenPref:Landroid/preference/CheckBoxPreference;

    const-string v10, "pref_key_urllink_option_enable"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mURLlinkPref:Landroid/preference/CheckBoxPreference;

    const-string v10, "pref_key_callback_text"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/EditTextPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    const-string v10, "pref_key_spam_option"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/ListPreference;

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSpamOption:Landroid/preference/ListPreference;

    const-string v10, "pref_key_sms_restore"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRestoreSDPref:Landroid/preference/Preference;

    const-string v10, "pref_key_display_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    const-string v10, "pref_key_insert_sender_info_when_fwd_msg_category"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v10, "pref_key_font_size"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/FontSizePreference;

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFontSizeByVolumeKey()Z

    move-result v10

    if-nez v10, :cond_12

    const-string v10, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v5, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "pref_key_split_view"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableWapPush()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_push_message_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-direct {p0, v10, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_3
    const-string v10, "pref_key_cb_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBMessage()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-eq v10, v12, :cond_14

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-direct {p0, v10, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_5
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v10

    if-ne v10, v12, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    if-ne v10, v14, :cond_6

    const-string v10, "pref_key_cb_settings_activation"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v10, "pref_key_channel_configuration"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v10, "pref_key_channel_configuration"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_6
    const-string v10, "pref_notification_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationBacklight()Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "pref_key_backlight"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    if-eq v10, v14, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_15

    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_cmas_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isUnknownURLlink()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_urllink_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationPopup()Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMsgPopupPref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v2, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMessageReminderAlert()Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "pref_key_msg_reminder_alert"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_signature_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_callback_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableTexttemplatTMOMenu()Z

    move-result v10

    if-eqz v10, :cond_d

    const-string v10, "pref_key_storage_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    const-string v11, "pref_key_text_templates"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_d
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-nez v10, :cond_e

    const-string v10, "pref_key_storage_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    const-string v11, "pref_key_sms_restore"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_spam_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    :cond_f
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableConvertingEffectBetweenSMSMMS()Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "pref_key_mms_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    const-string v10, "pref_key_mms_change_over_alarm"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v1, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "pref_key_storage_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mRestoreSDPref:Landroid/preference/Preference;

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_11
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setVibrateMenu()V

    return-void

    :cond_12
    const-string v10, "EK-GC100"

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "pref_key_font_size_by_volume_key_enable"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_0

    const v10, 0x7f0c0280

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v10, 0x7f0c027f

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableServiceLoading()Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "pref_key_push_message_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    const-string v10, "pref_key_service_loading_action"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_1

    :cond_14
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel()Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "pref_key_channel_configuration"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v3, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_2

    :cond_15
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_16

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    if-ne v10, v13, :cond_17

    :cond_16
    const-string v10, "pref_cmas_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    const-string v10, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v10

    if-eqz v10, :cond_17

    const-string v10, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    if-eq v10, v12, :cond_18

    const-string v10, "pref_cmas_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    const-string v10, "pref_key_cmas_audioWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->isKORCMASFeatureEnabled()Z

    move-result v10

    if-eqz v10, :cond_19

    const-string v10, "pref_cmas_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    const-string v10, "pref_key_cmas"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v10, "pref_key_emergency_alert"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, "pref_cmas_receive_class1"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v10, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, "pref_cmas_receive_class1"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v10, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const-string v11, "pref_cmas_receive_class1"

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_19
    const-string v10, "pref_cmas_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    const-string v10, "pref_cmas_receive_class1"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v10, "pref_key_explain_emergency_alert"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-direct {p0, v4, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_3

    :cond_1a
    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mCallbackNumberPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_4

    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_spam_settings"

    invoke-virtual {p0, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_5

    :cond_1c
    const-string v10, "pref_key_spam_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSpamOption:Landroid/preference/ListPreference;

    invoke-direct {p0, v8, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_5
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method protected setSmsPreferences()V
    .locals 9

    const/16 v8, 0x14

    const/4 v5, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v4, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    const-string v4, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitPref:Landroid/preference/Preference;

    const-string v4, "pref_key_sms_delivery_reports"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    const-string v4, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    const-string v4, "pref_key_manage_SD_messages"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    const-string v4, "pref_key_sms_settings"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSMSDeliveryReportsEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableManageSimMessages()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eq v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSimPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mManageSDPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_4
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSC()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eq v4, v5, :cond_b

    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_6
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsInputMode()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "pref_key_sms_input_mode"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsExpiryDate()Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "pref_key_sms_expiry"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "pref_key_sms_reassembly"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    :cond_9
    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v4, "Mms/MessagingPreferenceActivity"

    const-string v5, "Removed sms categroy because it has 0 items."

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-void

    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto :goto_0

    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableSmscEditableOnlyFor()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/util/TelephonyUtils;->isNotKorUsim(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v4, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;

    invoke-direct {v4, p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V

    aput-object v4, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRTSReject()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isKTSIM()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, v6}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscAddrPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-array v1, v6, [Landroid/text/InputFilter;

    new-instance v4, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;

    invoke-direct {v4, p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity$SMSCLengthFilter;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V

    aput-object v4, v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "44010"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsDeliveryReportPref:Landroid/preference/Preference;

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    const-string v4, "pref_key_sms_expiry"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_1
.end method

.method updateNotificationAlert()V
    .locals 6

    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    const-string v5, "pref_key_cmas_vibrateWhen_checkbox"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v4, "pref_key_emergency_alert_reminder"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v4, "pref_key_enable_notifications"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
