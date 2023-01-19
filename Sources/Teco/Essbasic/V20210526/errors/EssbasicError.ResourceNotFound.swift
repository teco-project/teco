//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCEssbasicError {
    public struct ResourceNotFound: TCEssbasicErrorType {
        enum Code: String {
            case application = "ResourceNotFound.Application"
            case applicationAuth = "ResourceNotFound.ApplicationAuth"
            case applicationId = "ResourceNotFound.ApplicationId"
            case file = "ResourceNotFound.File"
            case flow = "ResourceNotFound.Flow"
            case flowApprovers = "ResourceNotFound.FlowApprovers"
            case organization = "ResourceNotFound.Organization"
            case resource = "ResourceNotFound.Resource"
            case seal = "ResourceNotFound.Seal"
            case teamWorkOrganization = "ResourceNotFound.TeamWorkOrganization"
            case template = "ResourceNotFound.Template"
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

        /// 应用号不存在。
        ///
        /// 请检查应用号(AppId)参数是否正确。
        public static var application: ResourceNotFound {
            ResourceNotFound(.application)
        }

        public static var applicationAuth: ResourceNotFound {
            ResourceNotFound(.applicationAuth)
        }

        public static var applicationId: ResourceNotFound {
            ResourceNotFound(.applicationId)
        }

        public static var file: ResourceNotFound {
            ResourceNotFound(.file)
        }

        /// 未找到对应流程。
        ///
        /// 请检查流程Id是否存在。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var flow: ResourceNotFound {
            ResourceNotFound(.flow)
        }

        public static var flowApprovers: ResourceNotFound {
            ResourceNotFound(.flowApprovers)
        }

        /// 机构不存在。
        ///
        /// 请确认企业机构是否在电子签注册。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var organization: ResourceNotFound {
            ResourceNotFound(.organization)
        }

        public static var resource: ResourceNotFound {
            ResourceNotFound(.resource)
        }

        public static var seal: ResourceNotFound {
            ResourceNotFound(.seal)
        }

        public static var teamWorkOrganization: ResourceNotFound {
            ResourceNotFound(.teamWorkOrganization)
        }

        /// 模板不存在。
        ///
        /// 请检查参数TemplateId是否正确。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var template: ResourceNotFound {
            ResourceNotFound(.template)
        }

        public static var user: ResourceNotFound {
            ResourceNotFound(.user)
        }

        public static var verifyUser: ResourceNotFound {
            ResourceNotFound(.verifyUser)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asEssbasicError() -> TCEssbasicError {
            let code: TCEssbasicError.Code
            switch self.error {
            case .application:
                code = .resourceNotFound_Application
            case .applicationAuth:
                code = .resourceNotFound_ApplicationAuth
            case .applicationId:
                code = .resourceNotFound_ApplicationId
            case .file:
                code = .resourceNotFound_File
            case .flow:
                code = .resourceNotFound_Flow
            case .flowApprovers:
                code = .resourceNotFound_FlowApprovers
            case .organization:
                code = .resourceNotFound_Organization
            case .resource:
                code = .resourceNotFound_Resource
            case .seal:
                code = .resourceNotFound_Seal
            case .teamWorkOrganization:
                code = .resourceNotFound_TeamWorkOrganization
            case .template:
                code = .resourceNotFound_Template
            case .user:
                code = .resourceNotFound_User
            case .verifyUser:
                code = .resourceNotFound_VerifyUser
            case .other:
                code = .resourceNotFound
            }
            return TCEssbasicError(code, context: self.context)
        }
    }
}
