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

extension TCEssError {
    public struct ResourceNotFound: TCEssErrorType {
        enum Code: String {
            case application = "ResourceNotFound.Application"
            case authActiveOrganization = "ResourceNotFound.AuthActiveOrganization"
            case document = "ResourceNotFound.Document"
            case errNotExistRole = "ResourceNotFound.ErrNotExistRole"
            case flow = "ResourceNotFound.Flow"
            case flowApprover = "ResourceNotFound.FlowApprover"
            case notExistDocument = "ResourceNotFound.NotExistDocument"
            case notExistFlow = "ResourceNotFound.NotExistFlow"
            case notExistResource = "ResourceNotFound.NotExistResource"
            case notExistTemplate = "ResourceNotFound.NotExistTemplate"
            case organization = "ResourceNotFound.Organization"
            case qrInfo = "ResourceNotFound.QrInfo"
            case resource = "ResourceNotFound.Resource"
            case superAdmin = "ResourceNotFound.SuperAdmin"
            case template = "ResourceNotFound.Template"
            case url = "ResourceNotFound.Url"
            case user = "ResourceNotFound.User"
            case verifyUser = "ResourceNotFound.VerifyUser"
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

        /// 应用号不存在或已删除。
        public static var application: ResourceNotFound {
            ResourceNotFound(.application)
        }

        /// 机构未完成认证激活，请检查并联系客服处理。
        public static var authActiveOrganization: ResourceNotFound {
            ResourceNotFound(.authActiveOrganization)
        }

        /// 未找到电子文档信息，请检查后重试。
        public static var document: ResourceNotFound {
            ResourceNotFound(.document)
        }

        /// 未获取到用户角色信息，请检查员工角色配置。
        public static var errNotExistRole: ResourceNotFound {
            ResourceNotFound(.errNotExistRole)
        }

        /// 签署流程未找到，请检查参数。
        public static var flow: ResourceNotFound {
            ResourceNotFound(.flow)
        }

        /// 签署流程的签署人不存在，请检查后重试。
        public static var flowApprover: ResourceNotFound {
            ResourceNotFound(.flowApprover)
        }

        /// 电子文档不存在。
        public static var notExistDocument: ResourceNotFound {
            ResourceNotFound(.notExistDocument)
        }

        /// 流程不存在。
        public static var notExistFlow: ResourceNotFound {
            ResourceNotFound(.notExistFlow)
        }

        /// 指定的资源不存在。
        public static var notExistResource: ResourceNotFound {
            ResourceNotFound(.notExistResource)
        }

        /// 模板不存在。
        public static var notExistTemplate: ResourceNotFound {
            ResourceNotFound(.notExistTemplate)
        }

        /// 机构不存在或者未完成认证，请检查机构信息。
        public static var organization: ResourceNotFound {
            ResourceNotFound(.organization)
        }

        /// 签署二维码信息不存在，请检查后重试。
        public static var qrInfo: ResourceNotFound {
            ResourceNotFound(.qrInfo)
        }

        /// 未获取到文件资源，请检查资源是否完成上传，是否有效，并在修改后重试。
        public static var resource: ResourceNotFound {
            ResourceNotFound(.resource)
        }

        /// 超管信息不存在，请检查企业认证信息。
        public static var superAdmin: ResourceNotFound {
            ResourceNotFound(.superAdmin)
        }

        /// 模板不存在，请检查模板参数，模板配置，并稍后重试。
        public static var template: ResourceNotFound {
            ResourceNotFound(.template)
        }

        /// Url不存在。
        ///
        /// 确认查询条件是否可以匹配到 Url
        public static var url: ResourceNotFound {
            ResourceNotFound(.url)
        }

        /// 用户或者员工信息不存在，请检查参数后重试。
        public static var user: ResourceNotFound {
            ResourceNotFound(.user)
        }

        /// 用户或者员工未完成实名认证，请检查参数后重试。
        public static var verifyUser: ResourceNotFound {
            ResourceNotFound(.verifyUser)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asEssError() -> TCEssError {
            let code: TCEssError.Code
            switch self.error {
            case .application:
                code = .resourceNotFound_Application
            case .authActiveOrganization:
                code = .resourceNotFound_AuthActiveOrganization
            case .document:
                code = .resourceNotFound_Document
            case .errNotExistRole:
                code = .resourceNotFound_ErrNotExistRole
            case .flow:
                code = .resourceNotFound_Flow
            case .flowApprover:
                code = .resourceNotFound_FlowApprover
            case .notExistDocument:
                code = .resourceNotFound_NotExistDocument
            case .notExistFlow:
                code = .resourceNotFound_NotExistFlow
            case .notExistResource:
                code = .resourceNotFound_NotExistResource
            case .notExistTemplate:
                code = .resourceNotFound_NotExistTemplate
            case .organization:
                code = .resourceNotFound_Organization
            case .qrInfo:
                code = .resourceNotFound_QrInfo
            case .resource:
                code = .resourceNotFound_Resource
            case .superAdmin:
                code = .resourceNotFound_SuperAdmin
            case .template:
                code = .resourceNotFound_Template
            case .url:
                code = .resourceNotFound_Url
            case .user:
                code = .resourceNotFound_User
            case .verifyUser:
                code = .resourceNotFound_VerifyUser
            case .other:
                code = .resourceNotFound
            }
            return TCEssError(code, context: self.context)
        }
    }
}
