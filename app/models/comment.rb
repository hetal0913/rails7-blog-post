class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_rich_text :body

  has_noticed_notifications model_name: 'Notification'
  after_create_commit :notify_recipient
  before_destroy :cleanup_notification


  private

  def notify_recipient
    CommentNotification.with(comment: self, post: post).deliver_later(post.user)
  end
   
  def cleanup_notification
    #same as Notification.where(comment_id: comment.id).destroy_all
    notification_as_comment.destroy_all
  end
end
