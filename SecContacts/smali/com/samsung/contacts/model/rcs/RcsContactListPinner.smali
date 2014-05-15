.class public Lcom/samsung/contacts/model/rcs/RcsContactListPinner;
.super Ljava/lang/Object;
.source "RcsContactListPinner.java"


# static fields
.field private static mNeedQuery:Z


# instance fields
.field mContext:Landroid/content/Context;

.field mIsRcsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mRcsStateObserver:Landroid/database/ContentObserver;

.field mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mIsRcsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/model/rcs/RcsContactListPinner$1;-><init>(Lcom/samsung/contacts/model/rcs/RcsContactListPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner$2;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/model/rcs/RcsContactListPinner$2;-><init>(Lcom/samsung/contacts/model/rcs/RcsContactListPinner;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    return v0
.end method

.method private recycleView(Landroid/view/View;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView;

    iget-object v4, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    if-nez v4, :cond_1

    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget v5, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsItemPosition:I

    invoke-virtual {v4, v5}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_0

    const-string v4, "RcsContactListPinner"

    const-string v5, "View not present in cache"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object v3, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    iput v6, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsIconPosition:I

    iput v6, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsItemPosition:I

    iput-object v3, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    return-void

    :cond_1
    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static setNeedRCSQuery(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    return-void
.end method


# virtual methods
.method isRcsInCache(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    const-string v1, "RcsContactListPinner"

    const-string v2, "isRcsInCache"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mIsRcsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public pinBindViewEnd(Landroid/view/View;)V
    .locals 4

    const-string v1, "RcsContactListPinner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pinBindViewEnd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    if-nez v1, :cond_1

    const-string v1, "RcsContactListPinner"

    const-string v2, "pinBindViewEnd, onChange, No need to query"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView;

    iget-object v1, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    const-string v1, "RcsContactListPinner"

    const-string v2, "pinBindViewEnd, rcsCache.mRcsServiceLookupUri != null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsItemPosition:I

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, p1}, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->queryRcs(ILandroid/net/Uri;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->updateView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const-string v1, "RcsContactListPinner"

    const-string v2, "pinBindViewEnd, rcsCache.mRcsIconView != null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public pinGetViewBeforeBindView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/net/Uri;)V
    .locals 3

    const-string v1, "RcsContactListPinner"

    const-string v2, "pinGetViewBeforeBindView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "RcsContactListPinner"

    const-string v2, "pinGetViewBeforeBindView, contactUri is not null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->recycleView(Landroid/view/View;)V

    move-object v0, p2

    check-cast v0, Lcom/android/contacts/common/list/ContactListItemView;

    iput p1, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsItemPosition:I

    invoke-static {p4}, Lcom/samsung/contacts/model/rcs/RcsUriUtils;->rcsServiceUriFromContactLookupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    iget-object v1, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->addOptionsToQuery(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/android/contacts/common/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method queryRcs(ILandroid/net/Uri;Landroid/view/View;)V
    .locals 8

    const/4 v4, 0x0

    const-string v0, "RcsContactListPinner"

    const-string v1, "queryRcs"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    move v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateView(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/common/list/ContactListItemView;

    const-string v2, "RcsContactListPinner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView, lookupUri is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/contacts/common/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/contacts/common/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/model/rcs/RcsContactListPinner;->isRcsInCache(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v2, v1, Lcom/android/contacts/common/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    const-string v2, "RcsContactListPinner"

    const-string v3, "updateView, isRCS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/contacts/common/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/contacts/common/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-string v2, "RcsContactListPinner"

    const-string v3, "updateView, is not RCS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/contacts/common/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v2, "RcsContactListPinner"

    const-string v3, "updateView, rcsCache.mRcsIconView == null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
