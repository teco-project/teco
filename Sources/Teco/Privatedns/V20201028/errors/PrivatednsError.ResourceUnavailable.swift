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

extension TCPrivatednsError {
    public struct ResourceUnavailable: TCPrivatednsErrorType {
        enum Code: String {
            case tldPackageExpired = "ResourceUnavailable.TldPackageExpired"
            case other = "ResourceUnavailable"
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

        /// TLD增值包已过期。
        ///
        /// TLD增值包已过期
        public static var tldPackageExpired: ResourceUnavailable {
            ResourceUnavailable(.tldPackageExpired)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asPrivatednsError() -> TCPrivatednsError {
            let code: TCPrivatednsError.Code
            switch self.error {
            case .tldPackageExpired:
                code = .resourceUnavailable_TldPackageExpired
            case .other:
                code = .resourceUnavailable
            }
            return TCPrivatednsError(code, context: self.context)
        }
    }
}
