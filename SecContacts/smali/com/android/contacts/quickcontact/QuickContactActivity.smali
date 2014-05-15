.class public Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Landroid/app/Activity;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$GALContactQuery;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$DirectoryQuery;
    }
.end annotation


# static fields
.field private static final LEADING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRAILING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtnContainer:Landroid/view/View;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mCompanyName:Lcom/samsung/contacts/widget/StrokeTextView;

.field private mContact:Lcom/android/contacts/model/Contact;

.field private mContactLoader:Lcom/android/contacts/model/ContactLoader;

.field private mCreateExtras:Landroid/os/Bundle;

.field private mCurrentMode:I

.field private mDefaultPhotoView:Landroid/widget/ImageView;

.field private mDefaultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectoryIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEASHandler:Landroid/os/Handler;

.field private mEmptyView:Landroid/view/View;

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFeatureGrupper:Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;

.field private mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

.field private mGalContactId:J

.field private mHasEASAccount:Z

.field private mHasIpCall:Z

.field private mHasMultiSimCall:Z

.field private mHasPhone:Z

.field private mHasSms:Z

.field private mHasVideoCall:Z

.field private mIsEASDataLoaded:Z

.field private mIsEASMode:Z

.field private mIsEasyMode:Z

.field private mIsEmailCreateMode:Z

.field private mIsProfile:Z

.field private mIsRCSeObserverRegisted:Z

.field private mIsVoLTEEnabled:Z

.field private mLineAfterTrack:Landroid/view/View;

.field private mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

.field private final mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private mListPager:Landroid/support/v4/view/ViewPager;

.field private mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mLookupUri:Landroid/net/Uri;

.field private mName:Lcom/samsung/contacts/widget/StrokeTextView;

.field private mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

.field private mPagerAdapter:Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

.field private mPhotoInterceptView:Landroid/view/View;

.field private final mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRCSeCapsObserver:Landroid/database/ContentObserver;

.field private mRCSeOwnObserver:Landroid/database/ContentObserver;

.field private mRcsActionMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsCapsData:Lcom/samsung/contacts/model/rcs/RcsCaps;

.field private final mRcsCapsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/samsung/contacts/model/rcs/RcsCaps;",
            ">;"
        }
    .end annotation
.end field

.field private final mRcsTypeViewClickListener:Landroid/view/View$OnClickListener;

.field private mRcsViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mScheme:Ljava/lang/String;

.field private mSelectedTabRectangle:Landroid/view/View;

.field private mShowOrCreateMode:Z

.field private mSortedActionMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSsp:Ljava/lang/String;

.field private mStarImage:Landroid/widget/ImageView;

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackScroller:Landroid/widget/HorizontalScrollView;

.field private final mTypeViewClickListener:Landroid/view/View$OnClickListener;

.field private mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

.field private mphotoContainer:Landroid/widget/RelativeLayout;

