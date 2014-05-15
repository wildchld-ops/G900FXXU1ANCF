.class public Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;
.super Landroid/app/Activity;
.source "RingtoneRecommendationHelperActivity.java"


# instance fields
.field private mPickedUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->mPickedUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "KEY_PICKEDUP_URI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->mPickedUri:Landroid/net/Uri;

    :cond_0
    iget-object v3, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->mPickedUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    new-instance v0, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;

    iget-object v3, p0, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->mPickedUri:Landroid/net/Uri;

    new-instance v4, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$1;-><init>(Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;)V

    invoke-direct {v0, p0, v3, v4}, Lcom/samsung/contacts/util/RingtoneRecommendationHelper;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/samsung/contacts/util/RingtoneRecommendationHelper$Listener;)V

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity$2;-><init>(Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;Lcom/samsung/contacts/util/RingtoneRecommendationHelper;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/activities/RingtoneRecommendationHelperActivity;->finish()V

    goto :goto_0
.end method
