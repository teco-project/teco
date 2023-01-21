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

extension TCVodError {
    public struct ResourceNotFound: TCVodErrorType {
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

        public func asVodError() -> TCVodError {
            let code: TCVodError.Code
            switch self.error {
            case .coverUrl:
                code = .resourceNotFound_CoverUrl
            case .fileNotExist:
                code = .resourceNotFound_FileNotExist
            case .person:
                code = .resourceNotFound_Person
            case .serviceNotExist:
                code = .resourceNotFound_ServiceNotExist
            case .templateNotExist:
                code = .resourceNotFound_TemplateNotExist
            case .userNotExist:
                code = .resourceNotFound_UserNotExist
            case .word:
                code = .resourceNotFound_Word
            case .other:
                code = .resourceNotFound
            }
            return TCVodError(code, context: self.context)
        }
    }
}
