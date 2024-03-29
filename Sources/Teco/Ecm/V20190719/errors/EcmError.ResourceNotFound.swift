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

extension TCEcmError {
    public struct ResourceNotFound: TCEcmErrorType {
        enum Code: String {
            case instanceNotExist = "ResourceNotFound.InstanceNotExist"
            case notFound = "ResourceNotFound.NotFound"
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

        /// 实例不合法。
        public static var instanceNotExist: ResourceNotFound {
            ResourceNotFound(.instanceNotExist)
        }

        /// ResourceNotFound.NotFound
        public static var notFound: ResourceNotFound {
            ResourceNotFound(.notFound)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asEcmError() -> TCEcmError {
            let code: TCEcmError.Code
            switch self.error {
            case .instanceNotExist:
                code = .resourceNotFound_InstanceNotExist
            case .notFound:
                code = .resourceNotFound_NotFound
            case .other:
                code = .resourceNotFound
            }
            return TCEcmError(code, context: self.context)
        }
    }
}
