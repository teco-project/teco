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

extension TCTseError {
    public struct ResourceNotFound: TCTseErrorType {
        enum Code: String {
            case instanceNotFound = "ResourceNotFound.InstanceNotFound"
            case resourceNotFound = "ResourceNotFound.ResourceNotFound"
            case other = "ResourceNotFound"
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

        /// 实例不存在。
        public static var instanceNotFound: ResourceNotFound {
            ResourceNotFound(.instanceNotFound)
        }

        /// 资源不存在。
        public static var resourceNotFound: ResourceNotFound {
            ResourceNotFound(.resourceNotFound)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asTseError() -> TCTseError {
            let code: TCTseError.Code
            switch self.error {
            case .instanceNotFound:
                code = .resourceNotFound_InstanceNotFound
            case .resourceNotFound:
                code = .resourceNotFound_ResourceNotFound
            case .other:
                code = .resourceNotFound
            }
            return TCTseError(code, context: self.context)
        }
    }
}
