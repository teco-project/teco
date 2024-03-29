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

extension TCOcrError {
    public struct InvalidParameterValue: TCOcrErrorType {
        enum Code: String {
            case fileUrlIllegalError = "InvalidParameterValue.FileUrlIllegalError"
            case invalidParameterValueLimit = "InvalidParameterValue.InvalidParameterValueLimit"
            case priceOrVerificationParameterValueLimit = "InvalidParameterValue.PriceOrVerificationParameterValueLimit"
            case ticketCodeParameterValueLimit = "InvalidParameterValue.TicketCodeParameterValueLimit"
            case ticketDateParameterValueLimit = "InvalidParameterValue.TicketDateParameterValueLimit"
            case ticketSnParameterValueLimit = "InvalidParameterValue.TicketSnParameterValueLimit"
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

        /// 任务创建失败，文件URL非法。
        public static var fileUrlIllegalError: InvalidParameterValue {
            InvalidParameterValue(.fileUrlIllegalError)
        }

        /// 参数值错误。
        ///
        /// 请查看接口文档检查对应接口入参：https://cloud.tencent.com/document/product/866/33515
        public static var invalidParameterValueLimit: InvalidParameterValue {
            InvalidParameterValue(.invalidParameterValueLimit)
        }

        /// 开票金额或校验码参数值错误。
        public static var priceOrVerificationParameterValueLimit: InvalidParameterValue {
            InvalidParameterValue(.priceOrVerificationParameterValueLimit)
        }

        /// 发票代码参数值错误。
        public static var ticketCodeParameterValueLimit: InvalidParameterValue {
            InvalidParameterValue(.ticketCodeParameterValueLimit)
        }

        /// 开票日期参数值错误。
        public static var ticketDateParameterValueLimit: InvalidParameterValue {
            InvalidParameterValue(.ticketDateParameterValueLimit)
        }

        /// 发票号码参数值错误。
        public static var ticketSnParameterValueLimit: InvalidParameterValue {
            InvalidParameterValue(.ticketSnParameterValueLimit)
        }

        public func asOcrError() -> TCOcrError {
            let code: TCOcrError.Code
            switch self.error {
            case .fileUrlIllegalError:
                code = .invalidParameterValue_FileUrlIllegalError
            case .invalidParameterValueLimit:
                code = .invalidParameterValue_InvalidParameterValueLimit
            case .priceOrVerificationParameterValueLimit:
                code = .invalidParameterValue_PriceOrVerificationParameterValueLimit
            case .ticketCodeParameterValueLimit:
                code = .invalidParameterValue_TicketCodeParameterValueLimit
            case .ticketDateParameterValueLimit:
                code = .invalidParameterValue_TicketDateParameterValueLimit
            case .ticketSnParameterValueLimit:
                code = .invalidParameterValue_TicketSnParameterValueLimit
            }
            return TCOcrError(code, context: self.context)
        }
    }
}
