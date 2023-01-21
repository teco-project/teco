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

extension TCCynosdbError {
    public struct ResourceNotFound: TCCynosdbErrorType {
        enum Code: String {
            case clusterNotFoundError = "ResourceNotFound.ClusterNotFoundError"
            case instanceNotFoundError = "ResourceNotFound.InstanceNotFoundError"
            case resourceError = "ResourceNotFound.ResourceError"
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

        /// 集群不存在。
        public static var clusterNotFoundError: ResourceNotFound {
            ResourceNotFound(.clusterNotFoundError)
        }

        /// 实例不存在。
        public static var instanceNotFoundError: ResourceNotFound {
            ResourceNotFound(.instanceNotFoundError)
        }

        /// 参数对应资源不存在。
        public static var resourceError: ResourceNotFound {
            ResourceNotFound(.resourceError)
        }

        public func asCynosdbError() -> TCCynosdbError {
            let code: TCCynosdbError.Code
            switch self.error {
            case .clusterNotFoundError:
                code = .resourceNotFound_ClusterNotFoundError
            case .instanceNotFoundError:
                code = .resourceNotFound_InstanceNotFoundError
            case .resourceError:
                code = .resourceNotFound_ResourceError
            }
            return TCCynosdbError(code, context: self.context)
        }
    }
}
