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

extension TCCdbError {
    public struct FailedOperation: TCCdbErrorType {
        enum Code: String {
            case asyncTaskStatusError = "FailedOperation.AsyncTaskStatusError"
            case auditConfigNotExist = "FailedOperation.AuditConfigNotExist"
            case cdbInstanceLockFailError = "FailedOperation.CdbInstanceLockFailError"
            case createAccountError = "FailedOperation.CreateAccountError"
            case createAuditFailError = "FailedOperation.CreateAuditFailError"
            case createAuditLogFileError = "FailedOperation.CreateAuditLogFileError"
            case createRoVipError = "FailedOperation.CreateRoVipError"
            case dbOperationActionError = "FailedOperation.DBOperationActionError"
            case deleteAuditFailError = "FailedOperation.DeleteAuditFailError"
            case describeProxyGroupError = "FailedOperation.DescribeProxyGroupError"
            case getPrivilegeError = "FailedOperation.GetPrivilegeError"
            case instanceQueryError = "FailedOperation.InstanceQueryError"
            case jsonMarshalError = "FailedOperation.JsonMarshalError"
            case jsonUnmarshalError = "FailedOperation.JsonUnmarshalError"
            case notDelayRo = "FailedOperation.NotDelayRo"
            case privilegeDataIllegal = "FailedOperation.PrivilegeDataIllegal"
            case proxyGroupStatusError = "FailedOperation.ProxyGroupStatusError"
            case queryLogError = "FailedOperation.QueryLogError"
            case repeatCreateProxyError = "FailedOperation.RepeatCreateProxyError"
            case responseValueError = "FailedOperation.ResponseValueError"
            case startFlowError = "FailedOperation.StartFlowError"
            case statusConflict = "FailedOperation.StatusConflict"
            case submitAsyncTaskError = "FailedOperation.SubmitAsyncTaskError"
            case timeoutError = "FailedOperation.TimeoutError"
            case typeInConflict = "FailedOperation.TypeInConflict"
            case other = "FailedOperation"
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

        /// 异步任务状态异常。
        public static var asyncTaskStatusError: FailedOperation {
            FailedOperation(.asyncTaskStatusError)
        }

        /// 审计不存在。
        ///
        /// 实例未开通审计
        public static var auditConfigNotExist: FailedOperation {
            FailedOperation(.auditConfigNotExist)
        }

        /// 实例互斥操作锁定失败,请稍后重试。
        public static var cdbInstanceLockFailError: FailedOperation {
            FailedOperation(.cdbInstanceLockFailError)
        }

        /// 创建失败，请检查用户是否已存在。
        public static var createAccountError: FailedOperation {
            FailedOperation(.createAccountError)
        }

        /// 创建审计规则失败。
        public static var createAuditFailError: FailedOperation {
            FailedOperation(.createAuditFailError)
        }

        /// 创建审计日志文件失败。
        public static var createAuditLogFileError: FailedOperation {
            FailedOperation(.createAuditLogFileError)
        }

        /// 申请只读实例独立VIP失败。
        public static var createRoVipError: FailedOperation {
            FailedOperation(.createRoVipError)
        }

        /// 数据库操作失败。
        public static var dbOperationActionError: FailedOperation {
            FailedOperation(.dbOperationActionError)
        }

        /// 删除审计失败。
        public static var deleteAuditFailError: FailedOperation {
            FailedOperation(.deleteAuditFailError)
        }

        /// 查询数据库代理失败。
        public static var describeProxyGroupError: FailedOperation {
            FailedOperation(.describeProxyGroupError)
        }

        /// 获取权限错误。
        public static var getPrivilegeError: FailedOperation {
            FailedOperation(.getPrivilegeError)
        }

        /// 查询失败。
        public static var instanceQueryError: FailedOperation {
            FailedOperation(.instanceQueryError)
        }

        /// json序列化失败。
        public static var jsonMarshalError: FailedOperation {
            FailedOperation(.jsonMarshalError)
        }

        /// json反序列化失败。
        public static var jsonUnmarshalError: FailedOperation {
            FailedOperation(.jsonUnmarshalError)
        }

