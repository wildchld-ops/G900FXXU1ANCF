.class public Lcom/samsung/dialer/cover/MissedCallCover;
.super Ljava/lang/Object;
.source "MissedCallCover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;,
        Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mContext:Landroid/content/Context;

.field private mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mCoverPopupShowing:Z

.field mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

.field private mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/calllog/PhoneNumberHelper;Ljava/lang/String;[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mCoverPopupShowing:Z

    iput v3, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mBackgroundColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez p4, :cond_0

    const-string v0, "MissedCallCover"

    const-string v1, "uris is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    new-instance v0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;-><init>(Lcom/samsung/dialer/cover/MissedCallCover;Landroid/content/Context;[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-void

    :cond_0
    const-string v0, "MissedCallCover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallDetails1 number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p4, v3

    iget-object v2, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uris : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/dialer/cover/MissedCallCover;)Lcom/android/dialer/calllog/PhoneNumberHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/dialer/cover/MissedCallCover;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/dialer/cover/MissedCallCover;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/dialer/cover/MissedCallCover;->updateStatusBar(Z)V

    return-void
.end method

.method private updateStatusBar(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    :cond_0
    const-string v1, "MissedCallCover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStatusBar: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "suppressCoverUI"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "MissedCallCover"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover;->updateStatusBar(Z)V

    const-wide/16 v1, 0xc8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

    :cond_0
    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    invoke-virtual {v1}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->dismiss()V

    iput-boolean v3, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mCoverPopupShowing:Z

    :cond_1
    const-string v1, "MissedCallCover"

    const-string v2, "clearcover popop is dismissed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public displayDialog()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    if-eqz v5, :cond_1

    invoke-direct {p0, v9}, Lcom/samsung/dialer/cover/MissedCallCover;->updateStatusBar(Z)V

    const/high16 v2, 0x408

    const/high16 v4, 0x40

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "automatic_unlock"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    const-string v5, "MissedCallCover"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSecureLock : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isAutoUnlock : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    if-ne v0, v9, :cond_0

    or-int/2addr v2, v4

    :cond_0
    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    invoke-virtual {v5}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x10

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    invoke-virtual {v5}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const-wide/16 v6, 0x1770

    iput-wide v6, v5, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    invoke-virtual {v5}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    invoke-virtual {v5}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/view/Window;->setLayout(II)V

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    invoke-virtual {v5}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    invoke-virtual {v5}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    invoke-virtual {v5}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    invoke-virtual {v5}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->show()V

    :cond_1
    return-void
.end method

.method public getBackgroundColor()I
    .locals 11

    const/16 v10, 0x77

    const/16 v9, 0x6b

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_color_use_all"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "MissedCallCover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBackgroundColor :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mBackgroundColor:I

    if-ne v2, v7, :cond_0

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_color_random"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "MissedCallCover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mColorRandom :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    iput v3, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mBackgroundColor:I

    :cond_0
    :goto_0
    const/16 v3, 0xef

    iget v4, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mBackgroundColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mBackgroundColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mBackgroundColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "s_vew_cover_background_color"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mBackgroundColor:I

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_bg_display_random"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mBackgroundColor:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mDialog:Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;

    invoke-virtual {v0}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public isDialogShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/dialer/cover/MissedCallCover;->mCoverPopupShowing:Z

    return v0
.end method
