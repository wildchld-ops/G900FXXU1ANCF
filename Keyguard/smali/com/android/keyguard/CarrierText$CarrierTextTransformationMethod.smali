.class Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;
.super Landroid/text/method/SingleLineTransformationMethod;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarrierTextTransformationMethod"
.end annotation


# instance fields
.field private final mAllCaps:Z

.field private final mLocale:Ljava/util/Locale;

.field final synthetic this$0:Lcom/android/keyguard/CarrierText;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;->this$0:Lcom/android/keyguard/CarrierText;

    invoke-direct {p0}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;->mLocale:Ljava/util/Locale;

    iput-boolean p3, p0, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;->mAllCaps:Z

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/text/method/SingleLineTransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;->mAllCaps:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method