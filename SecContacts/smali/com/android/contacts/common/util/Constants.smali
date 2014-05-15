.class public interface abstract Lcom/android/contacts/common/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ADN2_ANR_URI:Landroid/net/Uri;

.field public static final ADN2_EMAILS_URI:Landroid/net/Uri;

.field public static final ADN2_URI:Landroid/net/Uri;

.field public static final ADN_ANR_URI:Landroid/net/Uri;

.field public static final ADN_EMAILS_URI:Landroid/net/Uri;

.field public static final ADN_URI:Landroid/net/Uri;

.field public static final RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ADN2_EMAILS_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ADN2_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ADN_EMAILS_URI:Landroid/net/Uri;

.field public static final RAW_CONTACT_ADN_URI:Landroid/net/Uri;

.field public static final SDN2_URI:Landroid/net/Uri;

.field public static final SDN_URI:Landroid/net/Uri;

.field public static final SETTINGS_STATUS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->RAW_CONTACT_ADN_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/raw_contacts/adn/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->RAW_CONTACT_ADN_EMAILS_URI:Landroid/net/Uri;

    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->ADN_URI:Landroid/net/Uri;

    const-string v0, "content://icc2/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->ADN2_URI:Landroid/net/Uri;

    const-string v0, "content://icc/sdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->SDN_URI:Landroid/net/Uri;

    const-string v0, "content://icc2/sdn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->SDN2_URI:Landroid/net/Uri;

    const-string v0, "content://icc/adn/init"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->ADN_ANR_URI:Landroid/net/Uri;

    const-string v0, "content://icc2/adn/init"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->ADN2_ANR_URI:Landroid/net/Uri;

    const-string v0, "content://icc/adn/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->ADN_EMAILS_URI:Landroid/net/Uri;

    const-string v0, "content://icc2/adn/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->ADN2_EMAILS_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/raw_contacts/adn2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->RAW_CONTACT_ADN2_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/raw_contacts/adn2/emails"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->RAW_CONTACT_ADN2_EMAILS_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/settings_status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->SETTINGS_STATUS_URI:Landroid/net/Uri;

    const-string v0, "content://com.android.contacts/raw_contacts/wipe_out"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/util/Constants;->RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

    return-void
.end method
