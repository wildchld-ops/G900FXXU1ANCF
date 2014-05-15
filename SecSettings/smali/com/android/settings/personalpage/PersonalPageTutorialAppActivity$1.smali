.class Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;
.super Ljava/lang/Object;
.source "PersonalPageTutorialAppActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->initViewsForAPP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;->this$0:Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;

    #calls: Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->UpdateTutorialPage()V
    invoke-static {v0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->access$100(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)V

    return-void
.end method
