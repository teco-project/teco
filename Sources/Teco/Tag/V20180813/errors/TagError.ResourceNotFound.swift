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

extension TCTagError {
    public struct ResourceNotFound: TCTagErrorType {
        enum Code: String {
            case attachedTagKeyNotFound = "ResourceNotFound.AttachedTagKeyNotFound"
            case recordNotFound = "ResourceNotFound.RecordNotFound"
            case tagNonExist = "ResourceNotFound.TagNonExist"
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
        
        /// 资源关联的标签键不存在。
        public static var attachedTagKeyNotFound: ResourceNotFound {
            ResourceNotFound(.attachedTagKeyNotFound)
        }
        
        /// 记录不存在。
        public static var recordNotFound: ResourceNotFound {
            ResourceNotFound(.recordNotFound)
        }
        
        /// 标签不存在。
        public static var tagNonExist: ResourceNotFound {
            ResourceNotFound(.tagNonExist)
        }
        
        public func asTagError() -> TCTagError {
            let code: TCTagError.Code
            switch self.error {
            case .attachedTagKeyNotFound: 
                code = .resourceNotFound_AttachedTagKeyNotFound
            case .recordNotFound: 
                code = .resourceNotFound_RecordNotFound
            case .tagNonExist: 
                code = .resourceNotFound_TagNonExist
            }
            return TCTagError(code, context: self.context)
        }
    }
}
