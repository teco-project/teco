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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCApmError {
    public struct FailedOperation: TCApmErrorType {
        enum Code: String {
            case accessTagFail = "FailedOperation.AccessTagFail"
            case appIdNotMatchInstanceInfo = "FailedOperation.AppIdNotMatchInstanceInfo"
            case demoInstanceNotAllowModified = "FailedOperation.DemoInstanceNotAllowModified"
            case instanceIdIsEmpty = "FailedOperation.InstanceIdIsEmpty"
            case instanceNotFound = "FailedOperation.InstanceNotFound"
            case invalidInstanceID = "FailedOperation.InvalidInstanceID"
            case metricFiltersLackParams = "FailedOperation.MetricFiltersLackParams"
            case notInnerVPC = "FailedOperation.NotInnerVPC"
            case queryTimeIntervalIsNotSupported = "FailedOperation.QueryTimeIntervalIsNotSupported"
            case regionNotSupport = "FailedOperation.RegionNotSupport"
            case sendRequest = "FailedOperation.SendRequest"
            case viewNameNotExistOrIllegal = "FailedOperation.ViewNameNotExistOrIllegal"
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

        /// 访问标签失败。
        public static var accessTagFail: FailedOperation {
            FailedOperation(.accessTagFail)
        }

        /// appid和实例信息不匹配。
        public static var appIdNotMatchInstanceInfo: FailedOperation {
            FailedOperation(.appIdNotMatchInstanceInfo)
        }

        /// 未命中白名单且实例id为官方demo实例id时，不允许修改接口。
        public static var demoInstanceNotAllowModified: FailedOperation {
            FailedOperation(.demoInstanceNotAllowModified)
        }

        /// 实例ID为空。
        public static var instanceIdIsEmpty: FailedOperation {
            FailedOperation(.instanceIdIsEmpty)
        }

        /// apm实例不存在。
        public static var instanceNotFound: FailedOperation {
            FailedOperation(.instanceNotFound)
        }

        /// 非法实例id。
        public static var invalidInstanceID: FailedOperation {
            FailedOperation(.invalidInstanceID)
        }

        /// 查询指标类数据查询条件缺少过滤参数。
        public static var metricFiltersLackParams: FailedOperation {
            FailedOperation(.metricFiltersLackParams)
        }

        /// 非内网vpc。
        public static var notInnerVPC: FailedOperation {
            FailedOperation(.notInnerVPC)
        }

        /// 查询时间区间不支持。
        public static var queryTimeIntervalIsNotSupported: FailedOperation {
            FailedOperation(.queryTimeIntervalIsNotSupported)
        }

        /// 不支持该地域。
        public static var regionNotSupport: FailedOperation {
            FailedOperation(.regionNotSupport)
        }

        /// 发送查询请求失败。
        public static var sendRequest: FailedOperation {
            FailedOperation(.sendRequest)
        }

        /// 视图名不存在或非法。
        public static var viewNameNotExistOrIllegal: FailedOperation {
            FailedOperation(.viewNameNotExistOrIllegal)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asApmError() -> TCApmError {
            let code: TCApmError.Code
            switch self.error {
            case .accessTagFail:
                code = .failedOperation_AccessTagFail
            case .appIdNotMatchInstanceInfo:
                code = .failedOperation_AppIdNotMatchInstanceInfo
            case .demoInstanceNotAllowModified:
                code = .failedOperation_DemoInstanceNotAllowModified
            case .instanceIdIsEmpty:
                code = .failedOperation_InstanceIdIsEmpty
            case .instanceNotFound:
                code = .failedOperation_InstanceNotFound
            case .invalidInstanceID:
                code = .failedOperation_InvalidInstanceID
            case .metricFiltersLackParams:
                code = .failedOperation_MetricFiltersLackParams
            case .notInnerVPC:
                code = .failedOperation_NotInnerVPC
            case .queryTimeIntervalIsNotSupported:
                code = .failedOperation_QueryTimeIntervalIsNotSupported
            case .regionNotSupport:
                code = .failedOperation_RegionNotSupport
            case .sendRequest:
                code = .failedOperation_SendRequest
            case .viewNameNotExistOrIllegal:
                code = .failedOperation_ViewNameNotExistOrIllegal
            case .other:
                code = .failedOperation
            }
            return TCApmError(code, context: self.context)
        }
    }
}
