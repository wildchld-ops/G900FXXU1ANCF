.class public Lcom/android/settings/SelectItemDisplay;
.super Landroid/app/Activity;
.source "SelectItemDisplay.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SelectItemDisplay$ViewHolder;,
        Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;
    }
.end annotation


# instance fields
.field private isKeepDisplay:Z

.field private mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNetworkPopup:Landroid/widget/LinearLayout;

.field private mOpenCoverPopup:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SelectItemDisplay;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_bg_wallpaper_path"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "/storage/emulated/0/Android/data/com.sec.android.sviewcover/files/Pictures/cover_wallpaper.jpg"

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    move-object v3, v2

    :goto_1
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cover_wallpaper.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public CoverOpen()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "walk_mate"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.shealth.COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "visibility"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "WALKMATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SelectInfoCoverSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SelectItemDisplay;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    goto :goto_0
.end method

.method public checkNetwork()Z
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    if-nez v3, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 11

    const/16 v10, 0x77

    const/16 v9, 0x6b

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_use_all"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    if-ne v3, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_random"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    :cond_0
    :goto_0
    const/16 v4, 0xef

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v1}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->notifyDataSetChanged()V

    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "walk_mate"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.shealth.COVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "visibility"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "WALKMATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->requestWindowFeature(I)Z

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v21, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/LayoutInflater;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v14, 0x408

    const/high16 v20, 0x40

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "automatic_unlock"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v21, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/KeyguardManager;

    invoke-virtual/range {v16 .. v16}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v4, v0, :cond_0

    or-int v14, v14, v20

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v22, v0

    const/high16 v23, 0x10

    or-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    const-wide/16 v22, 0x1770

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v21

    const/16 v22, -0x1

    const/16 v23, -0x1

    invoke-virtual/range {v21 .. v23}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v21

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v21

    new-instance v22, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v21, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    const v21, 0x7f04004c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->setContentView(I)V

    const v21, 0x7f0b00e9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    const v21, 0x7f0b00eb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    const v21, 0x7f0b00e4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    const v21, 0x7f0b00e5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getBackgroundColor()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "sview_color_wallpaper"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_3

    const/4 v15, 0x1

    :goto_0
    if-eqz v15, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v21, 0x4d

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Landroid/graphics/Color;->argb(IIII)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_1
    const v21, 0x7f0b00e6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    const v21, 0x7f090d05

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v21, 0x7f0b0090

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    new-instance v21, Lcom/android/settings/SelectItemDisplay$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$1;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v21, 0x7f0b00e7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/SelectItemDisplay;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    const/16 v18, 0x1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const-string v22, "com.sec.android.app.shealth"

    const/16 v23, 0x5

    invoke-virtual/range {v21 .. v23}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v18, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    if-nez v21, :cond_4

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v11, v0, [I

    const/16 v21, 0x0

    const v22, 0x7f090d03

    aput v22, v11, v21

    const/16 v21, 0x1

    const v22, 0x7f090d06

    aput v22, v11, v21

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v10, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090d04

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v10, v21

    const/16 v21, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090d07

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v10, v21

    :goto_2
    new-instance v21, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-direct {v0, v1, v11, v10, v2}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;-><init>(Lcom/android/settings/SelectItemDisplay;[I[Ljava/lang/String;Z)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v17, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    const/4 v13, 0x1

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    if-eqz v13, :cond_2

    new-instance v21, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v21, Lcom/android/settings/SelectItemDisplay$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SelectItemDisplay$2;-><init>(Lcom/android/settings/SelectItemDisplay;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    :cond_2
    return-void

    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_4
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v11, v0, [I

    const/16 v21, 0x0

    const v22, 0x7f090d03

    aput v22, v11, v21

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v10, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SelectItemDisplay;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090d04

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v10, v21

    goto :goto_2

    :catch_1
    move-exception v3

    const/4 v13, 0x0

    goto :goto_3

    :catch_2
    move-exception v3

    const/4 v13, 0x0

    goto :goto_3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mOpenCoverPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-wide/32 v6, 0x7f090d03

    iget-object v8, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v8, p3}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->getItemId(I)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "weather_cover"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "weather_cover"

    if-nez v3, :cond_2

    move v6, v4

    :goto_1
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->checkNetwork()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/SelectItemDisplay;->mNetworkPopup:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "START"

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "PACKAGE"

    const-string v5, "com.sec.android.sviewcover"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    const-string v5, "Kweather"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    :goto_3
    iget-object v4, p0, Lcom/android/settings/SelectItemDisplay;->mCoverInfoAdapter:Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;

    invoke-virtual {v4}, Lcom/android/settings/SelectItemDisplay$CoverInfoAdapter;->notifyDataSetChanged()V

    :goto_4
    return-void

    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v6, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "START"

    if-nez v3, :cond_5

    :goto_5
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "PACKAGE"

    const-string v5, "com.sec.android.sviewcover"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "CP"

    const-string v5, "Accuweather"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_5
    move v4, v5

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "walk_mate"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_7

    move v2, v4

    :goto_6
    if-nez v2, :cond_8

    iput-boolean v4, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.shealth.CHECK_INIT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3e9

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/SelectItemDisplay;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_4

    :cond_7
    move v2, v5

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "walk_mate"

    if-nez v2, :cond_9

    move v6, v4

    :goto_7
    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.app.shealth.COVER"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "visibility"

    if-nez v2, :cond_a

    :goto_8
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "type"

    const-string v5, "WALKMATE"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/SelectItemDisplay;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    :cond_9
    move v6, v5

    goto :goto_7

    :cond_a
    move v4, v5

    goto :goto_8
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/SelectItemDisplay;->isKeepDisplay:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->finish()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/settings/SelectItemDisplay;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SelectItemDisplay;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SelectItemDisplay;->CoverOpen()V

    :cond_1
    return-void
.end method
