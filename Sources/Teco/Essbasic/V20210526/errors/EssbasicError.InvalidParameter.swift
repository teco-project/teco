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

extension TCEssbasicError {
    public struct InvalidParameter: TCEssbasicErrorType {
        enum Code: String {
            case application = "InvalidParameter.Application"
            case approverType = "InvalidParameter.ApproverType"
            case approverVerifyType = "InvalidParameter.ApproverVerifyType"
            case authorizationType = "InvalidParameter.AuthorizationType"
            case bizApproverAlreadyExists = "InvalidParameter.BizApproverAlreadyExists"
            case businessLicense = "InvalidParameter.BusinessLicense"
            case cancelReason = "InvalidParameter.CancelReason"
            case cardNumber = "InvalidParameter.CardNumber"
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
            case fFowIds = "InvalidParameter.fFowIds"
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
            case invalidId = "InvalidParameter.InvalidId"
            case limit = "InvalidParameter.Limit"
            case limitSealName = "InvalidParameter.LimitSealName"
            case menuStatus = "InvalidParameter.MenuStatus"
            case missingRequiredParameterValue = "InvalidParameter.MissingRequiredParameterValue"
            case mobile = "InvalidParameter.Mobile"
            case name = "InvalidParameter.Name"
            case nonsupportMobile = "InvalidParameter.NonsupportMobile"
            case offset = "InvalidParameter.Offset"
            case openId = "InvalidParameter.OpenId"
            case organizationId = "InvalidParameter.OrganizationId"
            case organizationName = "InvalidParameter.OrganizationName"
            case paramError = "InvalidParameter.ParamError"
            case resourceType = "InvalidParameter.ResourceType"
            case roleId = "InvalidParameter.RoleId"
            case sensitiveFileContent = "InvalidParameter.SensitiveFileContent"
            case signComponentType = "InvalidParameter.SignComponentType"
            case signComponents = "InvalidParameter.SignComponents"
            case status = "InvalidParameter.Status"
            case uniformSocialCreditCode = "InvalidParameter.UniformSocialCreditCode"
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

        /// 参数错误，不合法的签署人类型，请修改后重试。
        public static var approverType: InvalidParameter {
            InvalidParameter(.approverType)
        }

        public static var approverVerifyType: InvalidParameter {
            InvalidParameter(.approverVerifyType)
        }

        /// 1:上传授权书
        /// 2:法人授权
        /// 4:信任第三方认证源
        public static var authorizationType: InvalidParameter {
            InvalidParameter(.authorizationType)
        }

        /// 重复添加签署人。
        ///
        /// 请参考错误信息，检查合同签署人手机号或身份证号，是否唯一。
        public static var bizApproverAlreadyExists: InvalidParameter {
            InvalidParameter(.bizApproverAlreadyExists)
        }

        /// 营业执照格式不合法。
        public static var businessLicense: InvalidParameter {
            InvalidParameter(.businessLicense)
        }

        /// 撤销理由填写格式错误。
        public static var cancelReason: InvalidParameter {
            InvalidParameter(.cancelReason)
        }

        /// 证件号码错误。
        ///
        /// 请检查证件号码是否规范。
        public static var cardNumber: InvalidParameter {
            InvalidParameter(.cardNumber)
        }

        /// 证件类型错误。
        public static var cardType: InvalidParameter {
            InvalidParameter(.cardType)
        }

        /// 参数错误,控件内容无效。
        public static var componentValue: InvalidParameter {
            InvalidParameter(.componentValue)
        }

        /// 查询内容参数有误。
        public static var contentType: InvalidParameter {
            InvalidParameter(.contentType)
        }

        /// 参数错误，无效的自定义页卡模板，仅支持{合同名称}{发起方姓名}{发起方企业}{签署方N姓名}{签署方N企业}，请修改后重试。
        public static var customShowMap: InvalidParameter {
            InvalidParameter(.customShowMap)
        }

        /// 参数错误，UserData长度非法，请修改后重试。
        public static var customerData: InvalidParameter {
            InvalidParameter(.customerData)
        }

