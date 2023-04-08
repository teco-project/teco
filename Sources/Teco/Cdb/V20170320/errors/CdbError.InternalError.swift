//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

import TecoCore

extension TCCdbError {
    public struct InternalError: TCCdbErrorType {
        enum Code: String {
            case asyncRequestError = "InternalError.AsyncRequestError"
            case auditCreateLogFileError = "InternalError.AuditCreateLogFileError"
            case auditDeleteLogFileError = "InternalError.AuditDeleteLogFileError"
            case auditDeletePolicyError = "InternalError.AuditDeletePolicyError"
            case auditError = "InternalError.AuditError"
            case auditModifyStatusError = "InternalError.AuditModifyStatusError"
            case auditOssLogicError = "InternalError.AuditOssLogicError"
            case authError = "InternalError.AuthError"
            case cauthError = "InternalError.CauthError"
            case cdbCgwError = "InternalError.CdbCgwError"
            case cdbError = "InternalError.CdbError"
            case cosError = "InternalError.CosError"
            case databaseAccessError = "InternalError.DatabaseAccessError"
            case dbError = "InternalError.DBError"
            case dbOperationError = "InternalError.DBOperationError"
            case dbRecordNotExistError = "InternalError.DBRecordNotExistError"
            case desError = "InternalError.DesError"
            case dfwError = "InternalError.DfwError"
            case exeSqlError = "InternalError.ExeSqlError"
            case execHttpRequestError = "InternalError.ExecHttpRequestError"
            case executeSQLError = "InternalError.ExecuteSQLError"
            case ftpError = "InternalError.FtpError"
            case httpError = "InternalError.HttpError"
            case importError = "InternalError.ImportError"
            case innerCommonError = "InternalError.InnerCommonError"
            case internalAssertError = "InternalError.InternalAssertError"
            case internalHttpServerError = "InternalError.InternalHttpServerError"
            case internalRequestError = "InternalError.InternalRequestError"
            case internalServiceErrorErr = "InternalError.InternalServiceErrorErr"
            case jsonError = "InternalError.JSONError"
            case kmsError = "InternalError.KmsError"
            case networkError = "InternalError.NetworkError"
            case ossError = "InternalError.OssError"
            case paramError = "InternalError.ParamError"
            case regexpCompileError = "InternalError.RegexpCompileError"
            case resourceNotMatch = "InternalError.ResourceNotMatch"
            case resourceNotUnique = "InternalError.ResourceNotUnique"
            case securityGroupError = "InternalError.SecurityGroupError"
            case serverError = "InternalError.ServerError"
            case serviceError = "InternalError.ServiceError"
            case tagError = "InternalError.TagError"
            case taskError = "InternalError.TaskError"
            case taskFrameError = "InternalError.TaskFrameError"
            case timeWindowError = "InternalError.TimeWindowError"
            case tradeError = "InternalError.TradeError"
            case transactionBeginError = "InternalError.TransactionBeginError"
            case undefinedError = "InternalError.UndefinedError"
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

        /// 查询异步任务错误。
        public static var asyncRequestError: InternalError {
            InternalError(.asyncRequestError)
        }

        /// 创建审计日志文件错误。
        public static var auditCreateLogFileError: InternalError {
            InternalError(.auditCreateLogFileError)
        }

        /// 删除审计日志错误。
        public static var auditDeleteLogFileError: InternalError {
            InternalError(.auditDeleteLogFileError)
        }

        /// 审计内部服务错误。
        public static var auditDeletePolicyError: InternalError {
            InternalError(.auditDeletePolicyError)
        }

        /// 审计内部服务错误。
        public static var auditError: InternalError {
            InternalError(.auditError)
        }

        /// 修改审计状态失败。
        public static var auditModifyStatusError: InternalError {
            InternalError(.auditModifyStatusError)
        }

        /// 审计服务内部异常。
        public static var auditOssLogicError: InternalError {
            InternalError(.auditOssLogicError)
        }

        /// 鉴权失败。
        public static var authError: InternalError {
            InternalError(.authError)
        }

