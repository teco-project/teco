//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCSqlserverError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case camAuthFailed = "InternalError.CamAuthFailed"
            case cosError = "InternalError.CosError"
            case createFlowFailed = "InternalError.CreateFlowFailed"
            case dbConnectError = "InternalError.DBConnectError"
            case dbError = "InternalError.DBError"
            case gcsError = "InternalError.GcsError"
            case stsError = "InternalError.StsError"
            case systemError = "InternalError.SystemError"
            case unknownError = "InternalError.UnknownError"
            case vpcError = "InternalError.VPCError"
            case other = "InternalError"
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
        
        /// CAM鉴权请求失败。
        public static var camAuthFailed: InternalError {
            InternalError(.camAuthFailed)
        }
        
        /// COS接口错误。
        public static var cosError: InternalError {
            InternalError(.cosError)
        }
        
        /// 流程创建失败。
        public static var createFlowFailed: InternalError {
            InternalError(.createFlowFailed)
        }
        
        /// 数据库连接错误。
        public static var dbConnectError: InternalError {
            InternalError(.dbConnectError)
        }
        
        /// 数据库错误。
        public static var dbError: InternalError {
            InternalError(.dbError)
        }
        
        /// GCS接口错误。
        public static var gcsError: InternalError {
            InternalError(.gcsError)
        }
        
        /// 获取临时密钥错误。
        public static var stsError: InternalError {
            InternalError(.stsError)
        }
        
        /// 系统错误。
        public static var systemError: InternalError {
            InternalError(.systemError)
        }
        
        /// 未知错误。
        public static var unknownError: InternalError {
            InternalError(.unknownError)
        }
        
        /// VPC错误。
        public static var vpcError: InternalError {
            InternalError(.vpcError)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
    }
}

extension TCSqlserverError.InternalError: Equatable {
    public static func == (lhs: TCSqlserverError.InternalError, rhs: TCSqlserverError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSqlserverError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSqlserverError.InternalError {
    public func toSqlserverError() -> TCSqlserverError {
        guard let code = TCSqlserverError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCSqlserverError(code, context: self.context)
    }
}