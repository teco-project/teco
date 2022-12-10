//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCIotvideoError {
    public struct InvalidParameterValue: TCErrorType {
        enum Code: String {
            case firmwareAlreadyExist = "InvalidParameterValue.FirmwareAlreadyExist"
            case other = "InvalidParameterValue"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
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
        
        /// 固件已存在。
        public static var firmwareAlreadyExist: InvalidParameterValue {
            InvalidParameterValue(.firmwareAlreadyExist)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
    }
}

extension TCIotvideoError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCIotvideoError.InvalidParameterValue, rhs: TCIotvideoError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIotvideoError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIotvideoError.InvalidParameterValue {
    public func toIotvideoError() -> TCIotvideoError {
        guard let code = TCIotvideoError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCIotvideoError(code, context: self.context)
    }
}