.class Lcom/android/mms/smishing/PackageAuthorityActivity$1;
.super Ljava/lang/Object;
.source "PackageAuthorityActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/smishing/PackageAuthorityActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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

    iput-object p1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity$1;->this$0:Lcom/android/mms/smishing/PackageAuthorityActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/smishing/PackageAuthorityActivity$1;->this$0:Lcom/android/mms/smishing/PackageAuthorityActivity;

    #getter for: Lcom/android/mms/smishing/PackageAuthorityActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/smishing/PackageAuthorityActivity;->access$000(Lcom/android/mms/smishing/PackageAuthorityActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/smishing/PackageAuthorityActivity$1;->this$0:Lcom/android/mms/smishing/PackageAuthorityActivity;

    #getter for: Lcom/android/mms/smishing/PackageAuthorityActivity;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/mms/smishing/PackageAuthorityActivity;->access$100(Lcom/android/mms/smishing/PackageAuthorityActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->changeAcessOption(Landroid/content/Context;Z)Z

    return-void
.end method
