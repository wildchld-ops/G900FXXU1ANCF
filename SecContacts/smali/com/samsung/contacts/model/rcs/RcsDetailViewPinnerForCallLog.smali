.class public Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;
.super Ljava/lang/Object;
.source "RcsDetailViewPinnerForCallLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field isRcs:Z

.field mActivity:Lcom/android/dialer/CallDetailActivity;

.field mCallDetail:Landroid/view/View;

.field mCallDetailLand:Landroid/view/View;

.field mFtButton:Landroid/widget/Button;

.field mFtIntent:Landroid/content/Intent;

.field mFtSeperator:Landroid/view/View;

.field mImButton:Landroid/widget/Button;

.field mImIntent:Landroid/content/Intent;

.field mImSeperator:Landroid/view/View;

.field mIsFTEnabled:Z

.field mIsIMEnabled:Z

.field mIsObserverRegisted:Z

.field private mIsOwnFtCapable:Z

.field private mQueryUri:Landroid/net/Uri;

.field mRcsCursor:Landroid/database/Cursor;

.field private mRcsServiceObserver:Landroid/database/ContentObserver;

.field private mRcsServiceOwnObserver:Landroid/database/ContentObserver;

.field private mTelNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/dialer/CallDetailActivity;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    iput-boolean v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetailLand:Landroid/view/View;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mTelNumber:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsOwnFtCapable:Z

    iput-object p1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/android/dialer/CallDetailActivity;

    new-instance v0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$RcsServiceObserver;-><init>(Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$1;-><init>(Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->extractUIComponets()V

    return-void
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method extractUIComponets()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/android/dialer/CallDetailActivity;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Lcom/android/dialer/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    const v1, 0x7f0802a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtSeperator:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    const v1, 0x7f08029e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImSeperator:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    const v1, 0x7f0802a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mCallDetail:Landroid/view/View;

    const v1, 0x7f08029f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$2;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$2;-><init>(Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    new-instance v1, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$3;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog$3;-><init>(Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public generateTelUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v2, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v3, "generateTelUri(%s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null telephone number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/android/dialer/CallDetailActivity;

    invoke-static {v2}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public pinFillDataAtTheEnd(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mTelNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->query()V

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->registerObserver()V

    invoke-virtual {p0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->readDataFromQuery()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->updateUi()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    goto :goto_0
.end method

.method public pinOnDestroy()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method query()V
    .locals 6

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v1, "query"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->SIP_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mTelNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mQueryUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mQueryUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->queryOwn()V

    :cond_1
    return-void
.end method

.method queryOwn()V
    .locals 8

    sget-object v0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v1, "queryOwn"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsOwnFtCapable:Z

    sget-object v0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v1, "queryOwn : ownCursor == null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v7}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->readDataFromQueryOwn(Landroid/database/Cursor;)V

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOwn : RCS Query Failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readDataFromQuery()V
    .locals 15

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    iput-boolean v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    iput-object v12, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImIntent:Landroid/content/Intent;

    iput-object v12, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtIntent:Landroid/content/Intent;

    sget-object v11, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v12, "readDataFromQuery"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "feature_tag"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "is_enabled"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "int_name"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "int_category"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    const-string v12, "sip_uri"

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    :cond_0
    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v11, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tag : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", enabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_2

    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sip_uri : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v2, v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iput-boolean v14, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    iput-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImIntent:Landroid/content/Intent;

    :cond_1
    const-string v11, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iput-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtIntent:Landroid/content/Intent;

    iput-boolean v14, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    :cond_2
    iget-object v11, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsCursor:Landroid/database/Cursor;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_0

    :cond_3
    return-void
.end method

.method readDataFromQueryOwn(Landroid/database/Cursor;)V
    .locals 7

    sget-object v4, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    const-string v5, "readDataFromQueryOwn"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "feature_tag"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v4, "is_enabled"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v4, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDataFromQueryOwn tag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-lez v0, :cond_0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsOwnFtCapable:Z

    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsOwnFtCapable:Z

    goto :goto_0
.end method

.method registerObserver()V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mQueryUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mActivity:Lcom/android/dialer/CallDetailActivity;

    invoke-virtual {v0}, Lcom/android/dialer/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->SERVICE_OWN_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsObserverRegisted:Z

    :cond_0
    return-void
.end method

.method updateUi()V
    .locals 4

    const/4 v0, 0x1

    const/16 v3, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->extractUIComponets()V

    iget-boolean v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->isRcs:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImSeperator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtSeperator:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsIMEnabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsFTEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mIsOwnFtCapable:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImSeperator:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtSeperator:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mImButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/contacts/model/rcs/RcsDetailViewPinnerForCallLog;->mFtButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
