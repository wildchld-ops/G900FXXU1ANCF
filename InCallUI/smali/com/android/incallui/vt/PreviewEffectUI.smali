.class public Lcom/android/incallui/vt/PreviewEffectUI;
.super Landroid/widget/LinearLayout;
.source "PreviewEffectUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;,
        Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;,
        Lcom/android/incallui/vt/PreviewEffectUI$THEME;,
        Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;
    }
.end annotation


# instance fields
.field private effectState:Lcom/android/incallui/vt/PreviewEffectState;

.field private mBackground01:Landroid/widget/ImageButton;

.field private mBackground02:Landroid/widget/ImageButton;

.field private mBackground03:Landroid/widget/ImageButton;

.field private mBackground04:Landroid/widget/ImageButton;

.field private mBackground05:Landroid/widget/ImageButton;

.field private mBackground06:Landroid/widget/ImageButton;

.field private mBackground07:Landroid/widget/ImageButton;

.field private mBackground08:Landroid/widget/ImageButton;

.field private mBackground09:Landroid/widget/ImageButton;

.field private mBackground10:Landroid/widget/ImageButton;

.field private mBackgroundBack:Landroid/widget/ImageButton;

.field private mBackgroundButton:Landroid/widget/ImageButton;

.field private mBackgroundCancel:Landroid/widget/ImageButton;

.field private mBackgroundLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mDecorationCancel:Landroid/widget/ImageButton;

.field private mDecorationTypeLayout:Landroid/widget/LinearLayout;

.field private mEffect01:Landroid/widget/ImageButton;

.field private mEffect02:Landroid/widget/ImageButton;

.field private mEffect03:Landroid/widget/ImageButton;

.field private mEffect04:Landroid/widget/ImageButton;

.field private mEffect05:Landroid/widget/ImageButton;

.field private mEffectBack:Landroid/widget/ImageButton;

.field private mEffectButton:Landroid/widget/ImageButton;

.field private mEffectCancel:Landroid/widget/ImageButton;

.field private mEffectLayout:Landroid/widget/LinearLayout;

.field private mEmotionButton:Landroid/widget/ImageButton;

.field private mEmotionalAni01:Landroid/widget/ImageButton;

.field private mEmotionalAni02:Landroid/widget/ImageButton;

.field private mEmotionalAni03:Landroid/widget/ImageButton;

.field private mEmotionalAni04:Landroid/widget/ImageButton;

.field private mEmotionalAni05:Landroid/widget/ImageButton;

.field private mEmotionalAni06:Landroid/widget/ImageButton;

.field private mEmotionalAniCancel:Landroid/widget/ImageButton;

.field private mEmotionalAniLayout:Landroid/widget/LinearLayout;

.field private mEmotionalBack:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mThemeButton:Landroid/widget/ImageButton;

.field private mThemeView01:Landroid/widget/ImageButton;

.field private mThemeView02:Landroid/widget/ImageButton;

.field private mThemeView03:Landroid/widget/ImageButton;

.field private mThemeView04:Landroid/widget/ImageButton;

.field private mThemeView05:Landroid/widget/ImageButton;

.field private mThemeView06:Landroid/widget/ImageButton;

.field private mThemeView07:Landroid/widget/ImageButton;

.field private mThemeView08:Landroid/widget/ImageButton;

.field private mThemeView09:Landroid/widget/ImageButton;

.field private mThemeView10:Landroid/widget/ImageButton;

.field private mThemeView11:Landroid/widget/ImageButton;

.field private mThemeView12:Landroid/widget/ImageButton;

.field private mThemeView13:Landroid/widget/ImageButton;

.field private mThemeView14:Landroid/widget/ImageButton;

.field private mThemeView15:Landroid/widget/ImageButton;

.field private mThemeView16:Landroid/widget/ImageButton;

.field private mThemeView17:Landroid/widget/ImageButton;

.field private mThemeView18:Landroid/widget/ImageButton;

