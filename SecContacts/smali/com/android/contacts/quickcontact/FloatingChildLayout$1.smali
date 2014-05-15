.class Lcom/android/contacts/quickcontact/FloatingChildLayout$1;
.super Ljava/lang/Object;
.source "FloatingChildLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/FloatingChildLayout;->fadeInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/FloatingChildLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$1;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$1;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    #getter for: Lcom/android/contacts/quickcontact/FloatingChildLayout;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->access$000(Lcom/android/contacts/quickcontact/FloatingChildLayout;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/FloatingChildLayout$1;->this$0:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iget v1, v1, Lcom/android/contacts/quickcontact/FloatingChildLayout;->mAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
