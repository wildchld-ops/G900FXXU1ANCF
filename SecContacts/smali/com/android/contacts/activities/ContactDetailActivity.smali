.class public Lcom/android/contacts/activities/ContactDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;
    }
.end annotation


# static fields
.field private static mSetOrientation:Z


# instance fields
.field private mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

.field private mBezelListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

.field private mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

.field private mContactData:Lcom/android/contacts/model/Contact;

.field private final mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

.field private mEditedMenuItem:Landroid/view/MenuItem;

.field private mFinishActivityOnUpSelected:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsButtonPressed:Z

.field private mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

.field private final mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;

.field private mStarredMenuItem:Landroid/view/MenuItem;

.field private misAssistantMenuVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/activities/ContactDetailActivity;->mSetOrientation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->misAssistantMenuVisibility:Z

    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsButtonPressed:Z

    iput-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iput-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$5;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$6;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/model/Contact;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/contacts/activities/ContactDetailActivity;Lcom/android/contacts/model/Contact;)Lcom/android/contacts/model/Contact;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/activities/ContactDetailActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mStarredMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/android/contacts/detail/ContactDetailLayoutController;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/activities/ContactDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->misAssistantMenuVisibility:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/contacts/activities/ContactDetailActivity;)Lcom/samsung/contacts/menu/EnhancedAssistantMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/activities/ContactDetailActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/activities/ContactDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsButtonPressed:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/contacts/activities/ContactDetailActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsButtonPressed:Z

    return p1
.end method

.method private setMenuItemVisible()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->isSim()Z

    move-result v3

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v0

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isFlightMode(Landroid/content/Context;)Z

    move-result v2

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mEditedMenuItem:Landroid/view/MenuItem;

    if-eqz v5, :cond_2

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_5

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mEditedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mStarredMenuItem:Landroid/view/MenuItem;

    if-eqz v5, :cond_4

    if-nez v1, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    if-eqz v0, :cond_6

    :cond_3
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mStarredMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mEditedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mStarredMenuItem:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mStarredMenuItem:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->getStarred()Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->configureStarredMenuItem(Landroid/view/MenuItem;Z)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "ContactDetailActivity"

    const-string v4, "onActivityResult"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsButtonPressed:Z

    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x65

    if-ne p1, v3, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v3, "ContactDetailActivity"

    const-string v4, "Uri is not valid."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/16 v3, 0x66

    if-ne p1, v3, :cond_5

    const-string v3, "joinFail"

    invoke-virtual {p3, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/contacts/detail/LinkedContactDialogFragment;->show(Landroid/app/FragmentManager;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    const/16 v3, 0x67

    if-ne p1, v3, :cond_1

    const-string v3, "namecard_string"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "sms_body"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    instance-of v0, p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/contacts/detail/ContactLoaderFragment;

    iput-object p1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragmentListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "contactsDetailEnter"

    invoke-virtual {v0, p0, v2, v1}, Lcom/samsung/contacts/ContactsPerformance;->startTimeAndMemoryStamp(Landroid/content/Context;ZLjava/lang/String;)Z

    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "ContactDetailActivity"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateStart(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/contacts/sim/detail/DetailSimManager;->getOperation(Landroid/content/Context;)Lcom/samsung/contacts/sim/detail/DetailSimOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/contacts/sim/detail/DetailSimOperation;->setCurrentNetwork()V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "finishActivityOnUpSelected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFinishActivityOnUpSelected:Z

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1000c000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    const-class v0, Lcom/android/contacts/activities/PeopleActivity;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    const/high16 v0, 0x2680

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->isAvailableOCR(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "is_private"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    const v0, 0x7f10005f

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->setTheme(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->setContentView(I)V

    new-instance v0, Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v1, 0x7f0800e1

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/ContactDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailFragmentListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/detail/ContactDetailLayoutController;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Landroid/app/FragmentManager;Lcom/android/contacts/widget/TransitionAnimationView;Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    sget-object v0, Lcom/android/contacts/ContactsApplication;->contactsDetailEnter:Lcom/samsung/contacts/ContactsPerformance;

    const-string v1, "ContactDetailActivity"

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/ContactsPerformance;->getOnCreateEnd(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    new-instance v0, Lcom/android/contacts/activities/ContactDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactDetailActivity$1;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110019

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v2, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleKeyDown(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailLayoutController;->getCurrentPage()Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;->handleKeyDown(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment;->loadUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mFinishActivityOnUpSelected:Z

    if-eqz v0, :cond_1

    const-string v0, "ContactDetailActivity"

    const-string v1, "mFinishActivityOnUpSelected finish()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "ContactDetailActivity"

    const-string v1, "FLAG_ACTIVITY_CLEAR_TOP finish()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/ContactDetailActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->finish()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->misAssistantMenuVisibility:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->removeAssistantMenuIcon(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    invoke-virtual {v0}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->unregisterAssistantReceiver()V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->unregisterListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const v0, 0x7f080367

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mEditedMenuItem:Landroid/view/MenuItem;

    const v0, 0x7f080366

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mStarredMenuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->setMenuItemVisible()V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mEditedMenuItem:Landroid/view/MenuItem;

    new-instance v1, Lcom/android/contacts/activities/ContactDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/ContactDetailActivity$3;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mStarredMenuItem:Landroid/view/MenuItem;

    new-instance v1, Lcom/android/contacts/activities/ContactDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/activities/ContactDetailActivity$4;-><init>(Lcom/android/contacts/activities/ContactDetailActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mIsButtonPressed:Z

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-ne v3, v1, :cond_0

    sget-boolean v3, Lcom/android/contacts/activities/ContactDetailActivity;->mSetOrientation:Z

    if-eqz v3, :cond_0

    sput-boolean v2, Lcom/android/contacts/activities/ContactDetailActivity;->mSetOrientation:Z

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->recreate()V

    :cond_0
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Lcom/android/contacts/activities/ContactDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->setTransGradationMode(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assistant_menu"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_5

    invoke-static {}, Lcom/android/contacts/ContactsUtils;->isKnoxMode()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_0
    iput-boolean v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->misAssistantMenuVisibility:Z

    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->misAssistantMenuVisibility:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->misAssistantMenuVisibility:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->updateAssistantMenuIcon_ContactDetail(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mAssistantMenu:Lcom/samsung/contacts/menu/EnhancedAssistantMenu;

    invoke-virtual {v1}, Lcom/samsung/contacts/menu/EnhancedAssistantMenu;->registerAssistantReceiver()V

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelManager:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;

    iget-object v2, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mBezelListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction;->registerListener(Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V

    :cond_3
    invoke-static {}, Lcom/samsung/contacts/model/rcs/RcsUtils;->isRCSeFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "ContactDetailActivity"

    const-string v2, "onResume, refreshing RCS status"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mLoaderFragment:Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactLoaderFragment;->startRcsCapsLoading()V

    :cond_4
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactDetailActivity;->setMenuItemVisible()V

    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onResume()V

    return-void

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/activities/ContactDetailActivity;->mContactDetailLayoutController:Lcom/android/contacts/detail/ContactDetailLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/contacts/detail/ContactDetailLayoutController;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setMotionCallByOrientation()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/contacts/activities/ContactDetailActivity;->mSetOrientation:Z

    return-void
.end method
