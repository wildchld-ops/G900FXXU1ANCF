.class public Lcom/android/systemui/statusbar/SignalASU;
.super Landroid/widget/TextView;
.source "SignalASU.java"


# instance fields
.field context:Landroid/content/Context;

.field private mAttached:Ljava/lang/Boolean;

.field private mColor:I

.field private mIsRunning:Ljava/lang/Boolean;

.field private myHandler:Landroid/os/Handler;

.field private final phoneListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mAttached:Ljava/lang/Boolean;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->myHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mIsRunning:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/systemui/statusbar/SignalASU$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalASU$1;-><init>(Lcom/android/systemui/statusbar/SignalASU;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->phoneListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalASU;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mAttached:Ljava/lang/Boolean;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->myHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mIsRunning:Ljava/lang/Boolean;

    new-instance v0, Lcom/android/systemui/statusbar/SignalASU$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalASU$1;-><init>(Lcom/android/systemui/statusbar/SignalASU;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->phoneListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalASU;->context:Landroid/content/Context;

    const/high16 v0, 0x4100

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalASU;->setTextSize(F)V

    return-void
.end method

.method private StopListener()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalASU;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalASU;->phoneListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static synthetic access$0(Lcom/android/systemui/statusbar/SignalASU;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalASU;->setTxt(I)V

    return-void
.end method

.method private setTxt(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalASU;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalASU;->color_stuff()V

    iget v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mColor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private startSignalLevelListener()V
    .locals 4

    const-string v2, "startSignalLevelListener"

    const-string v3, "<<------- START ------- >>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalASU;->context:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalASU;->phoneListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v2, "startSignalLevelListener"

    const-string v3, "<<------- END ------- >>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method color_stuff()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "link_asu"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_color"

    const v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/SignalASU;->mColor:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "asu_color"

    const v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/SignalASU;->mColor:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/tweak/asu_display"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mAttached:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mAttached:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalASU;->startSignalLevelListener()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mAttached:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalASU;->mAttached:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalASU;->StopListener()V

    :cond_0
    return-void
.end method
