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

extension TCCmeError {
    public struct ResourceNotFound: TCCmeErrorType {
        enum Code: String {
            case platform = "ResourceNotFound.Platform"
            case platformNotFound = "ResourceNotFound.PlatformNotFound"
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

        /// 平台不存在。
        public static var platform: ResourceNotFound {
            ResourceNotFound(.platform)
        }

        /// 平台不存在。
        ///
        /// 检查平台参数是否正确。
        public static var platformNotFound: ResourceNotFound {
            ResourceNotFound(.platformNotFound)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asCmeError() -> TCCmeError {
            let code: TCCmeError.Code
            switch self.error {
            case .platform:
                code = .resourceNotFound_Platform
            case .platformNotFound:
                code = .resourceNotFound_PlatformNotFound
            case .other:
                code = .resourceNotFound
            }
            return TCCmeError(code, context: self.context)
        }
    }
}
