.class public Lcom/android/settings/personalpage/PersonalPageTutorial;
.super Landroid/app/Activity;
.source "PersonalPageTutorial.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private mAnimationFadeInTitle:Landroid/view/animation/Animation;

.field private mAnimationHideWaiting:Landroid/view/animation/Animation;

.field private mAnimationSlideUpWithFadeInMsg:Landroid/view/animation/Animation;

.field private mVideoIntro:Landroid/widget/VideoView;

.field private mWelcomeMsgLayout:Landroid/widget/LinearLayout;

.field private mWelcomeTitleLayout:Landroid/widget/LinearLayout;

.field private video:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->video:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationFadeInTitle:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationSlideUpWithFadeInMsg:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationHideWaiting:Landroid/view/animation/Animation;

    return-void
.end method

.method private UpdateTutorialPage()V
    .locals 2

    const-string v0, "PersonalPageTutorial"

    const-string v1, "UpdateTutorialPage: Welcome -> App "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->finish()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageTutorial;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->UpdateTutorialPage()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageTutorial;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/personalpage/PersonalPageTutorial;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/personalpage/PersonalPageTutorial;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationSlideUpWithFadeInMsg:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private initViewsForStart()V
    .locals 4

    const/16 v2, 0x400

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const v1, 0x7f04014e

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorial;->setContentView(I)V

    const v1, 0x7f0b0367

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/raw/privatemode_intro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->video:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->video:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const v1, 0x7f0b0368

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0b0369

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0b0363

    invoke-virtual {p0, v1}, Lcom/android/settings/personalpage/PersonalPageTutorial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/settings/personalpage/PersonalPageTutorial$1;

    invoke-direct {v1, p0}, Lcom/android/settings/personalpage/PersonalPageTutorial$1;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorial;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f05000a

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationFadeInTitle:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationFadeInTitle:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/settings/personalpage/PersonalPageTutorial$2;

    invoke-direct {v2, p0}, Lcom/android/settings/personalpage/PersonalPageTutorial$2;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorial;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v1, 0x7f05000c

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationHideWaiting:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationHideWaiting:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/settings/personalpage/PersonalPageTutorial$3;

    invoke-direct {v2, p0}, Lcom/android/settings/personalpage/PersonalPageTutorial$3;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorial;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v1, 0x7f05000b

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationSlideUpWithFadeInMsg:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationSlideUpWithFadeInMsg:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/settings/personalpage/PersonalPageTutorial$4;

    invoke-direct {v2, p0}, Lcom/android/settings/personalpage/PersonalPageTutorial$4;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorial;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mVideoIntro:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "PersonalPageTutorial"

    const-string v1, "PersonalPage Tutorial create"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorial;->initViewsForStart()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PersonalPageTutorial"

    const-string v1, "onKeyUp Back"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeTitleLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationFadeInTitle:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mWelcomeMsgLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/personalpage/PersonalPageTutorial;->mAnimationHideWaiting:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
