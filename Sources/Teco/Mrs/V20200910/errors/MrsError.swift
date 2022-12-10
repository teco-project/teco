public struct TCMrsError: TCErrorType {
    enum Code: String {
        case authFailure = "AuthFailure"
        case failedOperation_PushUsageMessageError = "FailedOperation.PushUsageMessageError"
        case failedOperation_ServiceNotOpen = "FailedOperation.ServiceNotOpen"
        case failedOperation_UnknownError = "FailedOperation.UnknownError"
        case internalError = "InternalError"
        case internalError_ImageOcrError = "InternalError.ImageOcrError"
        case internalError_ImageProcessError = "InternalError.ImageProcessError"
        case internalError_ServerTimeOutError = "InternalError.ServerTimeOutError"
        case internalError_StructionError = "InternalError.StructionError"
        case internalError_TextClassifyError = "InternalError.TextClassifyError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_ImageCodeInvalid = "InvalidParameterValue.ImageCodeInvalid"
        case invalidParameterValue_ImageIsNoText = "InvalidParameterValue.ImageIsNoText"
        case invalidParameterValue_ImageURLInvalid = "InvalidParameterValue.ImageURLInvalid"
        case invalidParameter_AutoFitDirection = "InvalidParameter.AutoFitDirection"
        case invalidParameter_ImageInfoList = "InvalidParameter.ImageInfoList"
        case invalidParameter_ImageOriginalSize = "InvalidParameter.ImageOriginalSize"
        case invalidParameter_InvalidAction = "InvalidParameter.InvalidAction"
        case invalidParameter_OcrEngineType = "InvalidParameter.OcrEngineType"
        case invalidParameter_RotateTheAngle = "InvalidParameter.RotateTheAngle"
        case invalidParameter_Text = "InvalidParameter.Text"
        case operationDenied_UnSupportThisType = "OperationDenied.UnSupportThisType"
        case unauthorizedOperation_PermissionDeniedError = "UnauthorizedOperation.PermissionDeniedError"
        case unsupportedOperation_UnSupportThisType = "UnsupportedOperation.UnSupportThisType"
    }
    
    private let error: Code
    
    public let context: TCErrorContext?
    
    public var errorCode: String {
        self.error.rawValue
    }
    
    /// Initializer used by ``TCClient`` to match an error of this type.
    ///
    /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
    
    /// CAM签名/鉴权错误。
    public static var authFailure: TCMrsError {
        TCMrsError(.authFailure)
    }
    
    /// 用量消息推送失败。
    public static var failedOperation_PushUsageMessageError: TCMrsError {
        TCMrsError(.failedOperation_PushUsageMessageError)
    }
    
    /// 服务未开通。
    public static var failedOperation_ServiceNotOpen: TCMrsError {
        TCMrsError(.failedOperation_ServiceNotOpen)
    }
    
    /// 未知错误。
    ///
    /// 服务端故障，请重试。
    public static var failedOperation_UnknownError: TCMrsError {
        TCMrsError(.failedOperation_UnknownError)
    }
    
    /// 内部错误。
    public static var internalError: TCMrsError {
        TCMrsError(.internalError)
    }
    
    /// 图片ocr识别异常。
    public static var internalError_ImageOcrError: TCMrsError {
        TCMrsError(.internalError_ImageOcrError)
    }
    
    /// 图片处理异常。
    public static var internalError_ImageProcessError: TCMrsError {
        TCMrsError(.internalError_ImageProcessError)
    }
    
    /// 服务调用超时。
    public static var internalError_ServerTimeOutError: TCMrsError {
        TCMrsError(.internalError_ServerTimeOutError)
    }
    
    /// 报告结构化异常。
    public static var internalError_StructionError: TCMrsError {
        TCMrsError(.internalError_StructionError)
    }
    
    /// 报告文本分类异常。
    public static var internalError_TextClassifyError: TCMrsError {
        TCMrsError(.internalError_TextClassifyError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCMrsError {
        TCMrsError(.invalidParameter)
    }
    
    /// 图片编码无效。
    public static var invalidParameterValue_ImageCodeInvalid: TCMrsError {
        TCMrsError(.invalidParameterValue_ImageCodeInvalid)
    }
    
    /// 图片没有文字。
    ///
    /// 上传的报告图片没有文字内容。
    public static var invalidParameterValue_ImageIsNoText: TCMrsError {
        TCMrsError(.invalidParameterValue_ImageIsNoText)
    }
    
    /// 图片URL无效。
    ///
    /// 检查参数中URL地址是否有效且公网可达。
    public static var invalidParameterValue_ImageURLInvalid: TCMrsError {
        TCMrsError(.invalidParameterValue_ImageURLInvalid)
    }
    
    /// 参数AutoFitDirection无效。
    public static var invalidParameter_AutoFitDirection: TCMrsError {
        TCMrsError(.invalidParameter_AutoFitDirection)
    }
    
    /// 参数ImageInfoList无效。
    public static var invalidParameter_ImageInfoList: TCMrsError {
        TCMrsError(.invalidParameter_ImageInfoList)
    }
    
    /// 参数ImageOriginalSize无效。
    public static var invalidParameter_ImageOriginalSize: TCMrsError {
        TCMrsError(.invalidParameter_ImageOriginalSize)
    }
    
    /// 请求Action无效。
    public static var invalidParameter_InvalidAction: TCMrsError {
        TCMrsError(.invalidParameter_InvalidAction)
    }
    
    /// 参数OcrEngineType无效。
    public static var invalidParameter_OcrEngineType: TCMrsError {
        TCMrsError(.invalidParameter_OcrEngineType)
    }
    
    /// 参数RotateTheAngle无效。
    public static var invalidParameter_RotateTheAngle: TCMrsError {
        TCMrsError(.invalidParameter_RotateTheAngle)
    }
    
    /// 参数Text无效。
    public static var invalidParameter_Text: TCMrsError {
        TCMrsError(.invalidParameter_Text)
    }
    
    /// 不支持的报告类型。
    ///
    /// 请检查上传报告是否正确。
    public static var operationDenied_UnSupportThisType: TCMrsError {
        TCMrsError(.operationDenied_UnSupportThisType)
    }
    
    /// 当前无权限，请检查BisinsessId。
    public static var unauthorizedOperation_PermissionDeniedError: TCMrsError {
        TCMrsError(.unauthorizedOperation_PermissionDeniedError)
    }
    
    /// 当前报告类型不支持。
    public static var unsupportedOperation_UnSupportThisType: TCMrsError {
        TCMrsError(.unsupportedOperation_UnSupportThisType)
    }
}

extension TCMrsError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameter.self, InvalidParameterValue.self, OperationDenied.self, UnauthorizedOperation.self, UnsupportedOperation.self]
    }
}

extension TCMrsError: Equatable {
    public static func == (lhs: TCMrsError, rhs: TCMrsError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMrsError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCMrsError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
