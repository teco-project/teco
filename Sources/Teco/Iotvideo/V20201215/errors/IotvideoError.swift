public struct TCIotvideoError: TCErrorType {
    enum Code: String {
        case failedOperation = "FailedOperation"
        case failedOperation_DeviceFirmwareTaskAlreadDone = "FailedOperation.DeviceFirmwareTaskAlreadDone"
        case failedOperation_DeviceIsUpdating = "FailedOperation.DeviceIsUpdating"
        case failedOperation_DeviceRunningOtherOtaTask = "FailedOperation.DeviceRunningOtherOtaTask"
        case internalError = "InternalError"
        case internalError_DBOperationError = "InternalError.DBOperationError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue = "InvalidParameterValue"
        case invalidParameterValue_FirmwareAlreadyExist = "InvalidParameterValue.FirmwareAlreadyExist"
        case resourceNotFound_DeviceFirmwareTaskNotExist = "ResourceNotFound.DeviceFirmwareTaskNotExist"
        case resourceNotFound_DeviceHasNoFirmware = "ResourceNotFound.DeviceHasNoFirmware"
        case resourceNotFound_FirmwareNotExist = "ResourceNotFound.FirmwareNotExist"
        case resourceNotFound_FirmwareTaskNotExist = "ResourceNotFound.FirmwareTaskNotExist"
        case unsupportedOperation = "UnsupportedOperation"
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
    
    /// 操作失败。
    public static var failedOperation: TCIotvideoError {
        TCIotvideoError(.failedOperation)
    }
    
    /// 设备固件升级任务已经完成。
    public static var failedOperation_DeviceFirmwareTaskAlreadDone: TCIotvideoError {
        TCIotvideoError(.failedOperation_DeviceFirmwareTaskAlreadDone)
    }
    
    /// 设备正在升级中。
    public static var failedOperation_DeviceIsUpdating: TCIotvideoError {
        TCIotvideoError(.failedOperation_DeviceIsUpdating)
    }
    
    /// 设备已经运行其他ota升级任务。
    public static var failedOperation_DeviceRunningOtherOtaTask: TCIotvideoError {
        TCIotvideoError(.failedOperation_DeviceRunningOtherOtaTask)
    }
    
    /// 内部错误。
    public static var internalError: TCIotvideoError {
        TCIotvideoError(.internalError)
    }
    
    public static var internalError_DBOperationError: TCIotvideoError {
        TCIotvideoError(.internalError_DBOperationError)
    }
    
    /// 参数错误。
    public static var invalidParameter: TCIotvideoError {
        TCIotvideoError(.invalidParameter)
    }
    
    /// 参数取值错误。
    public static var invalidParameterValue: TCIotvideoError {
        TCIotvideoError(.invalidParameterValue)
    }
    
    /// 固件已存在。
    public static var invalidParameterValue_FirmwareAlreadyExist: TCIotvideoError {
        TCIotvideoError(.invalidParameterValue_FirmwareAlreadyExist)
    }
    
    /// 设备固件升级任务不存在。
    public static var resourceNotFound_DeviceFirmwareTaskNotExist: TCIotvideoError {
        TCIotvideoError(.resourceNotFound_DeviceFirmwareTaskNotExist)
    }
    
    /// 设备无固件版本。
    public static var resourceNotFound_DeviceHasNoFirmware: TCIotvideoError {
        TCIotvideoError(.resourceNotFound_DeviceHasNoFirmware)
    }
    
    /// 固件不存在。
    public static var resourceNotFound_FirmwareNotExist: TCIotvideoError {
        TCIotvideoError(.resourceNotFound_FirmwareNotExist)
    }
    
    /// 固件升级任务不存在。
    public static var resourceNotFound_FirmwareTaskNotExist: TCIotvideoError {
        TCIotvideoError(.resourceNotFound_FirmwareTaskNotExist)
    }
    
    /// 操作不支持。
    public static var unsupportedOperation: TCIotvideoError {
        TCIotvideoError(.unsupportedOperation)
    }
}

extension TCIotvideoError {
    public static var domains: [TCErrorType.Type] {
        return [FailedOperation.self, InternalError.self, InvalidParameterValue.self, ResourceNotFound.self]
    }
}

extension TCIotvideoError: Equatable {
    public static func == (lhs: TCIotvideoError, rhs: TCIotvideoError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIotvideoError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIotvideoError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
