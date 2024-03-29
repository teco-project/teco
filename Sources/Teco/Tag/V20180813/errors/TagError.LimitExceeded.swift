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

extension TCTagError {
    public struct LimitExceeded: TCTagErrorType {
        enum Code: String {
            case quota = "LimitExceeded.Quota"
            case resourceAttachedTags = "LimitExceeded.ResourceAttachedTags"
            case resourceNumPerRequest = "LimitExceeded.ResourceNumPerRequest"
            case tagKey = "LimitExceeded.TagKey"
            case tagNumPerRequest = "LimitExceeded.TagNumPerRequest"
            case tagValue = "LimitExceeded.TagValue"
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

        /// 超过配额限制。
        public static var quota: LimitExceeded {
            LimitExceeded(.quota)
        }

        /// 资源关联的标签数超过限制。
        public static var resourceAttachedTags: LimitExceeded {
            LimitExceeded(.resourceAttachedTags)
        }

        /// 单次请求的资源数达到上限。
        public static var resourceNumPerRequest: LimitExceeded {
            LimitExceeded(.resourceNumPerRequest)
        }

        /// 用户创建标签键达到上限数 1000。
        public static var tagKey: LimitExceeded {
            LimitExceeded(.tagKey)
        }

        /// 单次请求的标签数超过上限。
        public static var tagNumPerRequest: LimitExceeded {
            LimitExceeded(.tagNumPerRequest)
        }

        /// 单个标签键对应标签值达到上限数 1000。
        public static var tagValue: LimitExceeded {
            LimitExceeded(.tagValue)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asTagError() -> TCTagError {
            let code: TCTagError.Code
            switch self.error {
            case .quota:
                code = .limitExceeded_Quota
            case .resourceAttachedTags:
                code = .limitExceeded_ResourceAttachedTags
            case .resourceNumPerRequest:
                code = .limitExceeded_ResourceNumPerRequest
            case .tagKey:
                code = .limitExceeded_TagKey
            case .tagNumPerRequest:
                code = .limitExceeded_TagNumPerRequest
            case .tagValue:
                code = .limitExceeded_TagValue
            case .other:
                code = .limitExceeded
            }
            return TCTagError(code, context: self.context)
        }
    }
}
