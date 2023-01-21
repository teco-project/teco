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

extension TCEssbasicError {
    public struct InvalidParameter: TCEssbasicErrorType {
        enum Code: String {
            case application = "InvalidParameter.Application"
            case approverType = "InvalidParameter.ApproverType"
            case bizApproverAlreadyExists = "InvalidParameter.BizApproverAlreadyExists"
            case businessLicense = "InvalidParameter.BusinessLicense"
            case cardType = "InvalidParameter.CardType"
            case componentValue = "InvalidParameter.ComponentValue"
            case contentType = "InvalidParameter.ContentType"
            case customShowMap = "InvalidParameter.CustomShowMap"
            case customerData = "InvalidParameter.CustomerData"
            case dataNotFound = "InvalidParameter.DataNotFound"
            case date = "InvalidParameter.Date"
            case departUserId = "InvalidParameter.DepartUserId"
            case dupTask = "InvalidParameter.DupTask"
            case emptyParams = "InvalidParameter.EmptyParams"
            case endPoint = "InvalidParameter.EndPoint"
            case fileType = "InvalidParameter.FileType"
            case flowApproverInfos = "InvalidParameter.FlowApproverInfos"
            case flowApprovers = "InvalidParameter.FlowApprovers"
            case flowCallbackUrl = "InvalidParameter.FlowCallbackUrl"
            case flowDeadLine = "InvalidParameter.FlowDeadLine"
            case flowDescription = "InvalidParameter.FlowDescription"
            case flowFileIds = "InvalidParameter.FlowFileIds"
            case flowIds = "InvalidParameter.FlowIds"
            case flowInfos = "InvalidParameter.FlowInfos"
            case flowName = "InvalidParameter.FlowName"
            case flowType = "InvalidParameter.FlowType"
            case generateType = "InvalidParameter.GenerateType"
            case image = "InvalidParameter.Image"
            case limitSealName = "InvalidParameter.LimitSealName"
            case menuStatus = "InvalidParameter.MenuStatus"
            case missingRequiredParameterValue = "InvalidParameter.MissingRequiredParameterValue"
            case name = "InvalidParameter.Name"
            case nonsupportMobile = "InvalidParameter.NonsupportMobile"
            case openId = "InvalidParameter.OpenId"
            case organizationId = "InvalidParameter.OrganizationId"
            case organizationName = "InvalidParameter.OrganizationName"
            case paramError = "InvalidParameter.ParamError"
            case sensitiveFileContent = "InvalidParameter.SensitiveFileContent"
            case signComponentType = "InvalidParameter.SignComponentType"
            case status = "InvalidParameter.Status"
            case unordered = "InvalidParameter.Unordered"
            case unsupportedComponentType = "InvalidParameter.UnsupportedComponentType"
            case other = "InvalidParameter"
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
        /// 请检查AppId是否正确后重试。若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var application: InvalidParameter {
            InvalidParameter(.application)
        }

        public static var approverType: InvalidParameter {
            InvalidParameter(.approverType)
        }

        /// 重复添加签署人。
        ///
        /// 请参考错误信息，检查合同签署人手机号或身份证号，是否唯一。
        public static var bizApproverAlreadyExists: InvalidParameter {
            InvalidParameter(.bizApproverAlreadyExists)
        }

        public static var businessLicense: InvalidParameter {
            InvalidParameter(.businessLicense)
        }

        public static var cardType: InvalidParameter {
            InvalidParameter(.cardType)
        }

        public static var componentValue: InvalidParameter {
            InvalidParameter(.componentValue)
        }

        public static var contentType: InvalidParameter {
            InvalidParameter(.contentType)
        }

        public static var customShowMap: InvalidParameter {
            InvalidParameter(.customShowMap)
        }

        public static var customerData: InvalidParameter {
            InvalidParameter(.customerData)
        }

        /// 数据不存在。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var dataNotFound: InvalidParameter {
            InvalidParameter(.dataNotFound)
        }

        public static var date: InvalidParameter {
            InvalidParameter(.date)
        }

        public static var departUserId: InvalidParameter {
            InvalidParameter(.departUserId)
        }

        public static var dupTask: InvalidParameter {
            InvalidParameter(.dupTask)
        }

