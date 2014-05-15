.class public Lcom/samsung/dialer/dialpad/DialpadHoverListener;
.super Ljava/lang/Object;
.source "DialpadHoverListener.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mContext:Landroid/content/Context;

.field private mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

.field private mDialpadSearch:Lcom/samsung/dialer/dialpad/SmartDialSearch;

.field private mDigitsView:Landroid/view/View;

.field private mHoverEnter:[Z

.field private mHoverHandler:Landroid/os/Handler;

.field private mOffsetY:I

.field private mOffsetYSub:I

.field private mSettingSoundEffects:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0xa

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mHoverEnter:[Z

    new-instance v2, Lcom/samsung/dialer/dialpad/DialpadHoverListener$1;

    invoke-direct {v2, p0}, Lcom/samsung/dialer/dialpad/DialpadHoverListener$1;-><init>(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)V

    iput-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mHoverHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0266

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mOffsetY:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0267

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mOffsetYSub:I

    iput-object p2, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mDigitsView:Landroid/view/View;

    new-instance v2, Lcom/samsung/dialer/dialpad/SmartDialSearch;

    iget-object v3, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/samsung/dialer/dialpad/SmartDialSearch;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mDialpadSearch:Lcom/samsung/dialer/dialpad/SmartDialSearch;

    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mSettingSoundEffects:Z

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "tab-pager-dialpad"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/dialpad/DialpadFragment;

    iput-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/dialer/dialpad/DialpadHoverListener;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->isEnableHapticFeedback(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)Lcom/android/dialer/dialpad/DialpadFragment;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mDialpadFragment:Lcom/android/dialer/dialpad/DialpadFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mSettingSoundEffects:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/dialer/dialpad/DialpadHoverListener;)[Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mHoverEnter:[Z

    return-object v0
.end method

.method private createHoverPopupView(I)Landroid/view/View;
    .locals 15

    invoke-direct/range {p0 .. p1}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->getHoverNumber(I)I

    move-result v12

    const/4 v0, -0x1

    if-ne v12, v0, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    sget-object v0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createHoverPopupView - query speed dial number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mDialpadSearch:Lcom/samsung/dialer/dialpad/SmartDialSearch;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/dialer/dialpad/SmartDialSearch;->queryBySpeedDial(Ljava/lang/String;)Lcom/samsung/dialer/dialpad/ContactItem;

    move-result-object v9

    if-nez v9, :cond_1

    sget-object v0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->TAG:Ljava/lang/String;

    const-string v2, "createHoverHopupView error - speeddial item is empty"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const v0, 0x7f030119

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f0802c2

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v0, 0x7f0802c3

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/samsung/dialer/dialpad/ContactItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9}, Lcom/samsung/dialer/dialpad/ContactItem;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    const v0, 0x7f0802c0

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v9}, Lcom/samsung/dialer/dialpad/ContactItem;->getPhotoId()I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Lcom/samsung/dialer/dialpad/ContactItem;->getPhotoId()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3, v10}, Lcom/samsung/dialer/dialpad/DialpadUtil;->loadPhoto(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    const v0, 0x7f0802bf

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-direct/range {p0 .. p1}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->getHoverPopupBgImageId(I)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v9}, Lcom/samsung/dialer/dialpad/ContactItem;->getPhotoId()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v9}, Lcom/samsung/dialer/dialpad/ContactItem;->getPhotoId()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->setPhoto(Landroid/widget/ImageView;JJ)V

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Lcom/samsung/dialer/dialpad/ContactItem;->getPhotoId()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v9}, Lcom/samsung/dialer/dialpad/ContactItem;->getPhotoId()I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->setPhoto(Landroid/widget/ImageView;JJ)V

    goto :goto_1
.end method

.method private getHoverNumber(I)I
    .locals 5

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mDigitsView:Landroid/view/View;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHoverNumber.. digits = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "W"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_2

    :cond_0
    move p1, v2

    :cond_1
    :goto_0
    return p1

    :cond_2
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/samsung/dialer/dialpad/DialpadUtil;->makeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr p1, v1

    goto :goto_0
.end method

.method private getHoverPopupBgImageId(I)I
    .locals 1

    const v0, 0x7f0201ae

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0201af

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0201b0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getHoverPopupWindowOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/dialer/util/OrientationUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mOffsetYSub:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mOffsetY:I

    goto :goto_0
.end method

.method private isEnableHapticFeedback(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_sound"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isEnableHoverEvent(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_air_view_information_preview"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "pen_hovering_information_preview"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPhoto(Landroid/widget/ImageView;JJ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->refreshCache()V

    iget-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    const/4 v4, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    return-void
.end method


# virtual methods
.method public cleanupListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mDigitsView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mDialpadSearch:Lcom/samsung/dialer/dialpad/SmartDialSearch;

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const v10, 0x7f0801a4

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->isEnableHoverEvent(I)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_1
    packed-switch v0, :pswitch_data_1

    :cond_2
    :goto_2
    :pswitch_0
    move v6, v7

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v2, 0x2

    goto :goto_1

    :pswitch_3
    const/4 v2, 0x3

    goto :goto_1

    :pswitch_4
    const/4 v2, 0x4

    goto :goto_1

    :pswitch_5
    const/4 v2, 0x5

    goto :goto_1

    :pswitch_6
    const/4 v2, 0x6

    goto :goto_1

    :pswitch_7
    const/4 v2, 0x7

    goto :goto_1

    :pswitch_8
    const/16 v2, 0x8

    goto :goto_1

    :pswitch_9
    const/16 v2, 0x9

    goto :goto_1

    :pswitch_a
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_b
    move v6, v7

    goto :goto_0

    :pswitch_c
    invoke-direct {p0, v2}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->createHoverPopupView(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/HoverPopupWindow;->dismiss()V

    invoke-virtual {p1, v7}, Landroid/view/View;->setHoverPopupType(I)V

    goto :goto_0

    :cond_3
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Landroid/view/View;->setHoverPopupType(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->getHoverPopupWindow(I)Landroid/widget/HoverPopupWindow;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v4}, Landroid/widget/HoverPopupWindow;->setContent(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Landroid/widget/HoverPopupWindow;->setInstanceOfDialer(Z)V

    invoke-virtual {v3, v7}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    const/16 v6, 0x3031

    invoke-virtual {v3, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    const/16 v6, 0xfa

    invoke-virtual {v3, v6}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    invoke-direct {p0, v2}, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->getHoverPopupWindowOffset(I)I

    move-result v6

    invoke-virtual {v3, v7, v6}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    invoke-virtual {v3, v5}, Landroid/widget/HoverPopupWindow;->setHoverPopupToolType(I)V

    :cond_4
    sget-object v6, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_HOVER_ENTER  sendMessageDelayed : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v5, v1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mHoverHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/HoverPopupWindow;->dismiss()V

    invoke-virtual {p1, v7}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v6, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mHoverHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mHoverEnter:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_2

    sget-object v6, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ACTION_HOVER_EXIT  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/dialer/dialpad/DialpadHoverListener;->mHoverEnter:[Z

    aput-boolean v7, v6, v2

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f02004f

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/high16 v8, 0x3f80

    invoke-virtual {v6, v8}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_2

    :pswitch_e
    move v6, v7

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f080189
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_e
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
