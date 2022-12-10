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

extension TCMnaError {
    public struct InvalidParameterValue: TCErrorType {
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
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 无法获取到可加速的运营商信息
        ///
        /// - 若错误码返回提示为无法确定运营商 ，请检查SrcPublicIpv4 是否填写正确或在接口中传入正确的运营商信息(DeviceInfo.Vendor)
        /// - 若错误码返回提示为该运营商无法支持加速，说明目前不支持该运营商加速服务
        public static var vendorNotFound: InvalidParameterValue {
            InvalidParameterValue(.vendorNotFound)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
    }
}

extension TCMnaError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCMnaError.InvalidParameterValue, rhs: TCMnaError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMnaError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCMnaError.InvalidParameterValue {
    /// - Returns: ``TCMnaError`` that holds the same error and context.
    public func toMnaError() -> TCMnaError {
        guard let code = TCMnaError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCMnaError(code, context: self.context)
    }
}

extension TCMnaError.InvalidParameterValue {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
