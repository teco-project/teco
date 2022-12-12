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

extension TCSmsError {
    public struct MissingParameter: TCSmsErrorType {
        enum Code: String {
            case emptyPhoneNumberSet = "MissingParameter.EmptyPhoneNumberSet"
            case other = "MissingParameter"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
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
        
        /// 传入的号码列表为空，请确认您的参数中是否传入号码。
        public static var emptyPhoneNumberSet: MissingParameter {
            MissingParameter(.emptyPhoneNumberSet)
        }
        
        /// 缺少参数错误。
        public static var other: MissingParameter {
            MissingParameter(.other)
        }
        
        public func asSmsError() -> TCSmsError {
            let code: TCSmsError.Code
            switch self.error {
            case .emptyPhoneNumberSet: 
                code = .missingParameter_EmptyPhoneNumberSet
            case .other: 
                code = .missingParameter
            }
            return TCSmsError(code, context: self.context)
        }
    }
}
