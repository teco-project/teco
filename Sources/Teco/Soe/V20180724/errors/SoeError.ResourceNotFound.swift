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

extension TCSoeError {
    public struct ResourceNotFound: TCSoeErrorType {
        enum Code: String {
            case appidNotFount = "ResourceNotFound.AppidNotFount"
            case interfaceNotFount = "ResourceNotFound.InterfaceNotFount"
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

        /// appid不存在。
        public static var appidNotFount: ResourceNotFound {
            ResourceNotFound(.appidNotFount)
        }

        /// 接口不存在。
        public static var interfaceNotFount: ResourceNotFound {
            ResourceNotFound(.interfaceNotFount)
        }

        public func asSoeError() -> TCSoeError {
            let code: TCSoeError.Code
            switch self.error {
            case .appidNotFount:
                code = .resourceNotFound_AppidNotFount
            case .interfaceNotFount:
                code = .resourceNotFound_InterfaceNotFount
            }
            return TCSoeError(code, context: self.context)
        }
    }
}