        /// 参数为空。
        ///
        /// 必填参数不能为空，请检查参数及重试。若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var emptyParams: InvalidParameter {
            InvalidParameter(.emptyParams)
        }

        public static var endPoint: InvalidParameter {
            InvalidParameter(.endPoint)
        }

        public static var fileType: InvalidParameter {
            InvalidParameter(.fileType)
        }

        public static var flowApproverInfos: InvalidParameter {
            InvalidParameter(.flowApproverInfos)
        }

        public static var flowApprovers: InvalidParameter {
            InvalidParameter(.flowApprovers)
        }

        public static var flowCallbackUrl: InvalidParameter {
            InvalidParameter(.flowCallbackUrl)
        }

        public static var flowDeadLine: InvalidParameter {
            InvalidParameter(.flowDeadLine)
        }

        public static var flowDescription: InvalidParameter {
            InvalidParameter(.flowDescription)
        }

        public static var flowFileIds: InvalidParameter {
            InvalidParameter(.flowFileIds)
        }

        public static var flowIds: InvalidParameter {
            InvalidParameter(.flowIds)
        }

        public static var flowInfos: InvalidParameter {
            InvalidParameter(.flowInfos)
        }

        public static var flowName: InvalidParameter {
            InvalidParameter(.flowName)
        }

        public static var flowType: InvalidParameter {
            InvalidParameter(.flowType)
        }

        public static var generateType: InvalidParameter {
            InvalidParameter(.generateType)
        }

        public static var image: InvalidParameter {
            InvalidParameter(.image)
        }

        public static var limitSealName: InvalidParameter {
            InvalidParameter(.limitSealName)
        }

        public static var menuStatus: InvalidParameter {
            InvalidParameter(.menuStatus)
        }

        public static var missingRequiredParameterValue: InvalidParameter {
            InvalidParameter(.missingRequiredParameterValue)
        }

        public static var name: InvalidParameter {
            InvalidParameter(.name)
        }

        public static var nonsupportMobile: InvalidParameter {
            InvalidParameter(.nonsupportMobile)
        }

        public static var openId: InvalidParameter {
            InvalidParameter(.openId)
        }

        public static var organizationId: InvalidParameter {
            InvalidParameter(.organizationId)
        }

        public static var organizationName: InvalidParameter {
            InvalidParameter(.organizationName)
        }

        /// 参数错误。
        ///
        /// 请确认参数类型及值是否符合定义。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var paramError: InvalidParameter {
            InvalidParameter(.paramError)
        }

        public static var sensitiveFileContent: InvalidParameter {
            InvalidParameter(.sensitiveFileContent)
        }

        public static var signComponentType: InvalidParameter {
            InvalidParameter(.signComponentType)
        }

        /// 状态异常。
        ///
        /// 请检查流程状态是否正确。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var status: InvalidParameter {
            InvalidParameter(.status)
        }

        public static var unordered: InvalidParameter {
            InvalidParameter(.unordered)
        }

        public static var unsupportedComponentType: InvalidParameter {
            InvalidParameter(.unsupportedComponentType)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asEssbasicError() -> TCEssbasicError {
            let code: TCEssbasicError.Code
            switch self.error {
            case .application:
                code = .invalidParameter_Application
            case .approverType:
                code = .invalidParameter_ApproverType
            case .bizApproverAlreadyExists:
                code = .invalidParameter_BizApproverAlreadyExists
            case .businessLicense:
                code = .invalidParameter_BusinessLicense
            case .cardType:
                code = .invalidParameter_CardType
            case .componentValue:
                code = .invalidParameter_ComponentValue
            case .contentType:
                code = .invalidParameter_ContentType
            case .customShowMap:
                code = .invalidParameter_CustomShowMap
            case .customerData:
                code = .invalidParameter_CustomerData
            case .dataNotFound:
                code = .invalidParameter_DataNotFound
            case .date:
                code = .invalidParameter_Date
            case .departUserId:
                code = .invalidParameter_DepartUserId
            case .dupTask:
                code = .invalidParameter_DupTask
            case .emptyParams:
                code = .invalidParameter_EmptyParams
            case .endPoint:
                code = .invalidParameter_EndPoint
            case .fileType:
                code = .invalidParameter_FileType
            case .flowApproverInfos:
                code = .invalidParameter_FlowApproverInfos
            case .flowApprovers:
                code = .invalidParameter_FlowApprovers
            case .flowCallbackUrl:
                code = .invalidParameter_FlowCallbackUrl
            case .flowDeadLine:
                code = .invalidParameter_FlowDeadLine
            case .flowDescription:
                code = .invalidParameter_FlowDescription
            case .flowFileIds:
                code = .invalidParameter_FlowFileIds
            case .flowIds:
                code = .invalidParameter_FlowIds
            case .flowInfos:
                code = .invalidParameter_FlowInfos
            case .flowName:
                code = .invalidParameter_FlowName
            case .flowType:
                code = .invalidParameter_FlowType
            case .generateType:
                code = .invalidParameter_GenerateType
            case .image:
                code = .invalidParameter_Image
            case .limitSealName:
                code = .invalidParameter_LimitSealName
            case .menuStatus:
                code = .invalidParameter_MenuStatus
            case .missingRequiredParameterValue:
                code = .invalidParameter_MissingRequiredParameterValue
            case .name:
                code = .invalidParameter_Name
            case .nonsupportMobile:
                code = .invalidParameter_NonsupportMobile
            case .openId:
                code = .invalidParameter_OpenId
            case .organizationId:
                code = .invalidParameter_OrganizationId
            case .organizationName:
                code = .invalidParameter_OrganizationName
            case .paramError:
                code = .invalidParameter_ParamError
            case .sensitiveFileContent:
                code = .invalidParameter_SensitiveFileContent
            case .signComponentType:
                code = .invalidParameter_SignComponentType
            case .status:
                code = .invalidParameter_Status
            case .unordered:
                code = .invalidParameter_Unordered
            case .unsupportedComponentType:
                code = .invalidParameter_UnsupportedComponentType
            case .other:
                code = .invalidParameter
            }
            return TCEssbasicError(code, context: self.context)
        }
    }
}
