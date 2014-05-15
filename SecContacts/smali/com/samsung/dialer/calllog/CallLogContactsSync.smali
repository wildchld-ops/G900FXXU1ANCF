.class public Lcom/samsung/dialer/calllog/CallLogContactsSync;
.super Ljava/lang/Object;
.source "CallLogContactsSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;,
        Lcom/samsung/dialer/calllog/CallLogContactsSync$CallLogNotify;
    }
.end annotation


# instance fields
.field private final mCallLogNotify:Lcom/samsung/dialer/calllog/CallLogContactsSync$CallLogNotify;

.field public mCallerIdThread:Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;

.field public mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/util/ExpirableCache",
            "<",
            "Lcom/samsung/dialer/calllog/NumberWithCountryIso;",
            "Lcom/android/dialer/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private mContext:Landroid/content/Context;

.field private mCustomer:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field public volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/samsung/dialer/calllog/ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/samsung/dialer/calllog/CallLogContactsSync$CallLogNotify;Ljava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequestProcessingDisabled:Z

    new-instance v0, Lcom/samsung/dialer/calllog/CallLogContactsSync$1;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/calllog/CallLogContactsSync$1;-><init>(Lcom/samsung/dialer/calllog/CallLogContactsSync;)V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mHandler:Landroid/os/Handler;

    const-string v0, "CallLogContactsSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create CallLogContactsSync, customer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequests:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    iput-object p3, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallLogNotify:Lcom/samsung/dialer/calllog/CallLogContactsSync$CallLogNotify;

    iput-object p4, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCustomer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/dialer/calllog/CallLogContactsSync;)Lcom/samsung/dialer/calllog/CallLogContactsSync$CallLogNotify;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallLogNotify:Lcom/samsung/dialer/calllog/CallLogContactsSync$CallLogNotify;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/dialer/calllog/CallLogContactsSync;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->startRequestProcessing()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/dialer/calllog/CallLogContactsSync;)I
    .locals 1

    iget v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mScrollState:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/dialer/calllog/CallLogContactsSync;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/dialer/calllog/CallLogContactsSync;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/dialer/calllog/CallLogContactsSync;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v4, p1, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    new-instance v2, Lcom/samsung/dialer/calllog/NumberWithCountryIso;

    invoke-direct {v2, p1, p2}, Lcom/samsung/dialer/calllog/NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v4, v2}, Lcom/android/dialer/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/ContactInfo;

    sget-object v4, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-eq v0, v4, :cond_1

    invoke-virtual {v1, v0}, Lcom/android/dialer/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v4, v2, v1}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)V

    goto :goto_0
.end method

.method private declared-synchronized startRequestProcessing()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;

    invoke-direct {v0, p0}, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;-><init>(Lcom/samsung/dialer/calllog/CallLogContactsSync;)V

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->setPriority(I)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 9

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p4, :cond_a

    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "name"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "CACHED_NAME"

    :cond_0
    iget v4, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v5, p4, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-eq v4, v5, :cond_1

    const-string v4, "numbertype"

    iget v5, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    const-string v2, "CACHED_NUMBER_TYPE"

    :cond_1
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "numberlabel"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "CallLogContactsSync"

    const-string v5, "CACHED_NUMBER_LABEL, updatedInfo.label"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p4, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "CallLogContactsSync"

    const-string v5, "CACHED_NUMBER_LABEL, callLogInfo.label"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "CACHED_NUMBER_LABEL"

    :cond_4
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "lookup_uri"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "CACHED_LOOKUP_URI"

    :cond_5
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "matched_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "CACHED_MATCHED_NUMBER"

    :cond_6
    iget-wide v4, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    iget-wide v6, p4, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7

    const-string v4, "photo_id"

    iget-wide v5, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    const-string v2, "CACHED_PHOTO_ID"

    :cond_7
    iget-object v4, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v5, p4, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "formatted_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "CACHED_FORMATTED_NUMBER"

    :cond_8
    iget v4, p3, Lcom/android/dialer/calllog/ContactInfo;->contactId:I

    iget v5, p4, Lcom/android/dialer/calllog/ContactInfo;->contactId:I

    if-eq v4, v5, :cond_9

    const-string v4, "contactid"

    iget v5, p3, Lcom/android/dialer/calllog/ContactInfo;->contactId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    const-string v2, "contactid"

    :cond_9
    :goto_0
    if-nez v1, :cond_b

    :goto_1
    return-void

    :cond_a
    const-string v4, "name"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "numbertype"

    iget v5, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "numberlabel"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lookup_uri"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "matched_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "normalized_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "photo_id"

    iget-wide v5, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "formatted_number"

    iget-object v5, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "contactid"

    iget v5, p3, Lcom/android/dialer/calllog/ContactInfo;->contactId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    const-string v4, "CallLogContactsSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallLogContactInfoCache, JUST, customer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCustomer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_b
    if-eqz p4, :cond_c

    const-string v4, "CallLogContactsSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallLogContactInfoCache, UPDATE, customer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCustomer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p4, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", update : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-nez p2, :cond_d

    :try_start_0
    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/dialer/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v6, "number = ? AND countryiso IS NULL"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto/16 :goto_1

    :cond_c
    const-string v4, "CallLogContactsSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallLogContactInfoCache, UPDATE, customer : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCustomer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", update : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_d
    :try_start_1
    iget-object v4, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/dialer/calllog/LogsDBProvider;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v6, "number = ? AND countryiso = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method public callLogInfoMatches(Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;ZI)V
    .locals 5

    iput p5, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mScrollState:I

    new-instance v0, Lcom/samsung/dialer/calllog/ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/dialer/calllog/ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V

    iget-object v2, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CallLogContactsSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueRequest, number : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    invoke-direct {p0}, Lcom/samsung/dialer/calllog/CallLogContactsSync;->startRequestProcessing()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 4

    new-instance v0, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/dialer/calllog/ContactInfo;->contactId:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    const/16 v2, 0x13

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public sendEmptyMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendEmptyMessageDelayed()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public declared-synchronized stopRequestProcessing()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->stopProcessing()V

    iget-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;

    invoke-virtual {v0}, Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/calllog/CallLogContactsSync;->mCallerIdThread:Lcom/samsung/dialer/calllog/CallLogContactsSync$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
