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

extension TCCdnError {
    public struct LimitExceeded: TCCdnErrorType {
        enum Code: String {
            case camResourceArrayTooLong = "LimitExceeded.CamResourceArrayTooLong"
            case camResourceTooManyTagKey = "LimitExceeded.CamResourceTooManyTagKey"
            case camTagKeyTooLong = "LimitExceeded.CamTagKeyTooLong"
            case camTagKeyTooManyTagValue = "LimitExceeded.CamTagKeyTooManyTagValue"
            case camTagQuotaExceedLimit = "LimitExceeded.CamTagQuotaExceedLimit"
            case camUserTooManyTagKey = "LimitExceeded.CamUserTooManyTagKey"
            case cdnCallingQueryIpTooOften = "LimitExceeded.CdnCallingQueryIpTooOften"
            case cdnClsTooManyTopics = "LimitExceeded.CdnClsTooManyTopics"
            case cdnConfigTooManyCacheRules = "LimitExceeded.CdnConfigTooManyCacheRules"
            case cdnHostOpTooOften = "LimitExceeded.CdnHostOpTooOften"
            case cdnPurgeExceedBatchLimit = "LimitExceeded.CdnPurgeExceedBatchLimit"
            case cdnPurgeExceedDayLimit = "LimitExceeded.CdnPurgeExceedDayLimit"
            case cdnPurgePathExceedBatchLimit = "LimitExceeded.CdnPurgePathExceedBatchLimit"
            case cdnPurgePathExceedDayLimit = "LimitExceeded.CdnPurgePathExceedDayLimit"
            case cdnPurgeUrlExceedBatchLimit = "LimitExceeded.CdnPurgeUrlExceedBatchLimit"
            case cdnPurgeUrlExceedDayLimit = "LimitExceeded.CdnPurgeUrlExceedDayLimit"
            case cdnPushExceedBatchLimit = "LimitExceeded.CdnPushExceedBatchLimit"
            case cdnPushExceedDayLimit = "LimitExceeded.CdnPushExceedDayLimit"
            case cdnQueryIpBatchTooMany = "LimitExceeded.CdnQueryIpBatchTooMany"
            case cdnUserTooManyHosts = "LimitExceeded.CdnUserTooManyHosts"
            case clsLogSizeExceed = "LimitExceeded.ClsLogSizeExceed"
            case clsLogsetExceed = "LimitExceeded.ClsLogsetExceed"
            case clsTopicExceed = "LimitExceeded.ClsTopicExceed"
            case scdnLogTaskExceedDayLimit = "LimitExceeded.ScdnLogTaskExceedDayLimit"
            case other = "LimitExceeded"
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

        /// 资源数组超过最大值。
        public static var camResourceArrayTooLong: LimitExceeded {
            LimitExceeded(.camResourceArrayTooLong)
        }

        /// 单个资源标签键数不能超过50。
        public static var camResourceTooManyTagKey: LimitExceeded {
            LimitExceeded(.camResourceTooManyTagKey)
        }

        /// 标签键长度超过最大值。
        public static var camTagKeyTooLong: LimitExceeded {
            LimitExceeded(.camTagKeyTooLong)
        }

        /// 单个标签键对应标签值不能超过1000。
        public static var camTagKeyTooManyTagValue: LimitExceeded {
            LimitExceeded(.camTagKeyTooManyTagValue)
        }

        /// 域名绑定标签数量超出限制。
        public static var camTagQuotaExceedLimit: LimitExceeded {
            LimitExceeded(.camTagQuotaExceedLimit)
        }

        /// 单个用户最多1000个不同的key。
        public static var camUserTooManyTagKey: LimitExceeded {
            LimitExceeded(.camUserTooManyTagKey)
        }

        /// 查询IP归属操作过于频繁。
        public static var cdnCallingQueryIpTooOften: LimitExceeded {
            LimitExceeded(.cdnCallingQueryIpTooOften)
        }

        /// 该账号已经创建了太多主题。
        public static var cdnClsTooManyTopics: LimitExceeded {
            LimitExceeded(.cdnClsTooManyTopics)
        }

        /// 缓存配置规则数超出限制。
        public static var cdnConfigTooManyCacheRules: LimitExceeded {
            LimitExceeded(.cdnConfigTooManyCacheRules)
        }

        /// 域名操作过于频繁。
        public static var cdnHostOpTooOften: LimitExceeded {
            LimitExceeded(.cdnHostOpTooOften)
        }

        /// 请减少同一次API请求所提交的Url数量。
        public static var cdnPurgeExceedBatchLimit: LimitExceeded {
            LimitExceeded(.cdnPurgeExceedBatchLimit)
        }

        /// 请等待配额恢复后再提交刷新，或在CDN控制台-配额管理中申请临时配额。
        public static var cdnPurgeExceedDayLimit: LimitExceeded {
            LimitExceeded(.cdnPurgeExceedDayLimit)
        }

        /// 刷新的目录数量超过限制。
        public static var cdnPurgePathExceedBatchLimit: LimitExceeded {
            LimitExceeded(.cdnPurgePathExceedBatchLimit)
        }

