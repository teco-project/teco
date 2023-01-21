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

extension TCTdmqError {
    public struct InvalidParameterValue: TCTdmqErrorType {
        enum Code: String {
            case clusterNameDuplication = "InvalidParameterValue.ClusterNameDuplication"
            case invalidParams = "InvalidParameterValue.InvalidParams"
            case needMoreParams = "InvalidParameterValue.NeedMoreParams"
            case topicNotFound = "InvalidParameterValue.TopicNotFound"
            case ttl = "InvalidParameterValue.TTL"
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

        /// 与现有集群名称重复。
        public static var clusterNameDuplication: InvalidParameterValue {
            InvalidParameterValue(.clusterNameDuplication)
        }

        /// 参数值不在允许范围内。
        public static var invalidParams: InvalidParameterValue {
            InvalidParameterValue(.invalidParams)
        }

        /// 必要参数没有传递。
        public static var needMoreParams: InvalidParameterValue {
            InvalidParameterValue(.needMoreParams)
        }

        /// 上传的topic name错误。
        public static var topicNotFound: InvalidParameterValue {
            InvalidParameterValue(.topicNotFound)
        }

        /// 无效的消息TTL值。
        public static var ttl: InvalidParameterValue {
            InvalidParameterValue(.ttl)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asTdmqError() -> TCTdmqError {
            let code: TCTdmqError.Code
            switch self.error {
            case .clusterNameDuplication:
                code = .invalidParameterValue_ClusterNameDuplication
            case .invalidParams:
                code = .invalidParameterValue_InvalidParams
            case .needMoreParams:
                code = .invalidParameterValue_NeedMoreParams
            case .topicNotFound:
                code = .invalidParameterValue_TopicNotFound
            case .ttl:
                code = .invalidParameterValue_TTL
            case .other:
                code = .invalidParameterValue
            }
            return TCTdmqError(code, context: self.context)
        }
    }
}
