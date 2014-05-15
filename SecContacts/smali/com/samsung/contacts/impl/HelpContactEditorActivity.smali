.class public Lcom/samsung/contacts/impl/HelpContactEditorActivity;
.super Lcom/android/contacts/activities/ContactEditorActivity;
.source "HelpContactEditorActivity.java"


# instance fields
.field private final mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mSaveButtonLocation:[I

.field private mTutorialMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mTutorialMode:I

    new-instance v0, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity$1;-><init>(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)V

    iput-object v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFinishActivityOnSaveCompleted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mTutorialMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mSaveButtonLocation:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/contacts/impl/HelpContactEditorActivity;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mSaveButtonLocation:[I

    return-object p1
.end method

.method private startAddaContactTutorial()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity$2;-><init>(Lcom/samsung/contacts/impl/HelpContactEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public getCoordinatesTutorialView()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mSaveButtonLocation:[I

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->enableHelpMode()V

    invoke-virtual {p0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.INSERT_FOR_HELP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/contacts/activities/ContactEditorActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "tutorial_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mTutorialMode:I

    invoke-direct {p0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->startAddaContactTutorial()V

    :goto_1
    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mFragmentListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-virtual {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment;->setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V

    iget-object v2, p0, Lcom/android/contacts/activities/ContactEditorActivity;->mFragment:Lcom/android/contacts/editor/ContactEditorFragment;

    check-cast v2, Lcom/samsung/contacts/impl/HelpContactEditorFragment;

    iget v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mTutorialMode:I

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/impl/HelpContactEditorFragment;->setTutorialMode(I)V

    return-void

    :cond_1
    const-string v2, "android.intent.action.EDIT_FOR_HELP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v2, "tutorial_mode_from_dialer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mTutorialMode:I

    invoke-direct {p0}, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->startAddaContactTutorial()V

    goto :goto_1

    :cond_3
    iput v3, p0, Lcom/samsung/contacts/impl/HelpContactEditorActivity;->mTutorialMode:I

    goto :goto_1
.end method
