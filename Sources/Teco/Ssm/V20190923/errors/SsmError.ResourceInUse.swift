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

extension TCSsmError {
    public struct ResourceInUse: TCErrorType {
        enum Code: String {
            case secretExists = "ResourceInUse.SecretExists"
            case versionIdExists = "ResourceInUse.VersionIdExists"
            case other = "ResourceInUse"
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
        
        /// 凭据名已存在。
        public static var secretExists: ResourceInUse {
            ResourceInUse(.secretExists)
        }
        
        /// 版本号已存在。
        public static var versionIdExists: ResourceInUse {
            ResourceInUse(.versionIdExists)
        }
        
        /// 资源被占用。
        public static var other: ResourceInUse {
            ResourceInUse(.other)
        }
    }
}

extension TCSsmError.ResourceInUse: Equatable {
    public static func == (lhs: TCSsmError.ResourceInUse, rhs: TCSsmError.ResourceInUse) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSsmError.ResourceInUse: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSsmError.ResourceInUse {
    /// - Returns: ``TCSsmError`` that holds the same error and context.
    public func toSsmError() -> TCSsmError {
        guard let code = TCSsmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCSsmError(code, context: self.context)
    }
}

extension TCSsmError.ResourceInUse {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
