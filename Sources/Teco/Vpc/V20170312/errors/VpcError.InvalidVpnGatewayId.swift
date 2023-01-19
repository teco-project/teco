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

extension TCVpcError {
    public struct InvalidVpnGatewayId: TCVpcErrorType {
        enum Code: String {
            case malformed = "InvalidVpnGatewayId.Malformed"
            case notFound = "InvalidVpnGatewayId.NotFound"
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

        /// 无效的VPN网关,VPN实例ID不合法。
        public static var malformed: InvalidVpnGatewayId {
            InvalidVpnGatewayId(.malformed)
        }

        /// 无效的VPN网关,VPN实例不存在，请再次核实您输入的资源信息是否正确。
        public static var notFound: InvalidVpnGatewayId {
            InvalidVpnGatewayId(.notFound)
        }

        public func asVpcError() -> TCVpcError {
            let code: TCVpcError.Code
            switch self.error {
            case .malformed:
                code = .invalidVpnGatewayId_Malformed
            case .notFound:
                code = .invalidVpnGatewayId_NotFound
            }
            return TCVpcError(code, context: self.context)
        }
    }
}
