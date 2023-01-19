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

extension TCClsError {
    public struct FailedOperation: TCClsErrorType {
        enum Code: String {
            case bindedAlarm = "FailedOperation.BindedAlarm"
            case getlogReachLimit = "FailedOperation.GetlogReachLimit"
            case inValidIndexRuleForSearchLow = "FailedOperation.InValidIndexRuleForSearchLow"
            case invalidAlarm = "FailedOperation.InvalidAlarm"
            case invalidContext = "FailedOperation.InvalidContext"
            case invalidPeriod = "FailedOperation.InvalidPeriod"
            case logsetConflict = "FailedOperation.LogsetConflict"
            case logsetNotEmpty = "FailedOperation.LogsetNotEmpty"
            case missingContent = "FailedOperation.MissingContent"
            case periodModifyForbidden = "FailedOperation.PeriodModifyForbidden"
            case queryError = "FailedOperation.QueryError"
            case readQpsLimit = "FailedOperation.ReadQpsLimit"
            case searchTimeout = "FailedOperation.SearchTimeout"
            case shipperTaskNotToRetry = "FailedOperation.ShipperTaskNotToRetry"
            case syntaxError = "FailedOperation.SyntaxError"
            case tagQpsLimit = "FailedOperation.TagQpsLimit"
            case topicClosed = "FailedOperation.TopicClosed"
            case topicIsolated = "FailedOperation.TopicIsolated"
            case writeQpsLimit = "FailedOperation.WriteQpsLimit"
            case writeTrafficLimit = "FailedOperation.WriteTrafficLimit"
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

        /// 告警策略通知模板已经绑定到了某个告警策略上。
        public static var bindedAlarm: FailedOperation {
            FailedOperation(.bindedAlarm)
        }

        /// 检索日志触发最大条数限制。
        public static var getlogReachLimit: FailedOperation {
            FailedOperation(.getlogReachLimit)
        }

        /// 低频不支持配置kv和tag索引。
        public static var inValidIndexRuleForSearchLow: FailedOperation {
            FailedOperation(.inValidIndexRuleForSearchLow)
        }

        /// 该告警策略状态异常，请检查下日志主题ID是否都存在。
        public static var invalidAlarm: FailedOperation {
            FailedOperation(.invalidAlarm)
        }

        /// 检索游标已失效或不存在。
        ///
        /// 请重新输入有效参数。
        public static var invalidContext: FailedOperation {
            FailedOperation(.invalidContext)
        }

        /// 离线存储保存时间不得少于7天。
        public static var invalidPeriod: FailedOperation {
            FailedOperation(.invalidPeriod)
        }

        /// 相同的日志集已存在。
        public static var logsetConflict: FailedOperation {
            FailedOperation(.logsetConflict)
        }

        /// 日志集下存在日志主题。
        public static var logsetNotEmpty: FailedOperation {
            FailedOperation(.logsetNotEmpty)
        }

        /// 无效的Content。
        public static var missingContent: FailedOperation {
            FailedOperation(.missingContent)
        }

        /// 修改的生命周期被禁止。
        public static var periodModifyForbidden: FailedOperation {
            FailedOperation(.periodModifyForbidden)
        }

        /// 查询语句运行失败。
        ///
        /// 请检查索引配置及查询语句。若无法解决，请联系智能客服或提交工单。
        public static var queryError: FailedOperation {
            FailedOperation(.queryError)
        }

        /// 读qps超过限制。
        public static var readQpsLimit: FailedOperation {
            FailedOperation(.readQpsLimit)
        }

        /// 查询超时。
        ///
        /// 请稍后重试或优化语句。若无法解决，请联系智能客服或提交工单。
        public static var searchTimeout: FailedOperation {
            FailedOperation(.searchTimeout)
        }

        /// 投递任务不允许重试。
        public static var shipperTaskNotToRetry: FailedOperation {
            FailedOperation(.shipperTaskNotToRetry)
        }

        /// 查询语句解析错误。
        ///
        /// 请检查语法并输入正确语句。
        public static var syntaxError: FailedOperation {
            FailedOperation(.syntaxError)
        }

        /// 请求标签服务限频。
        ///
        /// 控制请求次数
        public static var tagQpsLimit: FailedOperation {
            FailedOperation(.tagQpsLimit)
        }

        /// 日志主题已关闭。
        public static var topicClosed: FailedOperation {
            FailedOperation(.topicClosed)
        }

        /// 日志主题已隔离。
        ///
        /// 请检查日志主题状态。若无法解决，请联系智能客服或提交工单。
        public static var topicIsolated: FailedOperation {
            FailedOperation(.topicIsolated)
        }

        /// 写qps超过限制。
        public static var writeQpsLimit: FailedOperation {
            FailedOperation(.writeQpsLimit)
        }

        /// 写流量超过限制。
        public static var writeTrafficLimit: FailedOperation {
            FailedOperation(.writeTrafficLimit)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asClsError() -> TCClsError {
            let code: TCClsError.Code
            switch self.error {
            case .bindedAlarm:
                code = .failedOperation_BindedAlarm
            case .getlogReachLimit:
                code = .failedOperation_GetlogReachLimit
            case .inValidIndexRuleForSearchLow:
                code = .failedOperation_InValidIndexRuleForSearchLow
            case .invalidAlarm:
                code = .failedOperation_InvalidAlarm
            case .invalidContext:
                code = .failedOperation_InvalidContext
            case .invalidPeriod:
                code = .failedOperation_InvalidPeriod
            case .logsetConflict:
                code = .failedOperation_LogsetConflict
            case .logsetNotEmpty:
                code = .failedOperation_LogsetNotEmpty
            case .missingContent:
                code = .failedOperation_MissingContent
            case .periodModifyForbidden:
                code = .failedOperation_PeriodModifyForbidden
            case .queryError:
                code = .failedOperation_QueryError
            case .readQpsLimit:
                code = .failedOperation_ReadQpsLimit
            case .searchTimeout:
                code = .failedOperation_SearchTimeout
            case .shipperTaskNotToRetry:
                code = .failedOperation_ShipperTaskNotToRetry
            case .syntaxError:
                code = .failedOperation_SyntaxError
            case .tagQpsLimit:
                code = .failedOperation_TagQpsLimit
            case .topicClosed:
                code = .failedOperation_TopicClosed
            case .topicIsolated:
                code = .failedOperation_TopicIsolated
            case .writeQpsLimit:
                code = .failedOperation_WriteQpsLimit
            case .writeTrafficLimit:
                code = .failedOperation_WriteTrafficLimit
            case .other:
                code = .failedOperation
            }
            return TCClsError(code, context: self.context)
        }
    }
}
