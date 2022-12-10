//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCTagError {
    public struct LimitExceeded: TCErrorType {
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
        
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
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
    }
}

extension TCTagError.LimitExceeded: Equatable {
    public static func == (lhs: TCTagError.LimitExceeded, rhs: TCTagError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTagError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTagError.LimitExceeded {
    public func toTagError() -> TCTagError {
        guard let code = TCTagError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTagError(code, context: self.context)
    }
}