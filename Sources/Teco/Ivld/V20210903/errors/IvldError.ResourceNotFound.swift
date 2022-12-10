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

extension TCIvldError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case customCategoryNotFound = "ResourceNotFound.CustomCategoryNotFound"
            case customGroupNotFound = "ResourceNotFound.CustomGroupNotFound"
            case mediaNotFound = "ResourceNotFound.MediaNotFound"
            case recordNotFound = "ResourceNotFound.RecordNotFound"
            case taskNotFound = "ResourceNotFound.TaskNotFound"
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
        
        /// 自定义人物类型不存在。
        public static var customCategoryNotFound: ResourceNotFound {
            ResourceNotFound(.customCategoryNotFound)
        }
        
        /// 自定义人物库不存在。
        public static var customGroupNotFound: ResourceNotFound {
            ResourceNotFound(.customGroupNotFound)
        }
        
        /// 媒资文件不存在。
        public static var mediaNotFound: ResourceNotFound {
            ResourceNotFound(.mediaNotFound)
        }
        
        /// 记录不存在。
        public static var recordNotFound: ResourceNotFound {
            ResourceNotFound(.recordNotFound)
        }
        
        /// 任务不存在。
        public static var taskNotFound: ResourceNotFound {
            ResourceNotFound(.taskNotFound)
        }
    }
}

extension TCIvldError.ResourceNotFound: Equatable {
    public static func == (lhs: TCIvldError.ResourceNotFound, rhs: TCIvldError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIvldError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIvldError.ResourceNotFound {
    public func toIvldError() -> TCIvldError {
        guard let code = TCIvldError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCIvldError(code, context: self.context)
    }
}