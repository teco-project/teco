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

extension TCCdnError {
    public struct ResourceNotFound: TCCdnErrorType {
        enum Code: String {
            case camTagKeyNotExist = "ResourceNotFound.CamTagKeyNotExist"
            case cdnHostNotExists = "ResourceNotFound.CdnHostNotExists"
            case cdnProjectNotExists = "ResourceNotFound.CdnProjectNotExists"
            case cdnUserNotExists = "ResourceNotFound.CdnUserNotExists"
            case cdnUserTooManyHosts = "ResourceNotFound.CdnUserTooManyHosts"
            case clsIndexNotExist = "ResourceNotFound.ClsIndexNotExist"
            case clsLogsetNotExist = "ResourceNotFound.ClsLogsetNotExist"
            case clsTopicNotExist = "ResourceNotFound.ClsTopicNotExist"
            case ecdnDomainNotExists = "ResourceNotFound.EcdnDomainNotExists"
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

        /// 标签键不存在。
        public static var camTagKeyNotExist: ResourceNotFound {
            ResourceNotFound(.camTagKeyNotExist)
        }

        /// 未查询到该域名，请确认域名是否正确。
        public static var cdnHostNotExists: ResourceNotFound {
            ResourceNotFound(.cdnHostNotExists)
        }

        /// 项目不存在，请确认后重试。
        public static var cdnProjectNotExists: ResourceNotFound {
            ResourceNotFound(.cdnProjectNotExists)
        }

        /// 未开通CDN服务，请开通后使用此接口。
        public static var cdnUserNotExists: ResourceNotFound {
            ResourceNotFound(.cdnUserNotExists)
        }

        /// 用户域名数量已达上限，请联系腾讯云工程师处理。
        public static var cdnUserTooManyHosts: ResourceNotFound {
            ResourceNotFound(.cdnUserTooManyHosts)
        }

        /// 索引不存在。
        public static var clsIndexNotExist: ResourceNotFound {
            ResourceNotFound(.clsIndexNotExist)
        }

        /// 日志集不存在。
        public static var clsLogsetNotExist: ResourceNotFound {
            ResourceNotFound(.clsLogsetNotExist)
        }

        /// 主题不存在。
        public static var clsTopicNotExist: ResourceNotFound {
            ResourceNotFound(.clsTopicNotExist)
        }

        /// 域名不存在，请确认后重试。
        public static var ecdnDomainNotExists: ResourceNotFound {
            ResourceNotFound(.ecdnDomainNotExists)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asCdnError() -> TCCdnError {
            let code: TCCdnError.Code
            switch self.error {
            case .camTagKeyNotExist:
                code = .resourceNotFound_CamTagKeyNotExist
            case .cdnHostNotExists:
                code = .resourceNotFound_CdnHostNotExists
            case .cdnProjectNotExists:
                code = .resourceNotFound_CdnProjectNotExists
            case .cdnUserNotExists:
                code = .resourceNotFound_CdnUserNotExists
            case .cdnUserTooManyHosts:
                code = .resourceNotFound_CdnUserTooManyHosts
            case .clsIndexNotExist:
                code = .resourceNotFound_ClsIndexNotExist
            case .clsLogsetNotExist:
                code = .resourceNotFound_ClsLogsetNotExist
            case .clsTopicNotExist:
                code = .resourceNotFound_ClsTopicNotExist
            case .ecdnDomainNotExists:
                code = .resourceNotFound_EcdnDomainNotExists
            case .other:
                code = .resourceNotFound
            }
            return TCCdnError(code, context: self.context)
        }
    }
}
