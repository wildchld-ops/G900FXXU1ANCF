.class Lcom/samsung/mms/location/RecentPlacesList$1;
.super Ljava/lang/Object;
.source "RecentPlacesList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/RecentPlacesList;->showNoInternetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/RecentPlacesList;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/RecentPlacesList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/RecentPlacesList$1;->this$0:Lcom/samsung/mms/location/RecentPlacesList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/RecentPlacesList$1;->this$0:Lcom/samsung/mms/location/RecentPlacesList;

    invoke-virtual {v0}, Lcom/samsung/mms/location/RecentPlacesList;->finish()V

    return-void
.end method