        /// 不是延迟复制RO。
        public static var notDelayRo: FailedOperation {
            FailedOperation(.notDelayRo)
        }

        /// 执行的权限修改操作非法。您可以参照产品文档，了解当前实例支持哪些权限修改操作，如有疑问，请您咨询客服进行处理。
        public static var privilegeDataIllegal: FailedOperation {
            FailedOperation(.privilegeDataIllegal)
        }

        /// 数据库代理状态异常。
        public static var proxyGroupStatusError: FailedOperation {
            FailedOperation(.proxyGroupStatusError)
        }

        /// 查询日志失败。
        public static var queryLogError: FailedOperation {
            FailedOperation(.queryLogError)
        }

        /// 代理创建中或则已存在，请勿重复创建。
        public static var repeatCreateProxyError: FailedOperation {
            FailedOperation(.repeatCreateProxyError)
        }

        /// 后台请求服务异常，请您联系客服解决。
        public static var responseValueError: FailedOperation {
            FailedOperation(.responseValueError)
        }

        /// 操作发起失败，请稍后重试。如果操作持续不成功，请您联系客服进行处理。
        public static var startFlowError: FailedOperation {
            FailedOperation(.startFlowError)
        }

        /// 任务状态冲突。
        public static var statusConflict: FailedOperation {
            FailedOperation(.statusConflict)
        }

        /// 提交任务失败，请稍后重试。如果持续提交失败，请您联系客服进行处理。
        public static var submitAsyncTaskError: FailedOperation {
            FailedOperation(.submitAsyncTaskError)
        }

        /// 查询超时。
        ///
        /// 请缩小查询范围重新查询
        public static var timeoutError: FailedOperation {
            FailedOperation(.timeoutError)
        }

        /// 类型错误，无法执行该操作。
        public static var typeInConflict: FailedOperation {
            FailedOperation(.typeInConflict)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asCdbError() -> TCCdbError {
            let code: TCCdbError.Code
            switch self.error {
            case .asyncTaskStatusError:
                code = .failedOperation_AsyncTaskStatusError
            case .auditConfigNotExist:
                code = .failedOperation_AuditConfigNotExist
            case .cdbInstanceLockFailError:
                code = .failedOperation_CdbInstanceLockFailError
            case .createAccountError:
                code = .failedOperation_CreateAccountError
            case .createAuditFailError:
                code = .failedOperation_CreateAuditFailError
            case .createAuditLogFileError:
                code = .failedOperation_CreateAuditLogFileError
            case .createRoVipError:
                code = .failedOperation_CreateRoVipError
            case .dbOperationActionError:
                code = .failedOperation_DBOperationActionError
            case .deleteAuditFailError:
                code = .failedOperation_DeleteAuditFailError
            case .describeProxyGroupError:
                code = .failedOperation_DescribeProxyGroupError
            case .getPrivilegeError:
                code = .failedOperation_GetPrivilegeError
            case .instanceQueryError:
                code = .failedOperation_InstanceQueryError
            case .jsonMarshalError:
                code = .failedOperation_JsonMarshalError
            case .jsonUnmarshalError:
                code = .failedOperation_JsonUnmarshalError
            case .notDelayRo:
                code = .failedOperation_NotDelayRo
            case .privilegeDataIllegal:
                code = .failedOperation_PrivilegeDataIllegal
            case .proxyGroupStatusError:
                code = .failedOperation_ProxyGroupStatusError
            case .queryLogError:
                code = .failedOperation_QueryLogError
            case .repeatCreateProxyError:
                code = .failedOperation_RepeatCreateProxyError
            case .responseValueError:
                code = .failedOperation_ResponseValueError
            case .startFlowError:
                code = .failedOperation_StartFlowError
            case .statusConflict:
                code = .failedOperation_StatusConflict
            case .submitAsyncTaskError:
                code = .failedOperation_SubmitAsyncTaskError
            case .timeoutError:
                code = .failedOperation_TimeoutError
            case .typeInConflict:
                code = .failedOperation_TypeInConflict
            case .other:
                code = .failedOperation
            }
            return TCCdbError(code, context: self.context)
        }
    }
}
