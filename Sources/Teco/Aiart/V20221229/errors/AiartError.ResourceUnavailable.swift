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

extension TCAiartError {
    public struct ResourceUnavailable: TCAiartErrorType {
        enum Code: String {
            case delivering = "ResourceUnavailable.Delivering"
            case inArrears = "ResourceUnavailable.InArrears"
            case lowBalance = "ResourceUnavailable.LowBalance"
            case notExist = "ResourceUnavailable.NotExist"
            case stopUsing = "ResourceUnavailable.StopUsing"
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

        /// 资源正在发货中。
        public static var delivering: ResourceUnavailable {
            ResourceUnavailable(.delivering)
        }

        /// 帐号已欠费。
        public static var inArrears: ResourceUnavailable {
            ResourceUnavailable(.inArrears)
        }

        /// 余额不足。
        public static var lowBalance: ResourceUnavailable {
            ResourceUnavailable(.lowBalance)
        }

        /// 计费状态未知，请确认是否已在控制台开通服务。
        public static var notExist: ResourceUnavailable {
            ResourceUnavailable(.notExist)
        }

        /// 帐号已停服。
        ///
        /// 请确认服务是否开通
        public static var stopUsing: ResourceUnavailable {
            ResourceUnavailable(.stopUsing)
        }

        public func asAiartError() -> TCAiartError {
            let code: TCAiartError.Code
            switch self.error {
            case .delivering:
                code = .resourceUnavailable_Delivering
            case .inArrears:
                code = .resourceUnavailable_InArrears
            case .lowBalance:
                code = .resourceUnavailable_LowBalance
            case .notExist:
                code = .resourceUnavailable_NotExist
            case .stopUsing:
                code = .resourceUnavailable_StopUsing
            }
            return TCAiartError(code, context: self.context)
        }
    }
}
