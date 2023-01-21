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

extension TCIotvideoindustryError {
    public struct ResourceUnavailable: TCIotvideoindustryErrorType {
        enum Code: String {
            case gbProtocolExecException = "ResourceUnavailable.GBProtocolExecException"
            case streamInfoException = "ResourceUnavailable.StreamInfoException"
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

        /// 国标信令异常。
        public static var gbProtocolExecException: ResourceUnavailable {
            ResourceUnavailable(.gbProtocolExecException)
        }

        /// 流信息异常。
        public static var streamInfoException: ResourceUnavailable {
            ResourceUnavailable(.streamInfoException)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asIotvideoindustryError() -> TCIotvideoindustryError {
            let code: TCIotvideoindustryError.Code
            switch self.error {
            case .gbProtocolExecException:
                code = .resourceUnavailable_GBProtocolExecException
            case .streamInfoException:
                code = .resourceUnavailable_StreamInfoException
            case .other:
                code = .resourceUnavailable
            }
            return TCIotvideoindustryError(code, context: self.context)
        }
    }
}
