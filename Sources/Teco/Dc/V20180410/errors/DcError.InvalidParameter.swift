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

extension TCDcError {
    public struct InvalidParameter: TCDcErrorType {
        enum Code: String {
            case addressError = "InvalidParameter.AddressError"
            case directConnectIdIsNotUin = "InvalidParameter.DirectConnectIdIsNotUin"
            case uinIsNotExist = "InvalidParameter.UinIsNotExist"
            case vlanConflict = "InvalidParameter.VlanConflict"
            case other = "InvalidParameter"
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

        /// 互联IP错误。
        public static var addressError: InvalidParameter {
            InvalidParameter(.addressError)
        }

        /// 物理专线不属于该账号。
        public static var directConnectIdIsNotUin: InvalidParameter {
            InvalidParameter(.directConnectIdIsNotUin)
        }

        /// 该账号ID不存在。
        public static var uinIsNotExist: InvalidParameter {
            InvalidParameter(.uinIsNotExist)
        }

        /// vlan冲突。
        public static var vlanConflict: InvalidParameter {
            InvalidParameter(.vlanConflict)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asDcError() -> TCDcError {
            let code: TCDcError.Code
            switch self.error {
            case .addressError:
                code = .invalidParameter_AddressError
            case .directConnectIdIsNotUin:
                code = .invalidParameter_DirectConnectIdIsNotUin
            case .uinIsNotExist:
                code = .invalidParameter_UinIsNotExist
            case .vlanConflict:
                code = .invalidParameter_VlanConflict
            case .other:
                code = .invalidParameter
            }
            return TCDcError(code, context: self.context)
        }
    }
}
