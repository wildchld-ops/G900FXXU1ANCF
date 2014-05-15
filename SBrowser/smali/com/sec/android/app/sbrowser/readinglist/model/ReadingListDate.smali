.class public Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;
.super Ljava/util/Date;
.source "ReadingListDate.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mCal:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;->mCal:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;->mCal:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;->isSameCalDate(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public isSameCalDate(Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;)Z
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;->mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;->mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/readinglist/model/ReadingListDate;->mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
