//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCCynosdbError {
    public struct InternalError: TCCynosdbErrorType {
        enum Code: String {
            case dbOperationFailed = "InternalError.DbOperationFailed"
            case getSecurityGroupDetailFailed = "InternalError.GetSecurityGroupDetailFailed"
            case getSubnetFailed = "InternalError.GetSubnetFailed"
            case getVpcFailed = "InternalError.GetVpcFailed"
            case internalHttpServerError = "InternalError.InternalHttpServerError"
            case listInstanceFailed = "InternalError.ListInstanceFailed"
            case operateWanFail = "InternalError.OperateWanFail"
            case operationNotSupport = "InternalError.OperationNotSupport"
            case queryDatabaseFailed = "InternalError.QueryDatabaseFailed"
            case systemError = "InternalError.SystemError"
            case unknownError = "InternalError.UnknownError"
            case other = "InternalError"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 查询数据库失败。
        public static var dbOperationFailed: InternalError {
            InternalError(.dbOperationFailed)
        }

        /// 获取安全组信息失败。
        public static var getSecurityGroupDetailFailed: InternalError {
            InternalError(.getSecurityGroupDetailFailed)
        }

        /// 获取子网失败。
        public static var getSubnetFailed: InternalError {
            InternalError(.getSubnetFailed)
        }

        /// 获取VPC失败。
        public static var getVpcFailed: InternalError {
            InternalError(.getVpcFailed)
        }

        /// http请求执行异常。
        public static var internalHttpServerError: InternalError {
            InternalError(.internalHttpServerError)
        }

        /// 安全组查询实例失败。
        public static var listInstanceFailed: InternalError {
            InternalError(.listInstanceFailed)
        }

        /// 操作外网失败。
        public static var operateWanFail: InternalError {
            InternalError(.operateWanFail)
        }

        /// 操作不支持。
        public static var operationNotSupport: InternalError {
            InternalError(.operationNotSupport)
        }

        /// 查询数据库失败。
        public static var queryDatabaseFailed: InternalError {
            InternalError(.queryDatabaseFailed)
        }

        /// 系统内部错误。
        public static var systemError: InternalError {
            InternalError(.systemError)
        }

        /// 未知的内部错误。
        public static var unknownError: InternalError {
            InternalError(.unknownError)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asCynosdbError() -> TCCynosdbError {
            let code: TCCynosdbError.Code
            switch self.error {
            case .dbOperationFailed:
                code = .internalError_DbOperationFailed
            case .getSecurityGroupDetailFailed:
                code = .internalError_GetSecurityGroupDetailFailed
            case .getSubnetFailed:
                code = .internalError_GetSubnetFailed
            case .getVpcFailed:
                code = .internalError_GetVpcFailed
            case .internalHttpServerError:
                code = .internalError_InternalHttpServerError
            case .listInstanceFailed:
                code = .internalError_ListInstanceFailed
            case .operateWanFail:
                code = .internalError_OperateWanFail
            case .operationNotSupport:
                code = .internalError_OperationNotSupport
            case .queryDatabaseFailed:
                code = .internalError_QueryDatabaseFailed
            case .systemError:
                code = .internalError_SystemError
            case .unknownError:
                code = .internalError_UnknownError
            case .other:
                code = .internalError
            }
            return TCCynosdbError(code, context: self.context)
        }
    }
}
