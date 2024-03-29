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

extension TCMnaError {
    public struct InvalidParameterValue: TCMnaErrorType {
        enum Code: String {
            case vendorNotFound = "InvalidParameterValue.VendorNotFound"
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

        /// 无法获取到可加速的运营商信息
        ///
        /// - 若错误码返回提示为无法确定运营商 ，请检查SrcPublicIpv4 是否填写正确或在接口中传入正确的运营商信息(DeviceInfo.Vendor)
        ///
        /// - 若错误码返回提示为该运营商无法支持加速，说明目前不支持该运营商加速服务
        public static var vendorNotFound: InvalidParameterValue {
            InvalidParameterValue(.vendorNotFound)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asMnaError() -> TCMnaError {
            let code: TCMnaError.Code
            switch self.error {
            case .vendorNotFound:
                code = .invalidParameterValue_VendorNotFound
            case .other:
                code = .invalidParameterValue
            }
            return TCMnaError(code, context: self.context)
        }
    }
}
