.class public Lcom/android/phone/RoamingAutoDialOption;
.super Lcom/android/internal/app/AlertActivity;
.source "RoamingAutoDialOption.java"


# instance fields
.field final app:Lcom/android/phone/PhoneGlobals;

.field private callType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RoamingAutoDialOption;->app:Lcom/android/phone/PhoneGlobals;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "android.phone.extra.calltype"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/RoamingAutoDialOption;->callType:I

    iget-object v1, p0, Lcom/android/phone/RoamingAutoDialOption;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0903db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f0903dc

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const v4, 0x7f0903dd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v3, 0x7f090028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/phone/RoamingAutoDialOption$1;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAutoDialOption$1;-><init>(Lcom/android/phone/RoamingAutoDialOption;)V

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v3, Lcom/android/phone/RoamingAutoDialOption$2;

    invoke-direct {v3, p0}, Lcom/android/phone/RoamingAutoDialOption$2;-><init>(Lcom/android/phone/RoamingAutoDialOption;)V

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->setupAlert()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    invoke-virtual {p0}, Lcom/android/phone/RoamingAutoDialOption;->finish()V

    return-void
.end method