        /// 数据不存在。
        ///
        /// 请稍后重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var dataNotFound: InvalidParameter {
            InvalidParameter(.dataNotFound)
        }

        /// 参数错误，不合法的日期，请检查后重试。
        public static var date: InvalidParameter {
            InvalidParameter(.date)
        }

        /// 员工ID不正确。
        public static var departUserId: InvalidParameter {
            InvalidParameter(.departUserId)
        }

        /// 重复提交任务。
        public static var dupTask: InvalidParameter {
            InvalidParameter(.dupTask)
        }

        /// 参数为空。
        ///
        /// 必填参数不能为空，请检查参数及重试。若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var emptyParams: InvalidParameter {
            InvalidParameter(.emptyParams)
        }

        /// 不合法的EndPoint，请检查修改后重试。
        public static var endPoint: InvalidParameter {
            InvalidParameter(.endPoint)
        }

        /// 流程id不存在。
        public static var fFowIds: InvalidParameter {
            InvalidParameter(.fFowIds)
        }

        /// 文件类型不合法。
        public static var fileType: InvalidParameter {
            InvalidParameter(.fileType)
        }

        /// 参数错误，不合法的备选签署人数量，请检查后重试。
        public static var flowApproverInfos: InvalidParameter {
            InvalidParameter(.flowApproverInfos)
        }

        /// 参数错误，参与者数量不能为空且不能超过数量限制，请修改后重试。
        public static var flowApprovers: InvalidParameter {
            InvalidParameter(.flowApprovers)
        }

        /// 参数错误，不合法的签署流程回调链接，请修改后重试。
        public static var flowCallbackUrl: InvalidParameter {
            InvalidParameter(.flowCallbackUrl)
        }

        /// 参数错误，不合法的签署流程截止日期，请修改后重试。
        public static var flowDeadLine: InvalidParameter {
            InvalidParameter(.flowDeadLine)
        }

        /// 参数错误，不合法的签署流程描述，请修改后重试。
        public static var flowDescription: InvalidParameter {
            InvalidParameter(.flowDescription)
        }

        /// 参数错误，目前仅支持单个文件发起，请修改后重试。
        public static var flowFileIds: InvalidParameter {
            InvalidParameter(.flowFileIds)
        }

        /// 参数错误，合同id列表长度非法，请检查后重试。
        public static var flowIds: InvalidParameter {
            InvalidParameter(.flowIds)
        }

        /// 参数错误，FlowInfos非法，请修改后重试。
        public static var flowInfos: InvalidParameter {
            InvalidParameter(.flowInfos)
        }

        /// 参数错误，不合法的签署流程名称，请修改后重试。
        public static var flowName: InvalidParameter {
            InvalidParameter(.flowName)
        }

        /// 参数错误，不合法的FlowType，请修改后重试。
        public static var flowType: InvalidParameter {
            InvalidParameter(.flowType)
        }

        /// 参数错误，不受支持的GenerateType，请检查后重试。
        public static var generateType: InvalidParameter {
            InvalidParameter(.generateType)
        }

        /// 图片不正确。
        public static var image: InvalidParameter {
            InvalidParameter(.image)
        }

        /// Id不存在或者符合规范。
        public static var invalidId: InvalidParameter {
            InvalidParameter(.invalidId)
        }

        public static var limit: InvalidParameter {
            InvalidParameter(.limit)
        }

        /// 印章名称长度超出。
        public static var limitSealName: InvalidParameter {
            InvalidParameter(.limitSealName)
        }

        /// 菜单栏状态非法。
        public static var menuStatus: InvalidParameter {
            InvalidParameter(.menuStatus)
        }

        /// 缺少必填参数的值。
        public static var missingRequiredParameterValue: InvalidParameter {
            InvalidParameter(.missingRequiredParameterValue)
        }

        /// 手机号码不正确。
        ///
        /// 请检查手机号码是否规范。
        public static var mobile: InvalidParameter {
            InvalidParameter(.mobile)
        }

