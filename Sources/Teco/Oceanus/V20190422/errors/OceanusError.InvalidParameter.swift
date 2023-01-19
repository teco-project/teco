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

extension TCOceanusError {
    public struct InvalidParameter: TCOceanusErrorType {
        enum Code: String {
            case appIdResourceNotMatch = "InvalidParameter.AppIdResourceNotMatch"
            case illegalMaxParallelism = "InvalidParameter.IllegalMaxParallelism"
            case invalidAppId = "InvalidParameter.InvalidAppId"
            case invalidClusterId = "InvalidParameter.InvalidClusterId"
            case invalidName = "InvalidParameter.InvalidName"
            case invalidRegion = "InvalidParameter.InvalidRegion"
            case invalidResourceIds = "InvalidParameter.InvalidResourceIds"
            case jobConfigLogCollectParamError = "InvalidParameter.JobConfigLogCollectParamError"
            case maxParallelismTooLarge = "InvalidParameter.MaxParallelismTooLarge"
            case maxParallelismTooSmall = "InvalidParameter.MaxParallelismTooSmall"
            case uinResourceNotMatch = "InvalidParameter.UinResourceNotMatch"
            case unsupportedFlinkConf = "InvalidParameter.UnsupportedFlinkConf"
            case other = "InvalidParameter"
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

        /// AppId资源不匹配。
        public static var appIdResourceNotMatch: InvalidParameter {
            InvalidParameter(.appIdResourceNotMatch)
        }

        /// 非法的 MaxParallelism 参数。
        ///
        /// MaxParallelism 必须大于等于作业的算子最大并行度，且不能大于 16384.
        /// 另外，如果当前作业处于暂停中，则不允许修改 MaxParallelism 的值，以防止状态恢复报错。
        public static var illegalMaxParallelism: InvalidParameter {
            InvalidParameter(.illegalMaxParallelism)
        }

        /// appid错误。
        public static var invalidAppId: InvalidParameter {
            InvalidParameter(.invalidAppId)
        }

        /// 无效集群id。
        public static var invalidClusterId: InvalidParameter {
            InvalidParameter(.invalidClusterId)
        }

        /// 名字不符合规范。
        public static var invalidName: InvalidParameter {
            InvalidParameter(.invalidName)
        }

        /// 无效Region。
        public static var invalidRegion: InvalidParameter {
            InvalidParameter(.invalidRegion)
        }

        /// ResourceIds非法。
        public static var invalidResourceIds: InvalidParameter {
            InvalidParameter(.invalidResourceIds)
        }

        /// 请输入有效的日志采集方式或者存储桶名称。
        public static var jobConfigLogCollectParamError: InvalidParameter {
            InvalidParameter(.jobConfigLogCollectParamError)
        }

        /// MaxParallelism 过大。
        ///
        /// 不建议超过 2048，不允许超过 16384。
        public static var maxParallelismTooLarge: InvalidParameter {
            InvalidParameter(.maxParallelismTooLarge)
        }

        /// MaxParallelism 不允许小于算子默认并行度。
        ///
        /// 请调小算子默认并行度，或增大 MaxParallelism 取值（无法保留运行状态）。
        public static var maxParallelismTooSmall: InvalidParameter {
            InvalidParameter(.maxParallelismTooSmall)
        }

        /// Uin资源不匹配。
        public static var uinResourceNotMatch: InvalidParameter {
            InvalidParameter(.uinResourceNotMatch)
        }

        /// Flink参数非法。
        public static var unsupportedFlinkConf: InvalidParameter {
            InvalidParameter(.unsupportedFlinkConf)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asOceanusError() -> TCOceanusError {
            let code: TCOceanusError.Code
            switch self.error {
            case .appIdResourceNotMatch:
                code = .invalidParameter_AppIdResourceNotMatch
            case .illegalMaxParallelism:
                code = .invalidParameter_IllegalMaxParallelism
            case .invalidAppId:
                code = .invalidParameter_InvalidAppId
            case .invalidClusterId:
                code = .invalidParameter_InvalidClusterId
            case .invalidName:
                code = .invalidParameter_InvalidName
            case .invalidRegion:
                code = .invalidParameter_InvalidRegion
            case .invalidResourceIds:
                code = .invalidParameter_InvalidResourceIds
            case .jobConfigLogCollectParamError:
                code = .invalidParameter_JobConfigLogCollectParamError
            case .maxParallelismTooLarge:
                code = .invalidParameter_MaxParallelismTooLarge
            case .maxParallelismTooSmall:
                code = .invalidParameter_MaxParallelismTooSmall
            case .uinResourceNotMatch:
                code = .invalidParameter_UinResourceNotMatch
            case .unsupportedFlinkConf:
                code = .invalidParameter_UnsupportedFlinkConf
            case .other:
                code = .invalidParameter
            }
            return TCOceanusError(code, context: self.context)
        }
    }
}
