.class public Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;
.super Landroid/app/Dialog;
.source "MissedCallCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dialer/cover/MissedCallCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverDialog"
.end annotation


# instance fields
.field private mCallDetailDialog:Landroid/widget/LinearLayout;

.field private mContactBackgroundCover:Landroid/widget/ImageView;

.field private mContactDetailName:Landroid/widget/TextView;

.field private mCoverCancel:Landroid/widget/ImageButton;

.field mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

.field private mDimBackground:Landroid/view/View;

.field private mListCount:I

.field private mMissedAdapter:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;

.field private mMissedList:Landroid/widget/ListView;

.field mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

.field private mTitleName:Landroid/widget/TextView;

.field private mTitleTime:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/samsung/dialer/cover/MissedCallCover;


# direct methods
.method public constructor <init>(Lcom/samsung/dialer/cover/MissedCallCover;Landroid/content/Context;[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput v6, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mListCount:I

    iput-object v7, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mMissedAdapter:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;

    iput-object v7, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mCallDetailDialog:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->requestWindowFeature(I)Z

    const v3, 0x7f0300dc

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->setContentView(I)V

    const v3, 0x7f080242

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mCallDetailDialog:Landroid/widget/LinearLayout;

    const v3, 0x7f080243

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mDimBackground:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mCallDetailDialog:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->setCoverBackground()V

    :cond_0
    const v3, 0x7f08024a

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mContactBackgroundCover:Landroid/widget/ImageView;

    const v3, 0x7f08024b

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mContactDetailName:Landroid/widget/TextView;

    const v3, 0x7f08024f

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mMissedList:Landroid/widget/ListView;

    const v3, 0x7f080246

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mTitleName:Landroid/widget/TextView;

    const v3, 0x7f080247

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mTitleTime:Landroid/widget/TextView;

    const v3, 0x7f080248

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mCoverCancel:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mCoverCancel:Landroid/widget/ImageButton;

    new-instance v4, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;

    invoke-direct {v4, p0, p1}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog$1;-><init>(Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;Lcom/samsung/dialer/cover/MissedCallCover;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f08024c

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08024d

    invoke-virtual {p0, v3}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p3, :cond_1

    const-string v3, "MissedCallCover"

    const-string v4, "mCallDetails2 is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    aget-object v3, p3, v6

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    array-length v3, p3

    iput v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mListCount:I

    array-length v3, p3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    const/4 v1, 0x0

    :goto_1
    array-length v3, p3

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_3

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    aget-object v4, p3, v6

    aput-object v4, v3, v6

    :goto_2
    const-string v3, "MissedCallCover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "coverDialog : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p3, v4

    aput-object v4, v3, v1

    goto :goto_2

    :cond_3
    const-string v3, "MissedCallCover"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCallDetails2 number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v5, v5, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->setCoverInformation()V

    new-instance v3, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0300dd

    iget-object v6, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mDetails:[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;-><init>(Lcom/samsung/dialer/cover/MissedCallCover;Landroid/content/Context;I[Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)V

    iput-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mMissedAdapter:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mMissedList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mMissedAdapter:Lcom/samsung/dialer/cover/MissedCallCover$MissedCallAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mMissedList:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setCoverBackground()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_wallpaper"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "MissedCallCover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCoverBackground(), wallpaperMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_bg_wallpaper_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cover_wallpaper.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    #setter for: Lcom/samsung/dialer/cover/MissedCallCover;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v2, v3}, Lcom/samsung/dialer/cover/MissedCallCover;->access$202(Lcom/samsung/dialer/cover/MissedCallCover;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mCallDetailDialog:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mCoverBgDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v3}, Lcom/samsung/dialer/cover/MissedCallCover;->access$200(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mDimBackground:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mDimBackground:Landroid/view/View;

    const v3, 0x7f0a0089

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mDimBackground:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mCallDetailDialog:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    invoke-virtual {v3}, Lcom/samsung/dialer/cover/MissedCallCover;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setCoverInformation()V
    .locals 10

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v1, v1, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->photoUri:Landroid/net/Uri;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-wide v1, v1, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mContactBackgroundCover:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v2, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->photoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget v3, v3, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->id:I

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-wide v5, v5, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactId:J

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJ)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v1, v1, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactUri:Landroid/net/Uri;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberHelper;
    invoke-static {v1}, Lcom/samsung/dialer/cover/MissedCallCover;->access$100(Lcom/samsung/dialer/cover/MissedCallCover;)Lcom/android/dialer/calllog/PhoneNumberHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v2, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->number:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v3, v3, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->formattedNumber:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v5, v5, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->countryIso:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/dialer/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mContactDetailName:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/dialer/util/CallLogUtil;->mDateFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0211

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mListCount:I

    if-le v1, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mListCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_0
    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mTitleName:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mTitleTime:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    invoke-static {v2, v3}, Lcom/samsung/dialer/cover/MissedCallCoverImpl;->getTitleTimeText(Landroid/content/Context;Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mContactBackgroundCover:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v2, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->photoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget v3, v3, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->id:I

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget v5, v5, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->id:I

    int-to-long v5, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZJ)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "MissedCallCover"

    const-string v2, "mOneDetail.photoUri is not null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lcom/samsung/dialer/util/CallDetailDrawableSetter;

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mContactBackgroundCover:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->this$0:Lcom/samsung/dialer/cover/MissedCallCover;

    #getter for: Lcom/samsung/dialer/cover/MissedCallCover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/dialer/cover/MissedCallCover;->access$000(Lcom/samsung/dialer/cover/MissedCallCover;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;-><init>(Landroid/widget/ImageView;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v1, v1, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->photoUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-wide v2, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->contactId:J

    iget-object v5, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mContactBackgroundCover:Landroid/widget/ImageView;

    invoke-virtual {v7, v1, v2, v3, v5}, Lcom/samsung/dialer/util/CallDetailDrawableSetter;->setupPhoto(Landroid/net/Uri;JLandroid/widget/ImageView;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mContactDetailName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/dialer/cover/MissedCallCover$CoverDialog;->mOneDetail:Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;

    iget-object v2, v2, Lcom/samsung/dialer/impl/PhoneCallDetailsImpl;->name:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
