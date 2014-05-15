.class Lcom/android/contacts/detail/ContactDetailTabCarousel$1;
.super Ljava/lang/Object;
.source "ContactDetailTabCarousel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/detail/ContactDetailTabCarousel;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailTabCarousel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    #getter for: Lcom/android/contacts/detail/ContactDetailTabCarousel;->mCurrentTab:I
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->access$000(Lcom/android/contacts/detail/ContactDetailTabCarousel;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->scrollTo(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailTabCarousel$1;->this$0:Lcom/android/contacts/detail/ContactDetailTabCarousel;

    #getter for: Lcom/android/contacts/detail/ContactDetailTabCarousel;->mAllowedHorizontalScrollLength:I
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailTabCarousel;->access$100(Lcom/android/contacts/detail/ContactDetailTabCarousel;)I

    move-result v0

    goto :goto_0
.end method
