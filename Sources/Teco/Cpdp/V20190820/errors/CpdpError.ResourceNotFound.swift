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

extension TCCpdpError {
    public struct ResourceNotFound: TCCpdpErrorType {
        enum Code: String {
            case account = "ResourceNotFound.Account"
            case batchInfoNotFound = "ResourceNotFound.BatchInfoNotFound"
            case invoiceNotFound = "ResourceNotFound.InvoiceNotFound"
            case key = "ResourceNotFound.Key"
            case merchantInfoNotFound = "ResourceNotFound.MerchantInfoNotFound"
            case midasExternalApp = "ResourceNotFound.MidasExternalApp"
            case midasExternalOrder = "ResourceNotFound.MidasExternalOrder"
            case midasOrder = "ResourceNotFound.MidasOrder"
            case midasSign = "ResourceNotFound.MidasSign"
            case platformInfoNotFound = "ResourceNotFound.PlatformInfoNotFound"
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

        /// 账户不匹配或不存在。
        public static var account: ResourceNotFound {
            ResourceNotFound(.account)
        }

        /// 批次信息不存在。
        public static var batchInfoNotFound: ResourceNotFound {
            ResourceNotFound(.batchInfoNotFound)
        }

        /// 发票信息不存在。
        public static var invoiceNotFound: ResourceNotFound {
            ResourceNotFound(.invoiceNotFound)
        }

        /// 密钥不匹配或不存在。
        public static var key: ResourceNotFound {
            ResourceNotFound(.key)
        }

        /// 商户信息不存在。
        public static var merchantInfoNotFound: ResourceNotFound {
            ResourceNotFound(.merchantInfoNotFound)
        }

        /// 聚鑫第三方应用未查找到。
        ///
        /// 请联系我们
        public static var midasExternalApp: ResourceNotFound {
            ResourceNotFound(.midasExternalApp)
        }

        /// 聚鑫第三方渠道找不到订单，ORDER_NOT_FOUND表示支付中台找不到订单。
        ///
        /// 请联系我们
        public static var midasExternalOrder: ResourceNotFound {
            ResourceNotFound(.midasExternalOrder)
        }

        /// 聚鑫订单没有查到记录。
        ///
        /// 请联系我们
        public static var midasOrder: ResourceNotFound {
            ResourceNotFound(.midasOrder)
        }

        /// 聚鑫签约关系不存在。
        ///
        /// 请联系我们
        public static var midasSign: ResourceNotFound {
            ResourceNotFound(.midasSign)
        }

        /// 平台信息不存在。
        public static var platformInfoNotFound: ResourceNotFound {
            ResourceNotFound(.platformInfoNotFound)
        }

        public func asCpdpError() -> TCCpdpError {
            let code: TCCpdpError.Code
            switch self.error {
            case .account:
                code = .resourceNotFound_Account
            case .batchInfoNotFound:
                code = .resourceNotFound_BatchInfoNotFound
            case .invoiceNotFound:
                code = .resourceNotFound_InvoiceNotFound
            case .key:
                code = .resourceNotFound_Key
            case .merchantInfoNotFound:
                code = .resourceNotFound_MerchantInfoNotFound
            case .midasExternalApp:
                code = .resourceNotFound_MidasExternalApp
            case .midasExternalOrder:
                code = .resourceNotFound_MidasExternalOrder
            case .midasOrder:
                code = .resourceNotFound_MidasOrder
            case .midasSign:
                code = .resourceNotFound_MidasSign
            case .platformInfoNotFound:
                code = .resourceNotFound_PlatformInfoNotFound
            }
            return TCCpdpError(code, context: self.context)
        }
    }
}
