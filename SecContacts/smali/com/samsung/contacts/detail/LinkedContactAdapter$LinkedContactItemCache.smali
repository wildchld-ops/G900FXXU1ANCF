.class final Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;
.super Ljava/lang/Object;
.source "LinkedContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/detail/LinkedContactAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LinkedContactItemCache"
.end annotation


# instance fields
.field public accountView:Landroid/widget/TextView;

.field public mJoinedContactItem:Landroid/widget/LinearLayout;

.field public minusButtonFrame:Landroid/widget/LinearLayout;

.field public minusButtonView:Landroid/widget/ImageView;

.field public nameView:Landroid/widget/TextView;

.field public photoView:Landroid/widget/ImageView;

.field public position:I

.field public targetRawContactId:J

.field final synthetic this$0:Lcom/samsung/contacts/detail/LinkedContactAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/detail/LinkedContactAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/detail/LinkedContactAdapter$LinkedContactItemCache;->this$0:Lcom/samsung/contacts/detail/LinkedContactAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