        /// 鉴权失败。
        public static var cauthError: InternalError {
            InternalError(.cauthError)
        }

        /// 系统内部错误。
        public static var cdbCgwError: InternalError {
            InternalError(.cdbCgwError)
        }

        /// 系统错误。
        public static var cdbError: InternalError {
            InternalError(.cdbError)
        }

        /// 获取文件信息失败。
        public static var cosError: InternalError {
            InternalError(.cosError)
        }

        /// 数据库内部错误。
        public static var databaseAccessError: InternalError {
            InternalError(.databaseAccessError)
        }

        /// 数据库异常。
        public static var dbError: InternalError {
            InternalError(.dbError)
        }

        /// 数据库操作失败。
        public static var dbOperationError: InternalError {
            InternalError(.dbOperationError)
        }

        /// 数据库记录不存在。
        public static var dbRecordNotExistError: InternalError {
            InternalError(.dbRecordNotExistError)
        }

        /// 系统内部错误。
        public static var desError: InternalError {
            InternalError(.desError)
        }

        /// 安全组操作错误。
        public static var dfwError: InternalError {
            InternalError(.dfwError)
        }

        /// sql错误。
        public static var exeSqlError: InternalError {
            InternalError(.exeSqlError)
        }

        /// 执行http请求错误。
        public static var execHttpRequestError: InternalError {
            InternalError(.execHttpRequestError)
        }

        /// sql执行失败。
        public static var executeSQLError: InternalError {
            InternalError(.executeSQLError)
        }

        /// 文件传输异常。
        public static var ftpError: InternalError {
            InternalError(.ftpError)
        }

        /// Http请求异常。
        public static var httpError: InternalError {
            InternalError(.httpError)
        }

        /// 导入失败。
        public static var importError: InternalError {
            InternalError(.importError)
        }

        /// 内部服务错误。
        public static var innerCommonError: InternalError {
            InternalError(.innerCommonError)
        }

        /// 内部服务异常，请您联系客服进行处理。
        public static var internalAssertError: InternalError {
            InternalError(.internalAssertError)
        }

        /// 请求执行异常。
        public static var internalHttpServerError: InternalError {
            InternalError(.internalHttpServerError)
        }

        /// 后台请求服务失败，请稍后重试。
        public static var internalRequestError: InternalError {
            InternalError(.internalRequestError)
        }

        /// 访问内部服务错误。
        public static var internalServiceErrorErr: InternalError {
            InternalError(.internalServiceErrorErr)
        }

        /// json解析失败。
        public static var jsonError: InternalError {
            InternalError(.jsonError)
        }

        /// 开通加密失败。
        public static var kmsError: InternalError {
            InternalError(.kmsError)
        }

        /// 网络错误。
        public static var networkError: InternalError {
            InternalError(.networkError)
        }

        /// 高可用版服务错误。
        public static var ossError: InternalError {
            InternalError(.ossError)
        }

        /// 参数错误。
        public static var paramError: InternalError {
            InternalError(.paramError)
        }

        /// 正则表达式编译错误。
        public static var regexpCompileError: InternalError {
            InternalError(.regexpCompileError)
        }

        /// 资源不匹配。
        public static var resourceNotMatch: InternalError {
            InternalError(.resourceNotMatch)
        }

        /// 资源不唯一。
        public static var resourceNotUnique: InternalError {
            InternalError(.resourceNotUnique)
        }

        /// 安全组错误。
        public static var securityGroupError: InternalError {
            InternalError(.securityGroupError)
        }

        /// 系统内部错误。
        public static var serverError: InternalError {
            InternalError(.serverError)
        }

        /// 内部服务异常。
        public static var serviceError: InternalError {
            InternalError(.serviceError)
        }

        /// 更改tag失败，请稍后重试。
        public static var tagError: InternalError {
            InternalError(.tagError)
        }

        /// 任务异常。
        public static var taskError: InternalError {
            InternalError(.taskError)
        }

        /// 异步任务错误。
        public static var taskFrameError: InternalError {
            InternalError(.taskFrameError)
        }

