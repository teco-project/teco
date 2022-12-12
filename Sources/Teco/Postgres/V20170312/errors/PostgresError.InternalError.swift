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

extension TCPostgresError {
    public struct InternalError: TCPostgresErrorType {
        enum Code: String {
            case cgwError = "InternalError.CgwError"
            case cnsError = "InternalError.CnsError"
            case dbError = "InternalError.DBError"
            case dfwError = "InternalError.DfwError"
            case flowError = "InternalError.FlowError"
            case instanceDataError = "InternalError.InstanceDataError"
            case internalHttpServerError = "InternalError.InternalHttpServerError"
            case marshalError = "InternalError.MarshalError"
            case systemError = "InternalError.SystemError"
            case transactioBeginError = "InternalError.TransactioBeginError"
            case unknownError = "InternalError.UnknownError"
            case vpcError = "InternalError.VpcError"
            case other = "InternalError"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
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
        
        /// CGW相关错误。
        public static var cgwError: InternalError {
            InternalError(.cgwError)
        }
        
        /// 基础网络相关错误。
        public static var cnsError: InternalError {
            InternalError(.cnsError)
        }
        
        /// 后台DB执行错误。
        public static var dbError: InternalError {
            InternalError(.dbError)
        }
        
        /// DFW相关错误。
        public static var dfwError: InternalError {
            InternalError(.dfwError)
        }
        
        /// 流程创建失败。
        public static var flowError: InternalError {
            InternalError(.flowError)
        }
        
        /// 管控系统元数据访问异常，请联系客服处理。
        public static var instanceDataError: InternalError {
            InternalError(.instanceDataError)
        }
        
        public static var internalHttpServerError: InternalError {
            InternalError(.internalHttpServerError)
        }
        
        /// 后台数据解析失败，请联系客服进行处理。
        public static var marshalError: InternalError {
            InternalError(.marshalError)
        }
        
        /// 系统错误。出现这种错误时，请联系客服支持。
        public static var systemError: InternalError {
            InternalError(.systemError)
        }
        
        public static var transactioBeginError: InternalError {
            InternalError(.transactioBeginError)
        }
        
        /// 其他未知错误。出现这种错误时，请联系客服支持。
        public static var unknownError: InternalError {
            InternalError(.unknownError)
        }
        
        /// VPC相关错误。
        public static var vpcError: InternalError {
            InternalError(.vpcError)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
        
        public func asPostgresError() -> TCPostgresError {
            let code: TCPostgresError.Code
            switch self.error {
            case .cgwError: 
                code = .internalError_CgwError
            case .cnsError: 
                code = .internalError_CnsError
            case .dbError: 
                code = .internalError_DBError
            case .dfwError: 
                code = .internalError_DfwError
            case .flowError: 
                code = .internalError_FlowError
            case .instanceDataError: 
                code = .internalError_InstanceDataError
            case .internalHttpServerError: 
                code = .internalError_InternalHttpServerError
            case .marshalError: 
                code = .internalError_MarshalError
            case .systemError: 
                code = .internalError_SystemError
            case .transactioBeginError: 
                code = .internalError_TransactioBeginError
            case .unknownError: 
                code = .internalError_UnknownError
            case .vpcError: 
                code = .internalError_VpcError
            case .other: 
                code = .internalError
            }
            return TCPostgresError(code, context: self.context)
        }
    }
}
