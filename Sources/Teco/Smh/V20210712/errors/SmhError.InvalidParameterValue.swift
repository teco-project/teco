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

extension TCSmhError {
    public struct InvalidParameterValue: TCSmhErrorType {
        enum Code: String {
            case bucketNameInvalid = "InvalidParameterValue.BucketNameInvalid"
            case bucketNameNotBelongYou = "InvalidParameterValue.BucketNameNotBelongYou"
            case bucketNotFound = "InvalidParameterValue.BucketNotFound"
            case bucketNotSupport = "InvalidParameterValue.BucketNotSupport"
            case bucketRegionInvalid = "InvalidParameterValue.BucketRegionInvalid"
            case cosStorageClass = "InvalidParameterValue.CosStorageClass"
            case cosStorageClassIntelligentTiering = "InvalidParameterValue.CosStorageClassIntelligentTiering"
            case countryCode = "InvalidParameterValue.CountryCode"
            case limitExceeded = "InvalidParameterValue.LimitExceeded"
            case notModified = "InvalidParameterValue.NotModified"
            case notSuperAdmin = "InvalidParameterValue.NotSuperAdmin"
            case phoneNumber = "InvalidParameterValue.PhoneNumber"
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

        /// 存储桶名称无效。
        public static var bucketNameInvalid: InvalidParameterValue {
            InvalidParameterValue(.bucketNameInvalid)
        }

        /// 存储桶名称不属于当前主账号。
        public static var bucketNameNotBelongYou: InvalidParameterValue {
            InvalidParameterValue(.bucketNameNotBelongYou)
        }

        /// 存储桶不存在或不在指定地域。
        public static var bucketNotFound: InvalidParameterValue {
            InvalidParameterValue(.bucketNotFound)
        }

        /// 请忽略此参数，服务会默认提供存储功能。
        public static var bucketNotSupport: InvalidParameterValue {
            InvalidParameterValue(.bucketNotSupport)
        }

        /// 存储桶所在地域无效。
        public static var bucketRegionInvalid: InvalidParameterValue {
            InvalidParameterValue(.bucketRegionInvalid)
        }

        /// 指定的存储类型无效。
        public static var cosStorageClass: InvalidParameterValue {
            InvalidParameterValue(.cosStorageClass)
        }

        /// 指定的存储桶未开启智能分层存储，请先开通存储桶的智能分层存储功能。
        public static var cosStorageClassIntelligentTiering: InvalidParameterValue {
            InvalidParameterValue(.cosStorageClassIntelligentTiering)
        }

        /// 指定的国家代码无效。
        public static var countryCode: InvalidParameterValue {
            InvalidParameterValue(.countryCode)
        }

        /// 参数值数量或字符数超过限制。
        public static var limitExceeded: InvalidParameterValue {
            InvalidParameterValue(.limitExceeded)
        }

        /// 指定的手机号码与当前的相同。
        public static var notModified: InvalidParameterValue {
            InvalidParameterValue(.notModified)
        }

        /// 指定的手机号码非该企业的超级管理员。
        public static var notSuperAdmin: InvalidParameterValue {
            InvalidParameterValue(.notSuperAdmin)
        }

        /// 指定的手机号码无效。
        public static var phoneNumber: InvalidParameterValue {
            InvalidParameterValue(.phoneNumber)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asSmhError() -> TCSmhError {
            let code: TCSmhError.Code
            switch self.error {
            case .bucketNameInvalid:
                code = .invalidParameterValue_BucketNameInvalid
            case .bucketNameNotBelongYou:
                code = .invalidParameterValue_BucketNameNotBelongYou
            case .bucketNotFound:
                code = .invalidParameterValue_BucketNotFound
            case .bucketNotSupport:
                code = .invalidParameterValue_BucketNotSupport
            case .bucketRegionInvalid:
                code = .invalidParameterValue_BucketRegionInvalid
            case .cosStorageClass:
                code = .invalidParameterValue_CosStorageClass
            case .cosStorageClassIntelligentTiering:
                code = .invalidParameterValue_CosStorageClassIntelligentTiering
            case .countryCode:
                code = .invalidParameterValue_CountryCode
            case .limitExceeded:
                code = .invalidParameterValue_LimitExceeded
            case .notModified:
                code = .invalidParameterValue_NotModified
            case .notSuperAdmin:
                code = .invalidParameterValue_NotSuperAdmin
            case .phoneNumber:
                code = .invalidParameterValue_PhoneNumber
            case .other:
                code = .invalidParameterValue
            }
            return TCSmhError(code, context: self.context)
        }
    }
}
