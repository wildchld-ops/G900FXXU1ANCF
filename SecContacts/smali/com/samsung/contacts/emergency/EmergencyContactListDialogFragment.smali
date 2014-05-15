.class public Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;
.super Landroid/app/DialogFragment;
.source "EmergencyContactListDialogFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;,
        Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mEmergencyCallHeaderView:Lcom/android/contacts/common/list/ContactListItemView;

.field private mEmergencyCallNumber:Ljava/lang/String;

.field private mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

.field private mEmergencyContactsCount:I

.field private mFavoritesCount:I

.field private mFrequentsCount:I

.field private mListView:Lcom/android/contacts/common/list/AutoScrollListView;

.field private mListener:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$Listener;

.field private final mLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$1;-><init>(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactsCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactsCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mFavoritesCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mFavoritesCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mFrequentsCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mFrequentsCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallNumber:Ljava/lang/String;

    return-object v0
.end method

.method private addEmergencyCallHeaderView()V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "Emergency number is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/contacts/common/list/ContactListItemView;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/common/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallHeaderView:Lcom/android/contacts/common/list/ContactListItemView;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallHeaderView:Lcom/android/contacts/common/list/ContactListItemView;

    const v1, 0x7f0e039d

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallHeaderView:Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactListItemView;->setDividerVisible(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallHeaderView:Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallHeaderView:Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallHeaderView:Lcom/android/contacts/common/list/ContactListItemView;

    move-object v4, v2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/samsung/contacts/emergency/EmergencyContactListCallButtonControllerImpl;->bindCallButton(Landroid/content/Context;Lcom/android/contacts/common/list/ContactListItemView;Landroid/database/Cursor;ILandroid/net/Uri;Z)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mListView:Lcom/android/contacts/common/list/AutoScrollListView;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallHeaderView:Lcom/android/contacts/common/list/ContactListItemView;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/AutoScrollListView;->addHeaderView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private onHeaderViewClick()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/samsung/contacts/sim/list/ListSimManager;->getInstance(Landroid/content/Context;)Lcom/samsung/contacts/sim/list/ListSimManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallNumber:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/contacts/sim/list/ListSimManager;->getCallIntent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception from Start Activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 3

    new-instance v1, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;

    invoke-direct {v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->setArguments(Landroid/os/Bundle;)V

    sget-object v2, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emcall"

    invoke-static {v0, v1}, Lcom/sec/android/emergencymode/EmergencySettings;->getEmergencyNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "911"

    iput-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyCallNumber:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    new-instance v0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;-><init>(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->setSectionHeaderDisplayEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    invoke-virtual {v0, v3, v3}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->configureDefaultPartition(ZZ)V

    new-instance v0, Lcom/android/contacts/common/list/AutoScrollListView;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/list/AutoScrollListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mListView:Lcom/android/contacts/common/list/AutoScrollListView;

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->addEmergencyCallHeaderView()V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mListView:Lcom/android/contacts/common/list/AutoScrollListView;

    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/AutoScrollListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mListView:Lcom/android/contacts/common/list/AutoScrollListView;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mListView:Lcom/android/contacts/common/list/AutoScrollListView;

    invoke-virtual {v0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e039d

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mListView:Lcom/android/contacts/common/list/AutoScrollListView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mListener:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mListener:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$Listener;

    invoke-interface {v0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$Listener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v4, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mListView:Lcom/android/contacts/common/list/AutoScrollListView;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/AutoScrollListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v0, p3, v4

    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    invoke-virtual {v4, v0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->isEmergencyContact(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    invoke-virtual {v4, v0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->getEmergencyContactId(I)J

    move-result-wide v1

    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v1, v2}, Lcom/samsung/contacts/util/EmergencyContactsUtils;->startPhoneCall(Landroid/content/Context;J)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mEmergencyContactAdapter:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;

    invoke-virtual {v4, v0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$EmergencyContactAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/contacts/common/activity/TransactionSafeActivity;

    invoke-static {v4, v3}, Lcom/android/dialer/interactions/PhoneNumberInteraction;->startInteractionForPhoneCall(Lcom/android/contacts/common/activity/TransactionSafeActivity;Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->onHeaderViewClick()V

    goto :goto_0
.end method

.method public setListener(Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment;->mListener:Lcom/samsung/contacts/emergency/EmergencyContactListDialogFragment$Listener;

    return-void
.end method
