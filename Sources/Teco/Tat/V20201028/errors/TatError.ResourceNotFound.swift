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

extension TCTatError {
    public struct ResourceNotFound: TCTatErrorType {
        enum Code: String {
            case commandNotFound = "ResourceNotFound.CommandNotFound"
            case instanceNotFound = "ResourceNotFound.InstanceNotFound"
            case invocationNotFound = "ResourceNotFound.InvocationNotFound"
            case registerCodesNotFoundCode = "ResourceNotFound.RegisterCodesNotFoundCode"
            case registerInstanceNotFoundCode = "ResourceNotFound.RegisterInstanceNotFoundCode"
            case roleNotFound = "ResourceNotFound.RoleNotFound"
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

        /// 命令不存在。
        public static var commandNotFound: ResourceNotFound {
            ResourceNotFound(.commandNotFound)
        }

        /// 实例不存在。
        public static var instanceNotFound: ResourceNotFound {
            ResourceNotFound(.instanceNotFound)
        }

        /// 执行活动未找到。
        ///
        /// 检查参数InvocationId
        public static var invocationNotFound: ResourceNotFound {
            ResourceNotFound(.invocationNotFound)
        }

        public static var registerCodesNotFoundCode: ResourceNotFound {
            ResourceNotFound(.registerCodesNotFoundCode)
        }

        public static var registerInstanceNotFoundCode: ResourceNotFound {
            ResourceNotFound(.registerInstanceNotFoundCode)
        }

        /// 角色不存在。
        public static var roleNotFound: ResourceNotFound {
            ResourceNotFound(.roleNotFound)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asTatError() -> TCTatError {
            let code: TCTatError.Code
            switch self.error {
            case .commandNotFound:
                code = .resourceNotFound_CommandNotFound
            case .instanceNotFound:
                code = .resourceNotFound_InstanceNotFound
            case .invocationNotFound:
                code = .resourceNotFound_InvocationNotFound
            case .registerCodesNotFoundCode:
                code = .resourceNotFound_RegisterCodesNotFoundCode
            case .registerInstanceNotFoundCode:
                code = .resourceNotFound_RegisterInstanceNotFoundCode
            case .roleNotFound:
                code = .resourceNotFound_RoleNotFound
            case .other:
                code = .resourceNotFound
            }
            return TCTatError(code, context: self.context)
        }
    }
}
