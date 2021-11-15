class InquiryMailer < ApplicationMailer
    @inquiry = inquiry
    @user = User.find(params[:id])
    mail(
      from: current_user.email,
      to:   @user.email,
      subject: 'お問い合わせ通知'
    )  
end
