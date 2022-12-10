public struct TCOcrError: TCErrorType {
    enum Code: String {
        case failedOperation_ArrearsError = "FailedOperation.ArrearsError"
        case failedOperation_CountLimitError = "FailedOperation.CountLimitError"
        case failedOperation_DataSourceQueryFailed = "FailedOperation.DataSourceQueryFailed"
        case failedOperation_DetectFailed = "FailedOperation.DetectFailed"
        case failedOperation_DownLoadError = "FailedOperation.DownLoadError"
        case failedOperation_EmptyImageError = "FailedOperation.EmptyImageError"
        case failedOperation_EngineRecognizeTimeout = "FailedOperation.EngineRecognizeTimeout"
        case failedOperation_IdCardInfoIllegal = "FailedOperation.IdCardInfoIllegal"
        case failedOperation_ImageBlur = "FailedOperation.ImageBlur"
        case failedOperation_ImageDecodeFailed = "FailedOperation.ImageDecodeFailed"
        case failedOperation_ImageNoBusinessCard = "FailedOperation.ImageNoBusinessCard"
        case failedOperation_ImageNoIdCard = "FailedOperation.ImageNoIdCard"
        case failedOperation_ImageNoText = "FailedOperation.ImageNoText"
        case failedOperation_ImageSizeTooLarge = "FailedOperation.ImageSizeTooLarge"
        case failedOperation_InvoiceMismatch = "FailedOperation.InvoiceMismatch"
        case failedOperation_LanguageNotSupport = "FailedOperation.LanguageNotSupport"
        case failedOperation_MultiCardError = "FailedOperation.MultiCardError"
        case failedOperation_NoBizLicense = "FailedOperation.NoBizLicense"
        case failedOperation_NoHKIDCard = "FailedOperation.NoHKIDCard"
        case failedOperation_NoMASIDCard = "FailedOperation.NoMASIDCard"
        case failedOperation_NoPassport = "FailedOperation.NoPassport"
        case failedOperation_OcrFailed = "FailedOperation.OcrFailed"
        case failedOperation_QueryNoRecord = "FailedOperation.QueryNoRecord"
        case failedOperation_UnKnowError = "FailedOperation.UnKnowError"
        case failedOperation_UnOpenError = "FailedOperation.UnOpenError"
        case internalError = "InternalError"
        case invalidParameterValue_InvalidParameterValueLimit = "InvalidParameterValue.InvalidParameterValueLimit"
        case invalidParameterValue_PriceOrVerificationParameterValueLimit = "InvalidParameterValue.PriceOrVerificationParameterValueLimit"
        case invalidParameterValue_TicketCodeParameterValueLimit = "InvalidParameterValue.TicketCodeParameterValueLimit"
        case invalidParameterValue_TicketDateParameterValueLimit = "InvalidParameterValue.TicketDateParameterValueLimit"
        case invalidParameterValue_TicketSnParameterValueLimit = "InvalidParameterValue.TicketSnParameterValueLimit"
        case invalidParameter_ConfigFormatError = "InvalidParameter.ConfigFormatError"
        case invalidParameter_EngineImageDecodeFailed = "InvalidParameter.EngineImageDecodeFailed"
        case invalidParameter_InvalidGTINError = "InvalidParameter.InvalidGTINError"
        case limitExceeded_TooLargeFileError = "LimitExceeded.TooLargeFileError"
        case requestLimitExceeded = "RequestLimitExceeded"
        case resourceNotFound_NoAreaCode = "ResourceNotFound.NoAreaCode"
        case resourceNotFound_NoInvoice = "ResourceNotFound.NoInvoice"
        case resourceNotFound_NotSupportCurrentInvoiceQuery = "ResourceNotFound.NotSupportCurrentInvoiceQuery"
        case resourceUnavailable_TaxNetworkError = "ResourceUnavailable.TaxNetworkError"
        case resourcesSoldOut_ChargeStatusException = "ResourcesSoldOut.ChargeStatusException"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    public init ?(errorCode: String, context: TCErrorContext) {
        guard let error = Code(rawValue: errorCode) else {
            return nil
        }
        self.error = error
        self.context = context
    }
    
    internal init (_ error: Code, context: TCErrorContext? = nil) {
        self.error = error
        self.context = context
    }
    
    /// 帐号已欠费。
    public static var failedOperation_ArrearsError: TCOcrError {
        TCOcrError(.failedOperation_ArrearsError)
    }
    
    /// 今日次数达到限制。
    public static var failedOperation_CountLimitError: TCOcrError {
        TCOcrError(.failedOperation_CountLimitError)
    }
    
    /// 数据源查询失败。
    public static var failedOperation_DataSourceQueryFailed: TCOcrError {
        TCOcrError(.failedOperation_DataSourceQueryFailed)
    }
    
    /// 检测失败。
    public static var failedOperation_DetectFailed: TCOcrError {
        TCOcrError(.failedOperation_DetectFailed)
    }
    
    /// 文件下载失败。
    public static var failedOperation_DownLoadError: TCOcrError {
        TCOcrError(.failedOperation_DownLoadError)
    }
    
    /// 图片内容为空。
    public static var failedOperation_EmptyImageError: TCOcrError {
        TCOcrError(.failedOperation_EmptyImageError)
    }
    
    /// 引擎识别超时。
    public static var failedOperation_EngineRecognizeTimeout: TCOcrError {
        TCOcrError(.failedOperation_EngineRecognizeTimeout)
    }
    
    /// 身份证信息不合法（身份证号、姓名字段校验非法等）。
    public static var failedOperation_IdCardInfoIllegal: TCOcrError {
        TCOcrError(.failedOperation_IdCardInfoIllegal)
    }
    
    /// 图片模糊。
    public static var failedOperation_ImageBlur: TCOcrError {
        TCOcrError(.failedOperation_ImageBlur)
    }
    
    /// 图片解码失败。
    public static var failedOperation_ImageDecodeFailed: TCOcrError {
        TCOcrError(.failedOperation_ImageDecodeFailed)
    }
    
    /// 照片未检测到名片。
    public static var failedOperation_ImageNoBusinessCard: TCOcrError {
        TCOcrError(.failedOperation_ImageNoBusinessCard)
    }
    
    /// 图片中未检测到身份证。
    public static var failedOperation_ImageNoIdCard: TCOcrError {
        TCOcrError(.failedOperation_ImageNoIdCard)
    }
    
    /// 图片中未检测到文本。
    public static var failedOperation_ImageNoText: TCOcrError {
        TCOcrError(.failedOperation_ImageNoText)
    }
    
    /// 图片尺寸过大，请参考输出参数中关于图片大小限制的说明。
    public static var failedOperation_ImageSizeTooLarge: TCOcrError {
        TCOcrError(.failedOperation_ImageSizeTooLarge)
    }
    
    /// 发票数据不一致。
    public static var failedOperation_InvoiceMismatch: TCOcrError {
        TCOcrError(.failedOperation_InvoiceMismatch)
    }
    
    /// 输入的Language不支持。
    public static var failedOperation_LanguageNotSupport: TCOcrError {
        TCOcrError(.failedOperation_LanguageNotSupport)
    }
    
    /// 照片中存在多张卡。
    public static var failedOperation_MultiCardError: TCOcrError {
        TCOcrError(.failedOperation_MultiCardError)
    }
    
    public static var failedOperation_NoBizLicense: TCOcrError {
        TCOcrError(.failedOperation_NoBizLicense)
    }
    
    /// 非香港身份证。
    public static var failedOperation_NoHKIDCard: TCOcrError {
        TCOcrError(.failedOperation_NoHKIDCard)
    }
    
    /// 非马来身份证。
    public static var failedOperation_NoMASIDCard: TCOcrError {
        TCOcrError(.failedOperation_NoMASIDCard)
    }
    
    /// 非护照。
    public static var failedOperation_NoPassport: TCOcrError {
        TCOcrError(.failedOperation_NoPassport)
    }
    
    /// OCR识别失败。
    public static var failedOperation_OcrFailed: TCOcrError {
        TCOcrError(.failedOperation_OcrFailed)
    }
    
    /// 查询无记录。
    public static var failedOperation_QueryNoRecord: TCOcrError {
        TCOcrError(.failedOperation_QueryNoRecord)
    }
    
    /// 未知错误。
    public static var failedOperation_UnKnowError: TCOcrError {
        TCOcrError(.failedOperation_UnKnowError)
    }
    
    /// 服务未开通。
    public static var failedOperation_UnOpenError: TCOcrError {
        TCOcrError(.failedOperation_UnOpenError)
    }
    
    /// 内部错误。
    public static var internalError: TCOcrError {
        TCOcrError(.internalError)
    }
    
    /// 参数值错误。
    public static var invalidParameterValue_InvalidParameterValueLimit: TCOcrError {
        TCOcrError(.invalidParameterValue_InvalidParameterValueLimit)
    }
    
    /// 开票金额或校验码参数值错误。
    public static var invalidParameterValue_PriceOrVerificationParameterValueLimit: TCOcrError {
        TCOcrError(.invalidParameterValue_PriceOrVerificationParameterValueLimit)
    }
    
    /// 发票代码参数值错误。
    public static var invalidParameterValue_TicketCodeParameterValueLimit: TCOcrError {
        TCOcrError(.invalidParameterValue_TicketCodeParameterValueLimit)
    }
    
    /// 开票日期参数值错误。
    public static var invalidParameterValue_TicketDateParameterValueLimit: TCOcrError {
        TCOcrError(.invalidParameterValue_TicketDateParameterValueLimit)
    }
    
    /// 发票号码参数值错误。
    public static var invalidParameterValue_TicketSnParameterValueLimit: TCOcrError {
        TCOcrError(.invalidParameterValue_TicketSnParameterValueLimit)
    }
    
    /// Config不是有效的JSON格式。
    public static var invalidParameter_ConfigFormatError: TCOcrError {
        TCOcrError(.invalidParameter_ConfigFormatError)
    }
    
    /// 图片解码失败。
    public static var invalidParameter_EngineImageDecodeFailed: TCOcrError {
        TCOcrError(.invalidParameter_EngineImageDecodeFailed)
    }
    
    /// 无效的GTIN。
    public static var invalidParameter_InvalidGTINError: TCOcrError {
        TCOcrError(.invalidParameter_InvalidGTINError)
    }
    
    /// 文件内容太大。
    public static var limitExceeded_TooLargeFileError: TCOcrError {
        TCOcrError(.limitExceeded_TooLargeFileError)
    }
    
    /// 请求的次数超过了频率限制。
    public static var requestLimitExceeded: TCOcrError {
        TCOcrError(.requestLimitExceeded)
    }
    
    /// 地区编码不存在。
    public static var resourceNotFound_NoAreaCode: TCOcrError {
        TCOcrError(.resourceNotFound_NoAreaCode)
    }
    
    /// 发票不存在。
    public static var resourceNotFound_NoInvoice: TCOcrError {
        TCOcrError(.resourceNotFound_NoInvoice)
    }
    
    /// 不支持当天发票查询。
    public static var resourceNotFound_NotSupportCurrentInvoiceQuery: TCOcrError {
        TCOcrError(.resourceNotFound_NotSupportCurrentInvoiceQuery)
    }
    
    /// 税务局网络异常，请稍后访问。
    public static var resourceUnavailable_TaxNetworkError: TCOcrError {
        TCOcrError(.resourceUnavailable_TaxNetworkError)
    }
    
    /// 计费状态异常。
    public static var resourcesSoldOut_ChargeStatusException: TCOcrError {
        TCOcrError(.resourcesSoldOut_ChargeStatusException)
    }
}

extension TCOcrError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InvalidParameter.self, InvalidParameterValue.self, LimitExceeded.self, ResourceNotFound.self, ResourceUnavailable.self, ResourcesSoldOut.self]
    }
}

extension TCOcrError: Equatable {
    public static func == (lhs: TCOcrError, rhs: TCOcrError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCOcrError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}