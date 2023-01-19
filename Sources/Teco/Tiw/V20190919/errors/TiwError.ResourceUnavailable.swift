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

extension TCTiwError {
    public struct ResourceUnavailable: TCTiwErrorType {
        enum Code: String {
            case notRegistered = "ResourceUnavailable.NotRegistered"
            case serviceExpired = "ResourceUnavailable.ServiceExpired"
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

        /// 未开通互动白板。
        public static var notRegistered: ResourceUnavailable {
            ResourceUnavailable(.notRegistered)
        }

        /// 账户欠费或者互动白板服务已过期。
        public static var serviceExpired: ResourceUnavailable {
            ResourceUnavailable(.serviceExpired)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asTiwError() -> TCTiwError {
            let code: TCTiwError.Code
            switch self.error {
            case .notRegistered:
                code = .resourceUnavailable_NotRegistered
            case .serviceExpired:
                code = .resourceUnavailable_ServiceExpired
            case .other:
                code = .resourceUnavailable
            }
            return TCTiwError(code, context: self.context)
        }
    }
}
