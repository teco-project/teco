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

extension TCLcicError {
    public struct ResourceInsufficient: TCLcicErrorType {
        enum Code: String {
            case record = "ResourceInsufficient.Record"
            case room = "ResourceInsufficient.Room"
            case other = "ResourceInsufficient"
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

        public static var record: ResourceInsufficient {
            ResourceInsufficient(.record)
        }

        public static var room: ResourceInsufficient {
            ResourceInsufficient(.room)
        }

        public static var other: ResourceInsufficient {
            ResourceInsufficient(.other)
        }

        public func asLcicError() -> TCLcicError {
            let code: TCLcicError.Code
            switch self.error {
            case .record:
                code = .resourceInsufficient_Record
            case .room:
                code = .resourceInsufficient_Room
            case .other:
                code = .resourceInsufficient
            }
            return TCLcicError(code, context: self.context)
        }
    }
}
