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

extension TCCdcError {
    public struct InvalidParameterValue: TCCdcErrorType {
        enum Code: String {
            case invalidAppIdFormat = "InvalidParameterValue.InvalidAppIdFormat"
            case invalidValueDedicatedClusterCosSize = "InvalidParameterValue.InvalidValueDedicatedClusterCosSize"
            case invalidValueDedicatedClusterDataStepSize = "InvalidParameterValue.InvalidValueDedicatedClusterDataStepSize"
            case invalidValueRegion = "InvalidParameterValue.InvalidValueRegion"
            case limitExceeded = "InvalidParameterValue.LimitExceeded"
            case region = "InvalidParameterValue.Region"
            case tooLong = "InvalidParameterValue.TooLong"
            case zoneMismatchRegion = "InvalidParameterValue.ZoneMismatchRegion"
            case zoneNotSupported = "InvalidParameterValue.ZoneNotSupported"
            case other = "InvalidParameterValue"
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

        /// ccdb返回结果不为0。
        ///
        /// CCDB执行错误，请检查
        public static var invalidAppIdFormat: InvalidParameterValue {
            InvalidParameterValue(.invalidAppIdFormat)
        }

        /// 本地专用集群COS大小不正确。
        ///
        /// 它必须是40/60/80/100TB，或者(100 + 20*x)TB
        public static var invalidValueDedicatedClusterCosSize: InvalidParameterValue {
            InvalidParameterValue(.invalidValueDedicatedClusterCosSize)
        }

        /// CBS大小不正确，它必须是40的整数倍。
        ///
        /// CBS大小不正确，它必须是40的整数倍
        public static var invalidValueDedicatedClusterDataStepSize: InvalidParameterValue {
            InvalidParameterValue(.invalidValueDedicatedClusterDataStepSize)
        }

        /// region无效。
        ///
        /// region无效
        public static var invalidValueRegion: InvalidParameterValue {
            InvalidParameterValue(.invalidValueRegion)
        }

        /// 超出大小限制。
        ///
        /// 超出大小限制
        public static var limitExceeded: InvalidParameterValue {
            InvalidParameterValue(.limitExceeded)
        }

        /// 无效Region ID 。
        ///
        /// 请确认Region ID 是否存在。
        public static var region: InvalidParameterValue {
            InvalidParameterValue(.region)
        }

        /// 参数名过长。
        ///
        /// 参数名过长
        public static var tooLong: InvalidParameterValue {
            InvalidParameterValue(.tooLong)
        }

        /// zone和region不匹配。
        public static var zoneMismatchRegion: InvalidParameterValue {
            InvalidParameterValue(.zoneMismatchRegion)
        }

        /// 当前可用区暂未支持。
        public static var zoneNotSupported: InvalidParameterValue {
            InvalidParameterValue(.zoneNotSupported)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asCdcError() -> TCCdcError {
            let code: TCCdcError.Code
            switch self.error {
            case .invalidAppIdFormat:
                code = .invalidParameterValue_InvalidAppIdFormat
            case .invalidValueDedicatedClusterCosSize:
                code = .invalidParameterValue_InvalidValueDedicatedClusterCosSize
            case .invalidValueDedicatedClusterDataStepSize:
                code = .invalidParameterValue_InvalidValueDedicatedClusterDataStepSize
            case .invalidValueRegion:
                code = .invalidParameterValue_InvalidValueRegion
            case .limitExceeded:
                code = .invalidParameterValue_LimitExceeded
            case .region:
                code = .invalidParameterValue_Region
            case .tooLong:
                code = .invalidParameterValue_TooLong
            case .zoneMismatchRegion:
                code = .invalidParameterValue_ZoneMismatchRegion
            case .zoneNotSupported:
                code = .invalidParameterValue_ZoneNotSupported
            case .other:
                code = .invalidParameterValue
            }
            return TCCdcError(code, context: self.context)
        }
    }
}
