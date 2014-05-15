.class public Lcom/samsung/contacts/impl/HelpPeopleActivity;
.super Lcom/android/contacts/activities/PeopleActivity;
.source "HelpPeopleActivity.java"


# instance fields
.field private mCreateButtonLoc:[I

.field private mCreateButtonRect:[I

.field private mHelp:Lcom/samsung/contacts/impl/HelpImpl;

.field private mIsAddaContactTutorialMode:Z

.field private mIsOptionsMenuOpen:Z

.field private mIsSpeedDialTutorialMode:Z

.field private mOptionMenuLoc:[I

.field private mOptionMenuRect:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/activities/PeopleActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/contacts/impl/HelpPeopleActivity;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/contacts/impl/HelpPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/contacts/impl/HelpPeopleActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->showAddaContactTutorialPopup()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/contacts/impl/HelpPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/contacts/impl/HelpPeopleActivity;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/contacts/impl/HelpPeopleActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->showSpeedDialTutorialPopup()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/contacts/impl/HelpPeopleActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonLoc:[I

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/contacts/impl/HelpPeopleActivity;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonLoc:[I

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/contacts/impl/HelpPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/contacts/impl/HelpPeopleActivity;)Lcom/android/contacts/list/DefaultContactBrowseListFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity;->mAllFragment:Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/contacts/impl/HelpPeopleActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonRect:[I

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/contacts/impl/HelpPeopleActivity;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonRect:[I

    return-object p1
.end method

.method private initAddaContactTutorialPopup()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/impl/HelpPeopleActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/contacts/impl/HelpPeopleActivity$2;-><init>(Lcom/samsung/contacts/impl/HelpPeopleActivity;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private initSpeedDialTutorialPopup()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/contacts/impl/HelpPeopleActivity$1;-><init>(Lcom/samsung/contacts/impl/HelpPeopleActivity;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private showAddaContactTutorialPopup()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/contacts/impl/HelpImpl;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/impl/HelpImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonLoc:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonLoc:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/impl/HelpImpl;->setTopPostion(I)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonLoc:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/impl/HelpImpl;->setBubbleAndIndicatorLeftPosition(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonRect:[I

    if-eqz v1, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonRect:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonRect:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonRect:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonRect:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/impl/HelpImpl;->setTouchableArea(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    const v2, 0x7f0e048f

    invoke-virtual {p0, v2}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/impl/HelpImpl;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v1, v7, v6, v6}, Lcom/samsung/contacts/impl/HelpImpl;->show(ZZZ)V

    return-void
.end method

.method private showSpeedDialTutorialPopup()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/contacts/impl/HelpImpl;

    sget-object v2, Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;->HELP_SPEEDDIAL:Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/contacts/impl/HelpImpl;-><init>(Landroid/content/Context;Lcom/samsung/contacts/impl/HelpImpl$LAYOUT_TYPE;Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I

    aget v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/impl/HelpImpl;->setTopPostion(I)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I

    aget v2, v2, v6

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/impl/HelpImpl;->setBubbleAndIndicatorLeftPosition(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I

    if-eqz v1, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I

    aget v2, v2, v7

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuRect:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/impl/HelpImpl;->setTouchableArea(Landroid/graphics/Rect;)V

    :cond_2
    iput-boolean v7, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsOptionsMenuOpen:Z

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0491

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/contacts/impl/HelpImpl;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v1, v7, v6, v6}, Lcom/samsung/contacts/impl/HelpImpl;->show(ZZZ)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsOptionsMenuOpen:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->openOptionsMenu()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isHelpSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "com.sec.android.app.contacts.action.ADD_A_CONTACT_TUTORIAL"

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsAddaContactTutorialMode:Z

    const-string v0, "com.sec.android.app.contacts.action.SPEEDDIAL_TUTORIAL"

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz p1, :cond_0

    const-string v0, "isMenuOpen"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsOptionsMenuOpen:Z

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsAddaContactTutorialMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mCreateButtonLoc:[I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->initAddaContactTutorialPopup()V

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mOptionMenuLoc:[I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/impl/HelpPeopleActivity;->initSpeedDialTutorialPopup()V

    :cond_1
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/activities/PeopleActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsOptionsMenuOpen:Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    iget-boolean v3, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsSpeedDialTutorialMode:Z

    if-eqz v3, :cond_1

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f080356

    if-eq v3, v4, :cond_0

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/contacts/activities/PeopleActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "isMenuOpen"

    iget-boolean v1, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsOptionsMenuOpen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public openOptionsMenu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mIsOptionsMenuOpen:Z

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpPeopleActivity;->mHelp:Lcom/samsung/contacts/impl/HelpImpl;

    invoke-virtual {v0}, Lcom/samsung/contacts/impl/HelpImpl;->hide()V

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/activities/PeopleActivity;->openOptionsMenu()V

    return-void
.end method
