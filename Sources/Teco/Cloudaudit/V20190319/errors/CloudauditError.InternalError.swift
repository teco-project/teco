//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCCloudauditError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case cmqError = "InternalError.CmqError"
            case createAuditError = "InternalError.CreateAuditError"
            case deleteAuditError = "InternalError.DeleteAuditError"
            case describeAuditError = "InternalError.DescribeAuditError"
            case inquireAuditCreditError = "InternalError.InquireAuditCreditError"
            case listAuditsError = "InternalError.ListAuditsError"
            case listCmqEnableRegionError = "InternalError.ListCmqEnableRegionError"
            case listCosEnableRegionError = "InternalError.ListCosEnableRegionError"
            case listKeyAliasByRegionError = "InternalError.ListKeyAliasByRegionError"
            case searchError = "InternalError.SearchError"
            case startLoggingError = "InternalError.StartLoggingError"
            case stopLoggingError = "InternalError.StopLoggingError"
            case updateAuditError = "InternalError.UpdateAuditError"
            case other = "InternalError"
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
        
        /// 创建cmq时发生异常，可能您准备创建的cmq队列已经存在，也有可能您没有权限或者欠费。
        public static var cmqError: InternalError {
            InternalError(.cmqError)
        }
        
        /// 创建跟踪集错误，请联系开发人员。
        public static var createAuditError: InternalError {
            InternalError(.createAuditError)
        }
        
        /// 删除跟踪集失败，请联系开发人员
        public static var deleteAuditError: InternalError {
            InternalError(.deleteAuditError)
        }
        
        /// 查看跟踪集详情错误，请联系开发人员
        public static var describeAuditError: InternalError {
            InternalError(.describeAuditError)
        }
        
        /// 查询可创建跟踪集的数量错误，请联系开发人员
        public static var inquireAuditCreditError: InternalError {
            InternalError(.inquireAuditCreditError)
        }
        
        /// 查询跟踪集概要内部错误，请联系开发人员。
        public static var listAuditsError: InternalError {
            InternalError(.listAuditsError)
        }
        
        /// 内部错误，请联系开发人员
        public static var listCmqEnableRegionError: InternalError {
            InternalError(.listCmqEnableRegionError)
        }
        
        /// 内部错误，请联系开发人员
        public static var listCosEnableRegionError: InternalError {
            InternalError(.listCosEnableRegionError)
        }
        
        /// 内部错误，请联系开发人员
        public static var listKeyAliasByRegionError: InternalError {
            InternalError(.listKeyAliasByRegionError)
        }
        
        /// 内部错误，请联系开发人员
        public static var searchError: InternalError {
            InternalError(.searchError)
        }
        
        /// 内部错误，请联系开发人员
        public static var startLoggingError: InternalError {
            InternalError(.startLoggingError)
        }
        
        /// 内部错误，请联系开发人员
        public static var stopLoggingError: InternalError {
            InternalError(.stopLoggingError)
        }
        
        /// 内部错误，请联系开发人员
        public static var updateAuditError: InternalError {
            InternalError(.updateAuditError)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
    }
}

extension TCCloudauditError.InternalError: Equatable {
    public static func == (lhs: TCCloudauditError.InternalError, rhs: TCCloudauditError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCloudauditError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCloudauditError.InternalError {
    /// - Returns: ``TCCloudauditError`` that holds the same error and context.
    public func toCloudauditError() -> TCCloudauditError {
        guard let code = TCCloudauditError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCloudauditError(code, context: self.context)
    }
}

extension TCCloudauditError.InternalError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
