//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCIottidError {
    public struct InvalidParameterValue: TCIottidErrorType {
        enum Code: String {
            case appId = "InvalidParameterValue.AppId"
            case count = "InvalidParameterValue.Count"
            case data = "InvalidParameterValue.Data"
            case emptyString = "InvalidParameterValue.EmptyString"
            case limit = "InvalidParameterValue.Limit"
            case orderId = "InvalidParameterValue.OrderId"
            case overLimit = "InvalidParameterValue.OverLimit"
            case permissionDenied = "InvalidParameterValue.PermissionDenied"
            case quantity = "InvalidParameterValue.Quantity"
            case tid = "InvalidParameterValue.Tid"
            case other = "InvalidParameterValue"
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

        /// AppId错误。
        public static var appId: InvalidParameterValue {
            InvalidParameterValue(.appId)
        }

        /// 数量错误。
        public static var count: InvalidParameterValue {
            InvalidParameterValue(.count)
        }

        /// 验证数据错误。
        public static var data: InvalidParameterValue {
            InvalidParameterValue(.data)
        }

        /// 输入字符串为空。
        public static var emptyString: InvalidParameterValue {
            InvalidParameterValue(.emptyString)
        }

        /// 超过数量限制。
        public static var limit: InvalidParameterValue {
            InvalidParameterValue(.limit)
        }

        /// 订单编号错误。
        public static var orderId: InvalidParameterValue {
            InvalidParameterValue(.orderId)
        }

        /// 超过数量限制。
        public static var overLimit: InvalidParameterValue {
            InvalidParameterValue(.overLimit)
        }

        /// 无权限操作。
        public static var permissionDenied: InvalidParameterValue {
            InvalidParameterValue(.permissionDenied)
        }

        /// 数量错误。
        public static var quantity: InvalidParameterValue {
            InvalidParameterValue(.quantity)
        }

        /// TID编码错误。
        public static var tid: InvalidParameterValue {
            InvalidParameterValue(.tid)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asIottidError() -> TCIottidError {
            let code: TCIottidError.Code
            switch self.error {
            case .appId: 
                code = .invalidParameterValue_AppId
            case .count: 
                code = .invalidParameterValue_Count
            case .data: 
                code = .invalidParameterValue_Data
            case .emptyString: 
                code = .invalidParameterValue_EmptyString
            case .limit: 
                code = .invalidParameterValue_Limit
            case .orderId: 
                code = .invalidParameterValue_OrderId
            case .overLimit: 
                code = .invalidParameterValue_OverLimit
            case .permissionDenied: 
                code = .invalidParameterValue_PermissionDenied
            case .quantity: 
                code = .invalidParameterValue_Quantity
            case .tid: 
                code = .invalidParameterValue_Tid
            case .other: 
                code = .invalidParameterValue
            }
            return TCIottidError(code, context: self.context)
        }
    }
}