        /// 刷新的目录数量超过每日限制。
        public static var cdnPurgePathExceedDayLimit: LimitExceeded {
            LimitExceeded(.cdnPurgePathExceedDayLimit)
        }

        /// 刷新的Url数量超过限制。
        public static var cdnPurgeUrlExceedBatchLimit: LimitExceeded {
            LimitExceeded(.cdnPurgeUrlExceedBatchLimit)
        }

        /// 刷新的Url数量超过每日限额。
        public static var cdnPurgeUrlExceedDayLimit: LimitExceeded {
            LimitExceeded(.cdnPurgeUrlExceedDayLimit)
        }

        /// 预热的Url数量超过单次限制。
        public static var cdnPushExceedBatchLimit: LimitExceeded {
            LimitExceeded(.cdnPushExceedBatchLimit)
        }

        /// 预热的Url数量超过每日限制。
        public static var cdnPushExceedDayLimit: LimitExceeded {
            LimitExceeded(.cdnPushExceedDayLimit)
        }

        /// 批量查询IP归属个数超过限制。
        public static var cdnQueryIpBatchTooMany: LimitExceeded {
            LimitExceeded(.cdnQueryIpBatchTooMany)
        }

        /// 用户域名数量已达上限，请联系腾讯云工程师处理。
        public static var cdnUserTooManyHosts: LimitExceeded {
            LimitExceeded(.cdnUserTooManyHosts)
        }

        /// 日志大小超限。
        public static var clsLogSizeExceed: LimitExceeded {
            LimitExceeded(.clsLogSizeExceed)
        }

        /// 日志集数目超出。
        public static var clsLogsetExceed: LimitExceeded {
            LimitExceeded(.clsLogsetExceed)
        }

        /// 主题超限。
        public static var clsTopicExceed: LimitExceeded {
            LimitExceeded(.clsTopicExceed)
        }

        /// 每日任务数量超出最大值。
        public static var scdnLogTaskExceedDayLimit: LimitExceeded {
            LimitExceeded(.scdnLogTaskExceedDayLimit)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asCdnError() -> TCCdnError {
            let code: TCCdnError.Code
            switch self.error {
            case .camResourceArrayTooLong:
                code = .limitExceeded_CamResourceArrayTooLong
            case .camResourceTooManyTagKey:
                code = .limitExceeded_CamResourceTooManyTagKey
            case .camTagKeyTooLong:
                code = .limitExceeded_CamTagKeyTooLong
            case .camTagKeyTooManyTagValue:
                code = .limitExceeded_CamTagKeyTooManyTagValue
            case .camTagQuotaExceedLimit:
                code = .limitExceeded_CamTagQuotaExceedLimit
            case .camUserTooManyTagKey:
                code = .limitExceeded_CamUserTooManyTagKey
            case .cdnCallingQueryIpTooOften:
                code = .limitExceeded_CdnCallingQueryIpTooOften
            case .cdnClsTooManyTopics:
                code = .limitExceeded_CdnClsTooManyTopics
            case .cdnConfigTooManyCacheRules:
                code = .limitExceeded_CdnConfigTooManyCacheRules
            case .cdnHostOpTooOften:
                code = .limitExceeded_CdnHostOpTooOften
            case .cdnPurgeExceedBatchLimit:
                code = .limitExceeded_CdnPurgeExceedBatchLimit
            case .cdnPurgeExceedDayLimit:
                code = .limitExceeded_CdnPurgeExceedDayLimit
            case .cdnPurgePathExceedBatchLimit:
                code = .limitExceeded_CdnPurgePathExceedBatchLimit
            case .cdnPurgePathExceedDayLimit:
                code = .limitExceeded_CdnPurgePathExceedDayLimit
            case .cdnPurgeUrlExceedBatchLimit:
                code = .limitExceeded_CdnPurgeUrlExceedBatchLimit
            case .cdnPurgeUrlExceedDayLimit:
                code = .limitExceeded_CdnPurgeUrlExceedDayLimit
            case .cdnPushExceedBatchLimit:
                code = .limitExceeded_CdnPushExceedBatchLimit
            case .cdnPushExceedDayLimit:
                code = .limitExceeded_CdnPushExceedDayLimit
            case .cdnQueryIpBatchTooMany:
                code = .limitExceeded_CdnQueryIpBatchTooMany
            case .cdnUserTooManyHosts:
                code = .limitExceeded_CdnUserTooManyHosts
            case .clsLogSizeExceed:
                code = .limitExceeded_ClsLogSizeExceed
            case .clsLogsetExceed:
                code = .limitExceeded_ClsLogsetExceed
            case .clsTopicExceed:
                code = .limitExceeded_ClsTopicExceed
            case .scdnLogTaskExceedDayLimit:
                code = .limitExceeded_ScdnLogTaskExceedDayLimit
            case .other:
                code = .limitExceeded
            }
            return TCCdnError(code, context: self.context)
        }
    }
}
