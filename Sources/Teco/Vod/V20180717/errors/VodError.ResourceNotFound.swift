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

extension TCVodError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case coverUrl = "ResourceNotFound.CoverUrl"
            case fileNotExist = "ResourceNotFound.FileNotExist"
            case person = "ResourceNotFound.Person"
            case serviceNotExist = "ResourceNotFound.ServiceNotExist"
            case templateNotExist = "ResourceNotFound.TemplateNotExist"
            case userNotExist = "ResourceNotFound.UserNotExist"
            case word = "ResourceNotFound.Word"
            case other = "ResourceNotFound"
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
        
        /// 资源不存在：封面不存在。
        public static var coverUrl: ResourceNotFound {
            ResourceNotFound(.coverUrl)
        }
        
        /// 资源不存在：文件不存在。
        public static var fileNotExist: ResourceNotFound {
            ResourceNotFound(.fileNotExist)
        }
        
        /// 资源不存在：人物。
        public static var person: ResourceNotFound {
            ResourceNotFound(.person)
        }
        
        /// 没有开通服务。
        public static var serviceNotExist: ResourceNotFound {
            ResourceNotFound(.serviceNotExist)
        }
        
        /// 资源不存在：模板不存在。
        public static var templateNotExist: ResourceNotFound {
            ResourceNotFound(.templateNotExist)
        }
        
        /// 用户不存在。
        public static var userNotExist: ResourceNotFound {
            ResourceNotFound(.userNotExist)
        }
        
        /// 资源不存在：关键词。
        public static var word: ResourceNotFound {
            ResourceNotFound(.word)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
    }
}

extension TCVodError.ResourceNotFound: Equatable {
    public static func == (lhs: TCVodError.ResourceNotFound, rhs: TCVodError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCVodError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCVodError.ResourceNotFound {
    public func toVodError() -> TCVodError {
        guard let code = TCVodError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCVodError(code, context: self.context)
    }
}