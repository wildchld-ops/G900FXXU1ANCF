.class Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$3;
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

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$3;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$3;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v2, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$3;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    sub-int v3, v1, v3

    iput v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$3;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v2, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v2}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedDialDialogListener;

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$3;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v4, v4, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-direct {v3, v4}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedDialDialogListener;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)V

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$3;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v4, v4, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget v4, v4, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;->show(Landroid/app/FragmentManager;Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment$Listener;IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter$3;->this$1:Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;

    iget-object v2, v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity$SpeedListAdapter;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->insertSpdl(I)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
