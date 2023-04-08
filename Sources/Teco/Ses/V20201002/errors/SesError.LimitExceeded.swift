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

extension TCSesError {
    public struct LimitExceeded: TCSesErrorType {
        enum Code: String {
            case exceedReceiverLimit = "LimitExceeded.ExceedReceiverLimit"
            case receiverDetailCountLimit = "LimitExceeded.ReceiverDetailCountLimit"
            case receiverDetailRequestLimit = "LimitExceeded.ReceiverDetailRequestLimit"
            case other = "LimitExceeded"
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

        /// 收件人列表数量超过限制。
        ///
        /// 收件人列表数量最多10个，具体数量参考页面提示，可以先删除不需要用的列表，然后重新创建
        public static var exceedReceiverLimit: LimitExceeded {
            LimitExceeded(.exceedReceiverLimit)
        }

        /// 该收件人列表包含的收件人地址总量超过限制。
        ///
        /// 该收件人列表包含的收件人地址总量超过限制。请查询一下该收件人列表已存在的地址总数，加上本次请求的地址数量是否超过地址总量限制。总量限制请参考接口描述。
        public static var receiverDetailCountLimit: LimitExceeded {
            LimitExceeded(.receiverDetailCountLimit)
        }

        /// 请求的收件人地址数量超过限制。
        ///
        /// 请求的收件人地址数量超过限制。参考接口文档，调整请求的收件人地址的数量。
        public static var receiverDetailRequestLimit: LimitExceeded {
            LimitExceeded(.receiverDetailRequestLimit)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asSesError() -> TCSesError {
            let code: TCSesError.Code
            switch self.error {
            case .exceedReceiverLimit:
                code = .limitExceeded_ExceedReceiverLimit
            case .receiverDetailCountLimit:
                code = .limitExceeded_ReceiverDetailCountLimit
            case .receiverDetailRequestLimit:
                code = .limitExceeded_ReceiverDetailRequestLimit
            case .other:
                code = .limitExceeded
            }
            return TCSesError(code, context: self.context)
        }
    }
}