        /// 时间窗错误。
        public static var timeWindowError: InternalError {
            InternalError(.timeWindowError)
        }

        /// 交易系统错误。
        public static var tradeError: InternalError {
            InternalError(.tradeError)
        }

        /// 操作失败。
        public static var transactionBeginError: InternalError {
            InternalError(.transactionBeginError)
        }

        /// 未知错误。
        public static var undefinedError: InternalError {
            InternalError(.undefinedError)
        }

        /// 未知错误。
        public static var unknownError: InternalError {
            InternalError(.unknownError)
        }

        /// 私有网络或子网错误。
        public static var vpcError: InternalError {
            InternalError(.vpcError)
        }

        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }

        public func asCdbError() -> TCCdbError {
            let code: TCCdbError.Code
            switch self.error {
            case .asyncRequestError:
                code = .internalError_AsyncRequestError
            case .auditCreateLogFileError:
                code = .internalError_AuditCreateLogFileError
            case .auditDeleteLogFileError:
                code = .internalError_AuditDeleteLogFileError
            case .auditDeletePolicyError:
                code = .internalError_AuditDeletePolicyError
            case .auditError:
                code = .internalError_AuditError
            case .auditModifyStatusError:
                code = .internalError_AuditModifyStatusError
            case .auditOssLogicError:
                code = .internalError_AuditOssLogicError
            case .authError:
                code = .internalError_AuthError
            case .cauthError:
                code = .internalError_CauthError
            case .cdbCgwError:
                code = .internalError_CdbCgwError
            case .cdbError:
                code = .internalError_CdbError
            case .cosError:
                code = .internalError_CosError
            case .databaseAccessError:
                code = .internalError_DatabaseAccessError
            case .dbError:
                code = .internalError_DBError
            case .dbOperationError:
                code = .internalError_DBOperationError
            case .dbRecordNotExistError:
                code = .internalError_DBRecordNotExistError
            case .desError:
                code = .internalError_DesError
            case .dfwError:
                code = .internalError_DfwError
            case .exeSqlError:
                code = .internalError_ExeSqlError
            case .execHttpRequestError:
                code = .internalError_ExecHttpRequestError
            case .executeSQLError:
                code = .internalError_ExecuteSQLError
            case .ftpError:
                code = .internalError_FtpError
            case .httpError:
                code = .internalError_HttpError
            case .importError:
                code = .internalError_ImportError
            case .innerCommonError:
                code = .internalError_InnerCommonError
            case .internalAssertError:
                code = .internalError_InternalAssertError
            case .internalHttpServerError:
                code = .internalError_InternalHttpServerError
            case .internalRequestError:
                code = .internalError_InternalRequestError
            case .internalServiceErrorErr:
                code = .internalError_InternalServiceErrorErr
            case .jsonError:
                code = .internalError_JSONError
            case .kmsError:
                code = .internalError_KmsError
            case .networkError:
                code = .internalError_NetworkError
            case .ossError:
                code = .internalError_OssError
            case .paramError:
                code = .internalError_ParamError
            case .regexpCompileError:
                code = .internalError_RegexpCompileError
            case .resourceNotMatch:
                code = .internalError_ResourceNotMatch
            case .resourceNotUnique:
                code = .internalError_ResourceNotUnique
            case .securityGroupError:
                code = .internalError_SecurityGroupError
            case .serverError:
                code = .internalError_ServerError
            case .serviceError:
                code = .internalError_ServiceError
            case .tagError:
                code = .internalError_TagError
            case .taskError:
                code = .internalError_TaskError
            case .taskFrameError:
                code = .internalError_TaskFrameError
            case .timeWindowError:
                code = .internalError_TimeWindowError
            case .tradeError:
                code = .internalError_TradeError
            case .transactionBeginError:
                code = .internalError_TransactionBeginError
            case .undefinedError:
                code = .internalError_UndefinedError
            case .unknownError:
                code = .internalError_UnknownError
            case .vpcError:
                code = .internalError_VpcError
            case .other:
                code = .internalError
            }
            return TCCdbError(code, context: self.context)
        }
    }
}
