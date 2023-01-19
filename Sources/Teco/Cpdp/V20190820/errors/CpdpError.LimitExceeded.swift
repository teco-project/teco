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

extension TCCpdpError {
    public struct LimitExceeded: TCCpdpErrorType {
        enum Code: String {
            case midasLargeFile = "LimitExceeded.MidasLargeFile"
            case midasOrder = "LimitExceeded.MidasOrder"
            case midasOrderCanceled = "LimitExceeded.MidasOrderCanceled"
            case midasOrderClosed = "LimitExceeded.MidasOrderClosed"
            case midasOrderExpired = "LimitExceeded.MidasOrderExpired"
            case midasOrderFailed = "LimitExceeded.MidasOrderFailed"
            case midasOrderPartialSuccess = "LimitExceeded.MidasOrderPartialSuccess"
            case midasOrderProcessing = "LimitExceeded.MidasOrderProcessing"
            case midasOrderSuccess = "LimitExceeded.MidasOrderSuccess"
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

        /// 聚鑫文件过大。
        ///
        /// 请联系我们
        public static var midasLargeFile: LimitExceeded {
            LimitExceeded(.midasLargeFile)
        }

        /// 聚鑫不允许并发下单。
        ///
        /// 请联系我们
        public static var midasOrder: LimitExceeded {
            LimitExceeded(.midasOrder)
        }

        /// 聚鑫订单已取消。
        ///
        /// 请联系我们
        public static var midasOrderCanceled: LimitExceeded {
            LimitExceeded(.midasOrderCanceled)
        }

        /// 聚鑫已关单。
        ///
        /// 请联系我们
        public static var midasOrderClosed: LimitExceeded {
            LimitExceeded(.midasOrderClosed)
        }

        /// 聚鑫订单已过期，包括超时未支付、超过退款期限等情况。
        ///
        /// 请联系我们
        public static var midasOrderExpired: LimitExceeded {
            LimitExceeded(.midasOrderExpired)
        }

        /// 聚鑫处理失败。
        ///
        /// 请联系我们
        public static var midasOrderFailed: LimitExceeded {
            LimitExceeded(.midasOrderFailed)
        }

        /// 聚鑫处理部分成功部分失败。
        ///
        /// 请联系我们
        public static var midasOrderPartialSuccess: LimitExceeded {
            LimitExceeded(.midasOrderPartialSuccess)
        }

        /// 聚鑫处理中。
        ///
        /// 请联系我们
        public static var midasOrderProcessing: LimitExceeded {
            LimitExceeded(.midasOrderProcessing)
        }

        /// 聚鑫处理成功，请勿再提交。
        ///
        /// 请联系我们
        public static var midasOrderSuccess: LimitExceeded {
            LimitExceeded(.midasOrderSuccess)
        }

        public func asCpdpError() -> TCCpdpError {
            let code: TCCpdpError.Code
            switch self.error {
            case .midasLargeFile:
                code = .limitExceeded_MidasLargeFile
            case .midasOrder:
                code = .limitExceeded_MidasOrder
            case .midasOrderCanceled:
                code = .limitExceeded_MidasOrderCanceled
            case .midasOrderClosed:
                code = .limitExceeded_MidasOrderClosed
            case .midasOrderExpired:
                code = .limitExceeded_MidasOrderExpired
            case .midasOrderFailed:
                code = .limitExceeded_MidasOrderFailed
            case .midasOrderPartialSuccess:
                code = .limitExceeded_MidasOrderPartialSuccess
            case .midasOrderProcessing:
                code = .limitExceeded_MidasOrderProcessing
            case .midasOrderSuccess:
                code = .limitExceeded_MidasOrderSuccess
            }
            return TCCpdpError(code, context: self.context)
        }
    }
}