        /// 姓名不符合要求。
        public static var name: InvalidParameter {
            InvalidParameter(.name)
        }

        /// 不支持的手机号。
        public static var nonsupportMobile: InvalidParameter {
            InvalidParameter(.nonsupportMobile)
        }

        public static var offset: InvalidParameter {
            InvalidParameter(.offset)
        }

        /// OpenId不合法。
        public static var openId: InvalidParameter {
            InvalidParameter(.openId)
        }

        /// OrganizationId不合法。
        public static var organizationId: InvalidParameter {
            InvalidParameter(.organizationId)
        }

        /// 企业名称不合法。
        public static var organizationName: InvalidParameter {
            InvalidParameter(.organizationName)
        }

        /// 参数错误。
        ///
        /// 请确认参数类型及值是否符合定义。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var paramError: InvalidParameter {
            InvalidParameter(.paramError)
        }

        /// 资源类型错误。
        public static var resourceType: InvalidParameter {
            InvalidParameter(.resourceType)
        }

        public static var roleId: InvalidParameter {
            InvalidParameter(.roleId)
        }

        /// 文件内容敏感信息。
        public static var sensitiveFileContent: InvalidParameter {
            InvalidParameter(.sensitiveFileContent)
        }

        /// 参数错误，不合法的签署控件类型，请修改后重试。
        public static var signComponentType: InvalidParameter {
            InvalidParameter(.signComponentType)
        }

        /// 类型不支持。
        public static var signComponents: InvalidParameter {
            InvalidParameter(.signComponents)
        }

        /// 状态异常。
        ///
        /// 请检查流程状态是否正确。再重试，若仍未解决，请联系工作人员 ，并提供有报错的requestid。
        public static var status: InvalidParameter {
            InvalidParameter(.status)
        }

        public static var uniformSocialCreditCode: InvalidParameter {
            InvalidParameter(.uniformSocialCreditCode)
        }

        /// 参数错误，不合法的签署顺序，请检查后重试。
        public static var unordered: InvalidParameter {
            InvalidParameter(.unordered)
        }

        /// 参数错误，不支持的控件类型，请检查后重试。
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
            case .approverVerifyType:
                code = .invalidParameter_ApproverVerifyType
            case .authorizationType:
                code = .invalidParameter_AuthorizationType
            case .bizApproverAlreadyExists:
                code = .invalidParameter_BizApproverAlreadyExists
            case .businessLicense:
                code = .invalidParameter_BusinessLicense
            case .cancelReason:
                code = .invalidParameter_CancelReason
            case .cardNumber:
                code = .invalidParameter_CardNumber
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
            case .fFowIds:
                code = .invalidParameter_fFowIds
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
            case .invalidId:
                code = .invalidParameter_InvalidId
            case .limit:
                code = .invalidParameter_Limit
            case .limitSealName:
                code = .invalidParameter_LimitSealName
            case .menuStatus:
                code = .invalidParameter_MenuStatus
            case .missingRequiredParameterValue:
                code = .invalidParameter_MissingRequiredParameterValue
            case .mobile:
                code = .invalidParameter_Mobile
            case .name:
                code = .invalidParameter_Name
            case .nonsupportMobile:
                code = .invalidParameter_NonsupportMobile
            case .offset:
                code = .invalidParameter_Offset
            case .openId:
                code = .invalidParameter_OpenId
            case .organizationId:
                code = .invalidParameter_OrganizationId
            case .organizationName:
                code = .invalidParameter_OrganizationName
            case .paramError:
                code = .invalidParameter_ParamError
            case .resourceType:
                code = .invalidParameter_ResourceType
            case .roleId:
                code = .invalidParameter_RoleId
            case .sensitiveFileContent:
                code = .invalidParameter_SensitiveFileContent
            case .signComponentType:
                code = .invalidParameter_SignComponentType
            case .signComponents:
                code = .invalidParameter_SignComponents
            case .status:
                code = .invalidParameter_Status
            case .uniformSocialCreditCode:
                code = .invalidParameter_UniformSocialCreditCode
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
