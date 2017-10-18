final class UGCAddReviewTextCell: MWMTableViewCell {
  @IBOutlet private weak var textView: MWMTextView! {
    didSet {
      textView.placeholder = L("placepage_reviews_hint")
      textView.font = UIFont.regular16()
      textView.textColor = UIColor.blackPrimaryText()
      textView.placeholderView.textColor = UIColor.blackSecondaryText()
    }
  }

  var reviewText: String! {
    get { return textView.text }
    set { textView.text = newValue }
  }
}

extension UGCAddReviewTextCell: UITextViewDelegate {
}
