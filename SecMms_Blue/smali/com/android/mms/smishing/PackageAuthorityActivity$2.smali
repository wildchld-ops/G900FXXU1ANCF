.class Lcom/android/mms/smishing/PackageAuthorityActivity$2;
.super Ljava/lang/Object;
.source "PackageAuthorityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/smishing/PackageAuthorityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/smishing/PackageAuthorityActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/smishing/PackageAuthorityActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity$2;->this$0:Lcom/android/mms/smishing/PackageAuthorityActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity$2;->this$0:Lcom/android/mms/smishing/PackageAuthorityActivity;

    #getter for: Lcom/android/mms/smishing/PackageAuthorityActivity;->mSmsPackageList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/smishing/PackageAuthorityActivity;->access$200(Lcom/android/mms/smishing/PackageAuthorityActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity$2;->this$0:Lcom/android/mms/smishing/PackageAuthorityActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/smishing/PackageAuthorityActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
