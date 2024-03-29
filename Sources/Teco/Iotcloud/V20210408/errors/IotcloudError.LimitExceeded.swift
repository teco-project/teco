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

extension TCIotcloudError {
    public struct LimitExceeded: TCIotcloudErrorType {
        enum Code: String {
            case caAlreadyBindProduct = "LimitExceeded.CAAlreadyBindProduct"
            case caCertLimit = "LimitExceeded.CACertLimit"
            case caCertNameRepeat = "LimitExceeded.CACertNameRepeat"
            case caCertNotSupport = "LimitExceeded.CACertNotSupport"
            case caRepeat = "LimitExceeded.CARepeat"
            case deviceExceedLimit = "LimitExceeded.DeviceExceedLimit"
            case firmwareExceedLimit = "LimitExceeded.FirmwareExceedLimit"
            case messageSaved = "LimitExceeded.MessageSaved"
            case offlineMessageExceedLimit = "LimitExceeded.OfflineMessageExceedLimit"
            case productExceedLimit = "LimitExceeded.ProductExceedLimit"
            case topicPolicyExceedLimit = "LimitExceeded.TopicPolicyExceedLimit"
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

        /// CA证书已经绑定了产品，无法操作。
        public static var caAlreadyBindProduct: LimitExceeded {
            LimitExceeded(.caAlreadyBindProduct)
        }

        /// CA证书达到上限。
        public static var caCertLimit: LimitExceeded {
            LimitExceeded(.caCertLimit)
        }

        /// CA证书名称重复。
        public static var caCertNameRepeat: LimitExceeded {
            LimitExceeded(.caCertNameRepeat)
        }

        /// 不支持私有证书操作。
        public static var caCertNotSupport: LimitExceeded {
            LimitExceeded(.caCertNotSupport)
        }

        /// CA证书重复。
        public static var caRepeat: LimitExceeded {
            LimitExceeded(.caRepeat)
        }

        /// 设备数量超过限制。
        public static var deviceExceedLimit: LimitExceeded {
            LimitExceeded(.deviceExceedLimit)
        }

        /// 固件数量超出限制。
        public static var firmwareExceedLimit: LimitExceeded {
            LimitExceeded(.firmwareExceedLimit)
        }

        /// 消息已经保存到离线队列。
        public static var messageSaved: LimitExceeded {
            LimitExceeded(.messageSaved)
        }

        /// qos为1的离线消息超过数量限制。
        public static var offlineMessageExceedLimit: LimitExceeded {
            LimitExceeded(.offlineMessageExceedLimit)
        }

        /// 超过产品数量限制。
        public static var productExceedLimit: LimitExceeded {
            LimitExceeded(.productExceedLimit)
        }

        /// Topic数量超出限制。
        public static var topicPolicyExceedLimit: LimitExceeded {
            LimitExceeded(.topicPolicyExceedLimit)
        }

        public func asIotcloudError() -> TCIotcloudError {
            let code: TCIotcloudError.Code
            switch self.error {
            case .caAlreadyBindProduct:
                code = .limitExceeded_CAAlreadyBindProduct
            case .caCertLimit:
                code = .limitExceeded_CACertLimit
            case .caCertNameRepeat:
                code = .limitExceeded_CACertNameRepeat
            case .caCertNotSupport:
                code = .limitExceeded_CACertNotSupport
            case .caRepeat:
                code = .limitExceeded_CARepeat
            case .deviceExceedLimit:
                code = .limitExceeded_DeviceExceedLimit
            case .firmwareExceedLimit:
                code = .limitExceeded_FirmwareExceedLimit
            case .messageSaved:
                code = .limitExceeded_MessageSaved
            case .offlineMessageExceedLimit:
                code = .limitExceeded_OfflineMessageExceedLimit
            case .productExceedLimit:
                code = .limitExceeded_ProductExceedLimit
            case .topicPolicyExceedLimit:
                code = .limitExceeded_TopicPolicyExceedLimit
            }
            return TCIotcloudError(code, context: self.context)
        }
    }
}