.field private mphotoView:Lcom/samsung/contacts/widget/ContactPhotoView;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/im"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v4

    const-string v1, "linkedIn"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsCapsData:Lcom/samsung/contacts/model/rcs/RcsCaps;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRCSeCapsObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRCSeOwnObserver:Landroid/database/ContentObserver;

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsRCSeObserverRegisted:Z

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsProfile:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mGalContactId:J

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDirectoryIds:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEASHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/util/ImageViewDrawableSetter;

    invoke-direct {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-direct {v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    iput-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsVoLTEEnabled:Z

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$8;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$9;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsTypeViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$10;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$10;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$11;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$11;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$12;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$12;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsCapsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startLoading()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->handleOutsideTouch()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASDataLoaded:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASDataLoaded:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/model/Contact;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ActionMultiMap;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/quickcontact/QuickContactActivity;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getDimensionValuesByRoundOff(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2102(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/samsung/contacts/model/rcs/RcsCaps;)Lcom/samsung/contacts/model/rcs/RcsCaps;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsCapsData:Lcom/samsung/contacts/model/rcs/RcsCaps;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/Contact;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->verifyIsEasAddress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/ContactLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    return p1
.end method

.method private bindData(Lcom/android/contacts/model/Contact;)V
    .locals 18

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v9

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getDisplayNameSource()I

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mphotoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCompanyName:Lcom/samsung/contacts/widget/StrokeTextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v5}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setCompanyName(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;Landroid/view/View;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/widget/ContactPhotoView;->hasCompanyName(Z)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mName:Lcom/samsung/contacts/widget/StrokeTextView;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->setDisplayName(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/TextView;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getStarred()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/ImageView;

    const v4, 0x7f020240

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->isEncodedContactUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->isSim()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mphotoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setupContactPhoto(Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getStarred()Z

    move-result v2

    if-eqz v2, :cond_15

    const v2, 0x7f0e0037

    :goto_3
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mphotoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    if-nez v2, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->showForShowOrCreate()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoInterceptView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoInterceptView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoInterceptView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultPhotoView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mName:Lcom/samsung/contacts/widget/StrokeTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/widget/StrokeTextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCompanyName:Lcom/samsung/contacts/widget/StrokeTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/widget/StrokeTextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b016e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b016f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mphotoContainer:Landroid/widget/RelativeLayout;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-nez v2, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/contacts/model/RawContact;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/dataitem/DataItem;

    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/contacts/model/RawContact;->getAccountType(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v5

    iget-object v6, v3, Lcom/android/contacts/common/model/account/AccountType;->accountType:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/contacts/common/model/account/AccountType;->dataSet:Ljava/lang/String;

    invoke-virtual {v5, v6, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/DataItem;->isPrimary()Z

    move-result v14

    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v15

    if-eqz v6, :cond_e

    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2, v6, v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v15}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v15, :cond_5

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    if-eqz v3, :cond_e

    move-object v3, v2

    check-cast v3, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasVideoCall:Z

    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    new-instance v5, Lcom/android/contacts/quickcontact/DataAction;

    const-string v7, "vnd.android.cursor.item/video-call"

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v6, v7}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    sget-object v7, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const-string v16, "vnd.android.cursor.item/video-call"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    sget-object v7, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const/16 v16, 0x1

    const-string v17, "vnd.android.cursor.item/video-call"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v7, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v15}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIpCall:Z

    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    new-instance v5, Lcom/android/contacts/quickcontact/DataAction;

    const-string v7, "vnd.android.cursor.item/ip-call"

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v6, v7}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    sget-object v7, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const-string v16, "vnd.android.cursor.item/ip-call"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    sget-object v7, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const/16 v16, 0x1

    const-string v17, "vnd.android.cursor.item/ip-call"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v7, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v15}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasMultiSimCall:Z

    if-eqz v5, :cond_e

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v7}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v7}, Lcom/android/contacts/quickcontact/ActionMultiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    new-instance v5, Lcom/android/contacts/quickcontact/DataAction;

    const-string v7, "vnd.sec.contact.sim2"

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v6, v7}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    sget-object v7, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const-string v16, "vnd.sec.contact.sim2"

    move-object/from16 v0, v16

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    sget-object v7, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const/16 v16, 0x1

    const-string v17, "vnd.sec.contact.sim2"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v7, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v15}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    new-instance v5, Lcom/android/contacts/quickcontact/DataAction;

    const-string v7, "vnd.sec.contact.sim"

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3, v6, v7}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    sget-object v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const-string v7, "vnd.sec.contact.sim"

    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    sget-object v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const/4 v7, 0x1

    const-string v16, "vnd.sec.contact.sim"

    move-object/from16 v0, v16

    invoke-interface {v3, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v9, v15}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getStatuses()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/util/DataStatus;

    if-eqz v3, :cond_f

    instance-of v5, v2, Lcom/android/contacts/model/dataitem/EmailDataItem;

    if-eqz v5, :cond_f

    move-object v5, v2

    check-cast v5, Lcom/android/contacts/model/dataitem/EmailDataItem;

    invoke-static {v5}, Lcom/android/contacts/model/dataitem/ImDataItem;->createFromEmail(Lcom/android/contacts/model/dataitem/EmailDataItem;)Lcom/android/contacts/model/dataitem/ImDataItem;

    move-result-object v5

    if-eqz v6, :cond_f

    new-instance v7, Lcom/android/contacts/quickcontact/DataAction;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v5, v6, v12}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/contacts/quickcontact/DataAction;->setPresence(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v9, v15}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    :cond_f
    instance-of v3, v2, Lcom/android/contacts/model/dataitem/EmailDataItem;

    if-eqz v3, :cond_10

    move-object v3, v2

    check-cast v3, Lcom/android/contacts/model/dataitem/EmailDataItem;

    invoke-virtual {v3}, Lcom/android/contacts/model/dataitem/EmailDataItem;->getData()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/samsung/contacts/detail/SnsUserInfo$LINKEDIN_USER_INFO;->refreshUserInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_10
    const-string v3, "vnd.vapp.item/vnd.com.app.account"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    check-cast v2, Lcom/android/contacts/model/dataitem/ChatOnDataItem;

    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/ChatOnDataItem;->getAccountName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/contacts/model/dataitem/ChatOnDataItem;->getChatOnId()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sds.vapp.voipcall"

    invoke-virtual {v7, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "user_account"

    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "video_call"

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v15, :cond_11

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCompanyName:Lcom/samsung/contacts/widget/StrokeTextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/widget/StrokeTextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mphotoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/widget/ContactPhotoView;->hasCompanyName(Z)V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/ImageView;

    const v4, 0x7f02023d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v5, v0, v3, v2, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/net/Uri;ZLandroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_15
    const v2, 0x7f0e0036

    goto/16 :goto_3

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContact:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getPhotoBinaryData()[B

    move-result-object v2

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultPhotoView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoInterceptView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultPhotoView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    :cond_18
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getSnsUserInfos()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getSnsUserInfos()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/samsung/contacts/detail/SnsUserInfo;

    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    iget-object v4, v3, Lcom/samsung/contacts/detail/SnsUserInfo;->mimeType:Ljava/lang/String;

    iget-object v5, v3, Lcom/samsung/contacts/detail/SnsUserInfo;->headline:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/samsung/contacts/detail/SnsUserInfo;->profileIntent:Landroid/content/Intent;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    goto :goto_7

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    packed-switch v3, :pswitch_data_0

    :cond_1a
    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getSnsUserInfos()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getSnsUserInfos()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/samsung/contacts/detail/SnsUserInfo;

    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    iget-object v4, v3, Lcom/samsung/contacts/detail/SnsUserInfo;->mimeType:Ljava/lang/String;

    iget-object v5, v3, Lcom/samsung/contacts/detail/SnsUserInfo;->headline:Ljava/lang/String;

    iget-object v6, v3, Lcom/samsung/contacts/detail/SnsUserInfo;->name:Ljava/lang/String;

    iget-object v7, v3, Lcom/samsung/contacts/detail/SnsUserInfo;->profileIntent:Landroid/content/Intent;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    goto :goto_9

    :pswitch_0
    const-string v3, "vnd.sec.contact.phone"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v3

    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    const-string v4, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v3, v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasVideoCall:Z

    if-eqz v2, :cond_1c

    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    const-string v4, "vnd.android.cursor.item/video-call"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v3, v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const-string v5, "vnd.android.cursor.item/video-call"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const/4 v5, 0x1

    const-string v6, "vnd.android.cursor.item/video-call"

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIpCall:Z

    if-eqz v2, :cond_1e

    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    const-string v4, "vnd.android.cursor.item/ip-call"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v3, v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const-string v5, "vnd.android.cursor.item/ip-call"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const/4 v5, 0x1

    const-string v6, "vnd.android.cursor.item/ip-call"

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasMultiSimCall:Z

    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ActionMultiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    const-string v4, "vnd.sec.contact.sim2"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v3, v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const-string v5, "vnd.sec.contact.sim2"

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const/4 v5, 0x1

    const-string v6, "vnd.sec.contact.sim2"

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    const-string v4, "vnd.sec.contact.sim"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v3, v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    sget-object v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const-string v4, "vnd.sec.contact.sim"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    sget-object v3, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    const/4 v4, 0x1

    const-string v5, "vnd.sec.contact.sim"

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_21
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    goto/16 :goto_8

    :pswitch_1
    const-string v3, "vnd.sec.contact.phone"

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v4, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v2, v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/samsung/contacts/detail/SnsUserInfo$LINKEDIN_USER_INFO;->refreshUserInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_2
    const-string v3, "vnd.sec.contact.phone"

    const-string v4, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v2

    new-instance v3, Lcom/android/contacts/quickcontact/DataAction;

    const-string v4, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v2, v5}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v9, v2}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    goto/16 :goto_8

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ActionMultiMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/common/Collapser;->collapseList(Ljava/util/List;)V

    goto :goto_a

    :cond_23
    new-instance v4, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/ActionMultiMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v2, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_25
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v5, v2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v5, :cond_27

    aget-object v6, v2, v3

    sget-object v7, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_27
    sget-object v2, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v2

    :cond_2a
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_2b
    if-eqz v4, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f0300f1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v3, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_e

    :cond_2d
    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsCapsData:Lcom/samsung/contacts/model/rcs/RcsCaps;

    if-eqz v2, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->updateRcsData()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_f
    add-int/lit8 v3, v2, -0x1

    if-ltz v3, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_2e
    const-string v4, "QuickContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before RCSe actions are removed : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/contacts/quickcontact/ActionMultiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/Action;

    const-string v5, "QuickContact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed action is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "QuickContact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed action is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lcom/android/contacts/quickcontact/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v2, v3

    goto/16 :goto_f

    :cond_30
    const/4 v2, 0x0

    move v10, v2

    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300f1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/CheckableImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/CheckableImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    iget-object v2, v8, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->uris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$UriDescription;

    iget-object v2, v9, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$UriDescription;->displayUri:Ljava/lang/String;

    const-string v3, "sip:"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tel:"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    iget-object v4, v8, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    iget-object v6, v8, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->serviceName:Ljava/lang/String;

    iget-object v7, v9, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$UriDescription;->intent:Landroid/content/Intent;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    iget-object v4, v8, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;)V

    const-string v2, "QuickContact"

    const-string v3, "====== action information ======"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "QuickContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "QuickContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. mimetype : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "QuickContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3. service name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->serviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "QuickContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4. intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$UriDescription;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_31
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_11

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ge v2, v3, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300f1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPagerAdapter:Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;->notifyDataSetChanged()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    const/4 v2, 0x1

    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_35

    const/4 v3, 0x0

    :goto_14
    invoke-virtual {v4, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    if-eqz v2, :cond_36

    const/4 v3, 0x0

    :goto_15
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v2, :cond_37

    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->adjustLayout()V

    return-void

    :cond_34
    const/4 v2, 0x0

    goto :goto_13

    :cond_35
    const/16 v3, 0x8

    goto :goto_14

    :cond_36
    const/16 v3, 0x8

    goto :goto_15

    :cond_37
    const/16 v2, 0x8

    goto :goto_16

    :cond_38
    move v2, v3

    goto/16 :goto_f

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bindDataForShowOrCreate()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v0

    invoke-static {p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "vnd.sec.contact.phone"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    goto :goto_0

    :pswitch_1
    const-string v2, "vnd.sec.contact.phone"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    const-string v3, "vnd.android.cursor.item/email_v2"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    goto :goto_0

    :pswitch_2
    const-string v2, "vnd.sec.contact.phone"

    const-string v3, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v0, v2, v3}, Lcom/android/contacts/common/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/dataitem/DataKind;

    move-result-object v0

    new-instance v2, Lcom/android/contacts/quickcontact/DataAction;

    const-string v3, "vnd.android.cursor.item/sip_address"

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0, v4}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/common/model/dataitem/DataKind;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkEASAccount()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0e0232

    invoke-virtual {p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$15;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$15;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactActivity$16;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$16;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z
    .locals 2

    invoke-virtual {p2, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->hasResolve(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;Z)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    mul-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/CheckableImageView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDimensionValuesByRoundOff(I)I
    .locals 3

    const/high16 v2, 0x3f00

    if-gtz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x3f80

    rem-float v1, v0, v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    add-float/2addr v0, v2

    :cond_1
    float-to-int v0, v0

    goto :goto_0
.end method

.method private handleOutsideTouch()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->isContentFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    :cond_0
    return-void
.end method

.method private inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0300fc

    :goto_0
    invoke-virtual {v1, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v1, p1}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setTag(Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/Action;

    invoke-virtual {p2, v1, p4}, Lcom/android/contacts/quickcontact/ResolveCache;->getDescription(Lcom/android/contacts/quickcontact/Action;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v1}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v3}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/quickcontact/CheckableImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsVoLTEEnabled:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object v0

    :cond_2
    const v0, 0x7f0300fb

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02017f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private isEASAccountRegistered()Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/quickcontact/QuickContactActivity$DirectoryQuery;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/quickcontact/QuickContactActivity$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "accountType= \'com.android.exchange\'"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDirectoryIds:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDirectoryIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private registerRCSeObservers()V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsRCSeObserverRegisted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "QuickContact"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRCSeObservers, mLookupUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRCSeCapsObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$13;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRCSeCapsObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRCSeOwnObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$14;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity$14;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRCSeOwnObserver:Landroid/database/ContentObserver;

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/samsung/contacts/model/rcs/RcsUriUtils;->extractLookupPart(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->SERVICE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "QuickContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRCSeObservers, lookupString : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "QuickContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRCSeObservers, uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRCSeCapsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/contacts/model/rcs/ServiceProviderFields;->SERVICE_OWN_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRCSeOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsRCSeObserverRegisted:Z

    :cond_2
    return-void
.end method

.method private showForShowOrCreate()V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "exclude_mimes"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    const v0, 0x7f08028a

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mBtnContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mBtnContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mBtnContainer:Landroid/view/View;

    const v1, 0x7f08028b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mBtnContainer:Landroid/view/View;

    const v3, 0x7f08028c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsProfile:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0e00c7

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-boolean v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsProfile:Z

    if-eqz v3, :cond_1

    const/16 v2, 0x8

    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v2, v0, v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setClickListeners(Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindDataForShowOrCreate()V

    return-void
.end method

.method private startLoading()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/ContactLoader;

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;

    return-void
.end method

.method private unRegisterRCSeObservers()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsRCSeObserverRegisted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRCSeCapsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRCSeOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsRCSeObserverRegisted:Z

    :cond_0
    return-void
.end method

.method private verifyIsEasAddress()Z
    .locals 13

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDirectoryIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "directory"

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "limit"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/quickcontact/QuickContactActivity$GALContactQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "LIMIT 1"

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mGalContactId:J

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mGalContactId:J

    invoke-static {v2, v3, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v7

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_2
    :try_start_2
    const-string v2, "QuickContact"

    const-string v3, "EAS query canceled"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v9

    :goto_4
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v8

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public adjustLayout()V
    .locals 7

    const v6, 0x7f0b014e

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0b0165

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getDimensionValuesByRoundOff(I)I

    move-result v0

    invoke-direct {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getDimensionValuesByRoundOff(I)I

    move-result v3

    add-int v4, v0, v3

    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    add-int/lit8 v0, v1, -0x1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v1, v0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    if-eqz v0, :cond_6

    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v5, v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    move v3, v0

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    const v0, 0x7f0b014d

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v2, v3

    :cond_6
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    mul-int v1, v4, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_7

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getDimensionValuesByRoundOff(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_7
    return-void
.end method

.method public close(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->fadeOutBackground()V

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$6;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->hideContent(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    goto :goto_0
.end method

.method public getCreateExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    check-cast p1, Lcom/android/contacts/quickcontact/QuickContactListFragment;

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsVoLTEEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setVoLteEnabled(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/high16 v13, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v8, "is_invalid_uri"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasPhone:Z

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasSms:Z

    new-instance v7, Lcom/samsung/contacts/util/ContactVideoCallManager;

    invoke-direct {v7, p0}, Lcom/samsung/contacts/util/ContactVideoCallManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/samsung/contacts/util/ContactVideoCallManager;->isVideoCallButtonShow()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasVideoCall:Z

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableIpCall()Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasIpCall:Z

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/samsung/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/contacts/util/LoadCscFeatureUtils;->getEnableMultiSimContacts()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {p0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {p0}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/PhoneBookManageSim;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/samsung/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-nez v8, :cond_7

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasMultiSimCall:Z

    iget-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasPhone:Z

    invoke-static {v8}, Lcom/android/contacts/quickcontact/DataAction;->setPhoneAvailable(Z)V

    iget-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasSms:Z

    invoke-static {v8}, Lcom/android/contacts/quickcontact/DataAction;->setSmsAvailable(Z)V

    iget-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    invoke-static {v8}, Lcom/android/contacts/quickcontact/DataAction;->setIsEasyMode(Z)V

    iget-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    if-eqz v8, :cond_b

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v8, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v8, "isprofile"

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsProfile:Z

    :cond_0
    const-string v8, "scheme"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    const-string v8, "ssp"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    const-string v8, "mailto"

    iget-object v11, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x2

    iput v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v11, "email"

    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v11, "query"

    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v11, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v8, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    iput-boolean v9, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEmailCreateMode:Z

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isEASAccountRegistered()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasEASAccount:Z

    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    if-nez v8, :cond_3

    :cond_2
    iput-boolean v10, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    :cond_3
    :goto_3
    const-string v8, "exclude_mimes"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    iget-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEmailCreateMode:Z

    if-ne v8, v9, :cond_e

    iget-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mHasEASAccount:Z

    if-ne v8, v9, :cond_e

    if-eqz p1, :cond_d

    const-string v8, "is_eas_mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    const-string v8, "lookup_uri"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startLoading()V

    :goto_4
    invoke-static {p0}, Lcom/samsung/contacts/model/rcs/RcsUtils;->refreshRCSeSettingValue(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    new-instance v8, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;

    invoke-direct {v8}, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;-><init>()V

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startRcsCapsLoading()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v13, v13}, Landroid/view/Window;->setFlags(II)V

    const-string v8, "tutorial_mode_from_dialer"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_f

    const v8, 0x7f0300c3

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setContentView(I)V

    :goto_5
    const v8, 0x7f08003c

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/contacts/widget/ContactPhotoView;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mphotoView:Lcom/samsung/contacts/widget/ContactPhotoView;

    const v8, 0x7f080183

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultPhotoView:Landroid/widget/ImageView;

    const v8, 0x7f080267

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoInterceptView:Landroid/view/View;

    const v8, 0x7f080287

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mphotoContainer:Landroid/widget/RelativeLayout;

    const v8, 0x7f080222

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    const v8, 0x7f08028f

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const v8, 0x7f08028e

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/HorizontalScrollView;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    const v8, 0x7f080224

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/support/v4/view/ViewPager;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    const v8, 0x7f080290

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    const v8, 0x7f080223

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    const v8, 0x7f080289

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStarImage:Landroid/widget/ImageView;

    const v8, 0x7f080052

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/contacts/widget/StrokeTextView;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mName:Lcom/samsung/contacts/widget/StrokeTextView;

    const v8, 0x7f080288

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/contacts/widget/StrokeTextView;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCompanyName:Lcom/samsung/contacts/widget/StrokeTextView;

    const v8, 0x7f080231

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mEmptyView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v10, Lcom/android/contacts/quickcontact/QuickContactActivity$2;

    invoke-direct {v10, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v8, v10}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iget-object v10, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    invoke-virtual {v8, v10}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setCreateExtras(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iget-boolean v10, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsProfile:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setIsProfile(Ljava/lang/Boolean;)V

    new-instance v8, Lcom/android/contacts/quickcontact/QuickContactActivity$3;

    invoke-direct {v8, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsClickHandler:Landroid/view/View$OnClickListener;

    new-instance v8, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-direct {v8, p0, v10}, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/app/FragmentManager;)V

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPagerAdapter:Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    iget-object v10, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPagerAdapter:Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    invoke-virtual {v8, v10}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->disableBounceBack(Z)V

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v9, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    invoke-virtual {v1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v8, v6}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setChildTargetScreen(Landroid/graphics/Rect;)V

    :cond_5
    new-instance v8, Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct {v8, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "com.android.contacts.action.QUICK_CONTACT_DESTROY"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v8, 0x7f08028a

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mBtnContainer:Landroid/view/View;

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v9, Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    invoke-direct {v9, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-static {v8, v9}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    new-instance v8, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-direct {v8, p0}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mVoLTEStateTrackerImpl:Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;

    invoke-virtual {v8}, Lcom/samsung/dialer/impl/VoLTEStateTrackerImpl;->isEnableVoLTE()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsVoLTEEnabled:Z

    return-void

    :cond_6
    move v8, v10

    goto/16 :goto_0

    :cond_7
    move v8, v10

    goto/16 :goto_1

    :cond_8
    const-string v8, "tel"

    iget-object v11, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v11, "phone"

    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v11, "query"

    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput v9, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    goto/16 :goto_2

    :cond_9
    const-string v8, "sip"

    iget-object v11, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mScheme:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v11, "sip"

    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCreateExtras:Landroid/os/Bundle;

    const-string v11, "query"

    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSsp:Ljava/lang/String;

    invoke-virtual {v8, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x3

    iput v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mCurrentMode:I

    goto/16 :goto_2

    :cond_a
    iput-boolean v10, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mShowOrCreateMode:Z

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v8, "contacts"

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v11, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    :cond_c
    const-string v8, "missing lookupUri"

    invoke-static {v2, v8}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    goto/16 :goto_3

    :cond_d
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->checkEASAccount()V

    goto/16 :goto_4

    :cond_e
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->startLoading()V

    goto/16 :goto_4

    :cond_f
    iget-boolean v8, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v8, :cond_10

    const v8, 0x7f0300ee

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setContentView(I)V

    goto/16 :goto_5

    :cond_10
    const v8, 0x7f0300ed

    invoke-virtual {p0, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setContentView(I)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->unRegisterRCSeObservers()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->registerRCSeObservers()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "is_eas_mode"

    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "lookup_uri"

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public startRcsCapsLoading()V
    .locals 4

    const-string v0, "QuickContact"

    const-string v1, "startRcsCapsLoading"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsCapsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method protected updateRcsData()V
    .locals 11

    const-string v0, "QuickContact"

    const-string v1, "updateRcsData()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;

    invoke-virtual {v0}, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;->reset()V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;

    invoke-virtual {v0}, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;->getFeatureDescriptions()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->clear()V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsCapsData:Lcom/samsung/contacts/model/rcs/RcsCaps;

    invoke-virtual {v0}, Lcom/samsung/contacts/model/rcs/RcsCaps;->getRcsCapsItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/contacts/model/rcs/RcsCapsItem;

    invoke-virtual {v8}, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->getFeatureTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFeatureGrupper:Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;

    invoke-virtual {v8}, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->getFeatureTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->getIconId()I

    move-result v2

    invoke-virtual {v8}, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v8}, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8}, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->getSipUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/samsung/contacts/model/rcs/RcsCapsItem;->getServiceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper;->addInfo(Ljava/lang/String;ILjava/lang/String;ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;

    iget-boolean v1, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->isEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    const-string v3, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsCapsData:Lcom/samsung/contacts/model/rcs/RcsCaps;

    invoke-virtual {v1}, Lcom/samsung/contacts/model/rcs/RcsCaps;->getOwnFtCapable()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEasyMode:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0300fc

    :goto_2
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/CheckableImageView;

    invoke-virtual {v1, v0}, Lcom/android/contacts/quickcontact/CheckableImageView;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsTypeViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/android/contacts/quickcontact/CheckableImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f0200c1

    invoke-virtual {v1, v3}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageResource(I)V

    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsActionMimeTypes:Ljava/util/List;

    iget-object v4, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "QuickContact"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceQueryComplete(), fd.name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mRcsViews:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const v1, 0x7f0300fb

    goto :goto_2

    :cond_6
    iget-object v3, v0, Lcom/samsung/contacts/model/rcs/FeatureTagGrupper$FeatureDescription;->name:Ljava/lang/String;

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0200c3

    invoke-virtual {v1, v3}, Lcom/android/contacts/quickcontact/CheckableImageView;->setImageResource(I)V

    goto :goto_3

    :cond_7
    return-void
.end method