.field private mThemeView19:Landroid/widget/ImageButton;

.field private mThemeView20:Landroid/widget/ImageButton;

.field private mThemeView21:Landroid/widget/ImageButton;

.field private mThemeView22:Landroid/widget/ImageButton;

.field private mThemeView23:Landroid/widget/ImageButton;

.field private mThemeView24:Landroid/widget/ImageButton;

.field private mThemeView25:Landroid/widget/ImageButton;

.field private mThemeViewBack:Landroid/widget/ImageButton;

.field private mThemeViewCancel:Landroid/widget/ImageButton;

.field private mThemeViewLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Lcom/android/incallui/vt/PreviewEffectUI$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/vt/PreviewEffectUI$1;-><init>(Lcom/android/incallui/vt/PreviewEffectUI;)V

    iput-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mHandler:Landroid/os/Handler;

    const-string v1, "PreviewEffectUI constructor..."

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/vt/PreviewEffectUI;->log(Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- context "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040023

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/vt/PreviewEffectState;->getInstance()Lcom/android/incallui/vt/PreviewEffectState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/vt/PreviewEffectUI;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/vt/PreviewEffectUI;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private cancelEffect()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x4

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/VideoCallManager;->setEmotionalAnimation(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mDecorationTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackgroundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v0, v3}, Lcom/android/incallui/vt/PreviewEffectState;->setShowEmotion(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v0, v3}, Lcom/android/incallui/vt/PreviewEffectState;->setShowTheme(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v0, v3}, Lcom/android/incallui/vt/PreviewEffectState;->setShowBackground(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v0, v3}, Lcom/android/incallui/vt/PreviewEffectState;->setShowEffect(Z)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PreviewEffectUI"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "PreviewEffectUI"

    invoke-static {v0, p1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private startEmotionalAnimation(I)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/vt/VideoCallManager;->setEmotionalAnimation(I)V

    return-void
.end method


# virtual methods
.method protected initPreviewEffectUIButtons()V
    .locals 1

    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mDecorationTypeLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackgroundLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffectLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionButton:Landroid/widget/ImageButton;

    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeButton:Landroid/widget/ImageButton;

    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackgroundButton:Landroid/widget/ImageButton;

    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffectButton:Landroid/widget/ImageButton;

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mDecorationCancel:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackgroundButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffectButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mDecorationCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalBack:Landroid/widget/ImageButton;

    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni01:Landroid/widget/ImageButton;

    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni02:Landroid/widget/ImageButton;

    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni03:Landroid/widget/ImageButton;

    const v0, 0x7f080099

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni04:Landroid/widget/ImageButton;

    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni05:Landroid/widget/ImageButton;

    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni06:Landroid/widget/ImageButton;

    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAniCancel:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni01:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni02:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni03:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni04:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni05:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAni06:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAniCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08009e

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeViewBack:Landroid/widget/ImageButton;

    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView01:Landroid/widget/ImageButton;

    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView02:Landroid/widget/ImageButton;

    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView03:Landroid/widget/ImageButton;

    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView04:Landroid/widget/ImageButton;

    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView05:Landroid/widget/ImageButton;

    const v0, 0x7f0800a4

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView06:Landroid/widget/ImageButton;

    const v0, 0x7f0800a5

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView07:Landroid/widget/ImageButton;

    const v0, 0x7f0800a6

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView08:Landroid/widget/ImageButton;

    const v0, 0x7f0800a7

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView09:Landroid/widget/ImageButton;

    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView10:Landroid/widget/ImageButton;

    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView11:Landroid/widget/ImageButton;

    const v0, 0x7f0800aa

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView12:Landroid/widget/ImageButton;

    const v0, 0x7f0800ab

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView13:Landroid/widget/ImageButton;

    const v0, 0x7f0800ac

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView14:Landroid/widget/ImageButton;

    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView15:Landroid/widget/ImageButton;

    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView16:Landroid/widget/ImageButton;

    const v0, 0x7f0800af

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView17:Landroid/widget/ImageButton;

    const v0, 0x7f0800b0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView18:Landroid/widget/ImageButton;

    const v0, 0x7f0800b1

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView19:Landroid/widget/ImageButton;

    const v0, 0x7f0800b2

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView20:Landroid/widget/ImageButton;

    const v0, 0x7f0800b3

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView21:Landroid/widget/ImageButton;

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView22:Landroid/widget/ImageButton;

    const v0, 0x7f0800b5

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView23:Landroid/widget/ImageButton;

    const v0, 0x7f0800b6

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView24:Landroid/widget/ImageButton;

    const v0, 0x7f0800b7

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView25:Landroid/widget/ImageButton;

    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeViewCancel:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeViewBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView01:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView02:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView03:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView04:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView05:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView06:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView07:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView08:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView09:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView10:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView11:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView12:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView13:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView14:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView15:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView16:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView17:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView18:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView19:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView20:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView21:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView22:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView23:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView24:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeView25:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeViewCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackgroundBack:Landroid/widget/ImageButton;

    const v0, 0x7f0800bb

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground01:Landroid/widget/ImageButton;

    const v0, 0x7f0800bc

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground02:Landroid/widget/ImageButton;

    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground03:Landroid/widget/ImageButton;

    const v0, 0x7f0800be

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground04:Landroid/widget/ImageButton;

    const v0, 0x7f0800bf

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground05:Landroid/widget/ImageButton;

    const v0, 0x7f0800c0

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground06:Landroid/widget/ImageButton;

    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground07:Landroid/widget/ImageButton;

    const v0, 0x7f0800c2

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground08:Landroid/widget/ImageButton;

    const v0, 0x7f0800c3

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground09:Landroid/widget/ImageButton;

    const v0, 0x7f0800c4

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground10:Landroid/widget/ImageButton;

    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackgroundCancel:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackgroundBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground01:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground02:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground03:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground04:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground05:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground06:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground07:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground08:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground09:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackground10:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackgroundCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0800c7

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffectBack:Landroid/widget/ImageButton;

    const v0, 0x7f0800c8

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffect01:Landroid/widget/ImageButton;

    const v0, 0x7f0800c9

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffect02:Landroid/widget/ImageButton;

    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffect03:Landroid/widget/ImageButton;

    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffect04:Landroid/widget/ImageButton;

    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffect05:Landroid/widget/ImageButton;

    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/android/incallui/vt/PreviewEffectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffectCancel:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffectBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffect01:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffect02:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffect03:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffect04:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffect05:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffectCancel:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/vt/PreviewEffectUI;->log(Ljava/lang/String;Z)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mDecorationTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v1, v3}, Lcom/android/incallui/vt/PreviewEffectState;->setShowEmotion(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mDecorationTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v1, v3}, Lcom/android/incallui/vt/PreviewEffectState;->setShowTheme(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mDecorationTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackgroundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v1, v3}, Lcom/android/incallui/vt/PreviewEffectState;->setShowBackground(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mDecorationTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v1, v3}, Lcom/android/incallui/vt/PreviewEffectState;->setShowEffect(Z)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/android/incallui/vt/PreviewEffectUI;->cancelEffect()V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/incallui/vt/VideoCallManager;->setEmotionalAnimation(I)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/PreviewEffectUI;->showDecorationMainPanel()V

    goto :goto_0

    :pswitch_7
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->ANGRY:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto :goto_0

    :pswitch_8
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->BLING:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto :goto_0

    :pswitch_9
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->LOVE:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto :goto_0

    :pswitch_a
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->SAD:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto :goto_0

    :pswitch_b
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->SCREAM:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->SMILE:Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$EMOTION;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_d
    invoke-direct {p0}, Lcom/android/incallui/vt/PreviewEffectUI;->cancelEffect()V

    goto/16 :goto_0

    :pswitch_e
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/incallui/vt/VideoCallManager;->setEmotionalAnimation(I)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/PreviewEffectUI;->showDecorationMainPanel()V

    goto/16 :goto_0

    :pswitch_f
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->GLASSES_01:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_10
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->GLASSES_02:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_11
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->GLASSES_03:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_12
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->GLASSES_04:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_13
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->GLASSES_05:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_14
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->GLASSES_06:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_15
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->GLASSES_07:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_16
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->GLASSES_08:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_17
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->HAT_01:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_18
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->HAT_02:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_19
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->HAT_03:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_1a
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->HAT_04:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_1b
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->HAT_05:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_1c
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->HAT_06:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_1d
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->HAT_07:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_1e
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->HAT_08:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_1f
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->HAT_09:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_20
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->MUSTACHE_01:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_21
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->MUSTACHE_02:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_22
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->MUSTACHE_03:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_23
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->MUSTACHE_04:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_24
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->MUSTACHE_05:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_25
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->MUSTACHE_06:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_26
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->MUSTACHE_07:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_27
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->MUSTACHE_08:Lcom/android/incallui/vt/PreviewEffectUI$THEME;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$THEME;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_28
    invoke-direct {p0}, Lcom/android/incallui/vt/PreviewEffectUI;->cancelEffect()V

    goto/16 :goto_0

    :pswitch_29
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/incallui/vt/VideoCallManager;->setEmotionalAnimation(I)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/PreviewEffectUI;->showDecorationMainPanel()V

    goto/16 :goto_0

    :pswitch_2a
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->ANGRY:Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_2b
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->BLING:Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_2c
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->HAPPY:Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_2d
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->LOVE:Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_2e
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->SAD:Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_2f
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->CITY:Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_30
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->SPACE:Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_31
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->THEME_PARK:Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_32
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->HILL:Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_33
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->ROCK:Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$BACKGROUND;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_34
    invoke-direct {p0}, Lcom/android/incallui/vt/PreviewEffectUI;->cancelEffect()V

    goto/16 :goto_0

    :pswitch_35
    invoke-static {}, Lcom/android/incallui/vt/VideoCallManager;->getInstance()Lcom/android/incallui/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/incallui/vt/VideoCallManager;->setEmotionalAnimation(I)V

    invoke-virtual {p0}, Lcom/android/incallui/vt/PreviewEffectUI;->showDecorationMainPanel()V

    goto/16 :goto_0

    :pswitch_36
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_01:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_37
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_02:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_38
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_03:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_39
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_04:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_3a
    sget-object v1, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->EFFECT_05:Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;

    invoke-virtual {v1}, Lcom/android/incallui/vt/PreviewEffectUI$EFFECT;->getValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/vt/PreviewEffectUI;->startEmotionalAnimation(I)V

    goto/16 :goto_0

    :pswitch_3b
    invoke-direct {p0}, Lcom/android/incallui/vt/PreviewEffectUI;->cancelEffect()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f08008f
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_0
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/incallui/vt/PreviewEffectUI;->initPreviewEffectUIButtons()V

    return-void
.end method

.method public showDecorationInfoToast()V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "decoration_info_toast_count"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mContext:Landroid/content/Context;

    const v2, 0x7f07017e

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "decoration_info_toast_count"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public showDecorationMainPanel()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mThemeViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mBackgroundLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEffectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mEmotionalAniLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/PreviewEffectState;->setShowEmotion(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/PreviewEffectState;->setShowTheme(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/PreviewEffectState;->setShowBackground(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->effectState:Lcom/android/incallui/vt/PreviewEffectState;

    invoke-virtual {v0, v1}, Lcom/android/incallui/vt/PreviewEffectState;->setShowEffect(Z)V

    iget-object v0, p0, Lcom/android/incallui/vt/PreviewEffectUI;->mDecorationTypeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
