.class Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v4, v4, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget v4, v4, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    sub-int v4, v1, v4

    iput v4, v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v4, v4, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget v4, v4, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v4, v4, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget v4, v4, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    add-int/lit8 v4, v4, 0x1

    #calls: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isMatchedAppPLSpl(I)Z
    invoke-static {v3, v4}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mListData:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v5, v5, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget v5, v5, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    #getter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->isCtcDuos:Z
    invoke-static {v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$600(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "simSlot"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$4;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v3, v2}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method
