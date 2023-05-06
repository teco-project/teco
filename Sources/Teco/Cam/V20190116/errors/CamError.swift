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

/// Service error type returned by `Cam`.
public protocol TCCamErrorType: TCServiceErrorType {
    /// Get the service error as ``TCCamError``.
    ///
    /// - Returns: ``TCCamError`` that holds the same error code and context.
    func asCamError() -> TCCamError
}

public struct TCCamError: TCCamErrorType {
    enum Code: String {
        case authFailure_UnauthorizedOperation = "AuthFailure.UnauthorizedOperation"
        case failedOperation = "FailedOperation"
        case failedOperation_Accesskey = "FailedOperation.Accesskey"
        case failedOperation_PolicyFull = "FailedOperation.PolicyFull"
        case failedOperation_PolicyNameInUse = "FailedOperation.PolicyNameInUse"
        case failedOperation_PolicyVersionAlreadyDefault = "FailedOperation.PolicyVersionAlreadyDefault"
        case failedOperation_PolicyVersionFull = "FailedOperation.PolicyVersionFull"
        case failedOperation_TagResourceFailed = "FailedOperation.TagResourceFailed"
        case failedOperation_UnTagResourceFailed = "FailedOperation.UnTagResourceFailed"
        case failedOperation_UserNotBindPhone = "FailedOperation.UserNotBindPhone"
        case failedOperation_UserNotBindWechat = "FailedOperation.UserNotBindWechat"
        case failedOperation_UserUnbindNoPermission = "FailedOperation.UserUnbindNoPermission"
        case internalError = "InternalError"
        case internalError_SystemError = "InternalError.SystemError"
        case invalidParameter = "InvalidParameter"
        case invalidParameterValue_IdentityKeyError = "InvalidParameterValue.IdentityKeyError"
        case invalidParameterValue_IdentityUrlError = "InvalidParameterValue.IdentityUrlError"
        case invalidParameterValue_MetadataError = "InvalidParameterValue.MetadataError"
        case invalidParameterValue_NameError = "InvalidParameterValue.NameError"
        case invalidParameter_ActionError = "InvalidParameter.ActionError"
        case invalidParameter_ActionMiss = "InvalidParameter.ActionMiss"
        case invalidParameter_ActionNotExist = "InvalidParameter.ActionNotExist"
        case invalidParameter_ActionServiceNotExist = "InvalidParameter.ActionServiceNotExist"
        case invalidParameter_AttachmentFull = "InvalidParameter.AttachmentFull"
        case invalidParameter_ConditionContentError = "InvalidParameter.ConditionContentError"
        case invalidParameter_ConditionError = "InvalidParameter.ConditionError"
        case invalidParameter_ConditionTypeError = "InvalidParameter.ConditionTypeError"
        case invalidParameter_DeletionTaskNotExist = "InvalidParameter.DeletionTaskNotExist"
        case invalidParameter_DescriptionLengthOverlimit = "InvalidParameter.DescriptionLengthOverlimit"
        case invalidParameter_EffectError = "InvalidParameter.EffectError"
        case invalidParameter_EntityFilterError = "InvalidParameter.EntityFilterError"
        case invalidParameter_GroupFull = "InvalidParameter.GroupFull"
        case invalidParameter_GroupIdError = "InvalidParameter.GroupIdError"
        case invalidParameter_GroupNameInUse = "InvalidParameter.GroupNameInUse"
        case invalidParameter_GroupNotExist = "InvalidParameter.GroupNotExist"
        case invalidParameter_GroupUserFull = "InvalidParameter.GroupUserFull"
        case invalidParameter_IdentityNameInUse = "InvalidParameter.IdentityNameInUse"
        case invalidParameter_KeywordError = "InvalidParameter.KeywordError"
        case invalidParameter_MFATokenError = "InvalidParameter.MFATokenError"
        case invalidParameter_NotSupportProduct = "InvalidParameter.NotSupportProduct"
        case invalidParameter_OperateEntitiesOverLimit = "InvalidParameter.OperateEntitiesOverLimit"
        case invalidParameter_OrganizationRoleOperateError = "InvalidParameter.OrganizationRoleOperateError"
        case invalidParameter_ParamError = "InvalidParameter.ParamError"
        case invalidParameter_PasswordViolatedRules = "InvalidParameter.PasswordViolatedRules"
        case invalidParameter_PolicyDocumentError = "InvalidParameter.PolicyDocumentError"
        case invalidParameter_PolicyDocumentLengthOverLimit = "InvalidParameter.PolicyDocumentLengthOverLimit"
        case invalidParameter_PolicyIdError = "InvalidParameter.PolicyIdError"
        case invalidParameter_PolicyIdNotExist = "InvalidParameter.PolicyIdNotExist"
        case invalidParameter_PolicyNameError = "InvalidParameter.PolicyNameError"
        case invalidParameter_PolicyVersionNotExists = "InvalidParameter.PolicyVersionNotExists"
        case invalidParameter_PrincipalError = "InvalidParameter.PrincipalError"
        case invalidParameter_PrincipalQcsCrossError = "InvalidParameter.PrincipalQcsCrossError"
        case invalidParameter_PrincipalQcsError = "InvalidParameter.PrincipalQcsError"
        case invalidParameter_PrincipalQcsNotExist = "InvalidParameter.PrincipalQcsNotExist"
        case invalidParameter_PrincipalServiceNotExist = "InvalidParameter.PrincipalServiceNotExist"
        case invalidParameter_ResourceContentError = "InvalidParameter.ResourceContentError"
        case invalidParameter_ResourceError = "InvalidParameter.ResourceError"
        case invalidParameter_ResourceProjectError = "InvalidParameter.ResourceProjectError"
        case invalidParameter_ResourceQcsError = "InvalidParameter.ResourceQcsError"
        case invalidParameter_ResourceRegionError = "InvalidParameter.ResourceRegionError"
        case invalidParameter_ResourceServiceNotExist = "InvalidParameter.ResourceServiceNotExist"
        case invalidParameter_ResourceUinError = "InvalidParameter.ResourceUinError"
        case invalidParameter_RoleFull = "InvalidParameter.RoleFull"
        case invalidParameter_RoleNameError = "InvalidParameter.RoleNameError"
        case invalidParameter_RoleNameInUse = "InvalidParameter.RoleNameInUse"
        case invalidParameter_RoleNotExist = "InvalidParameter.RoleNotExist"
        case invalidParameter_ScopeError = "InvalidParameter.ScopeError"
        case invalidParameter_SearchKeywordLengthError = "InvalidParameter.SearchKeywordLengthError"
        case invalidParameter_ServiceLinkedPolicyCantInPermissionBoundary = "InvalidParameter.ServiceLinkedPolicyCantInPermissionBoundary"
        case invalidParameter_ServiceLinkedRoleCantUsePermissionBoundary = "InvalidParameter.ServiceLinkedRoleCantUsePermissionBoundary"
        case invalidParameter_ServiceTypeError = "InvalidParameter.ServiceTypeError"
        case invalidParameter_StatementError = "InvalidParameter.StatementError"
        case invalidParameter_SubUserFull = "InvalidParameter.SubUserFull"
        case invalidParameter_SubUserNameInUse = "InvalidParameter.SubUserNameInUse"
        case invalidParameter_TagLimitExceeded = "InvalidParameter.TagLimitExceeded"
        case invalidParameter_TagParamError = "InvalidParameter.TagParamError"
        case invalidParameter_UinError = "InvalidParameter.UinError"
        case invalidParameter_UserGroupFull = "InvalidParameter.UserGroupFull"
        case invalidParameter_UserNameIllegal = "InvalidParameter.UserNameIllegal"
        case invalidParameter_UserNotExist = "InvalidParameter.UserNotExist"
        case invalidParameter_UserUinAndUinNotAllNull = "InvalidParameter.UserUinAndUinNotAllNull"
        case invalidParameter_VersionError = "InvalidParameter.VersionError"
        case limitExceeded_IdentityFull = "LimitExceeded.IdentityFull"
        case operationDenied_AccessKeyOverLimit = "OperationDenied.AccessKeyOverLimit"
        case operationDenied_HaveKeys = "OperationDenied.HaveKeys"
        case operationDenied_SubUin = "OperationDenied.SubUin"
        case operationDenied_UinNotMatch = "OperationDenied.UinNotMatch"
        case requestLimitExceeded_CreateUser = "RequestLimitExceeded.CreateUser"
        case requestLimitExceeded_UinLimitExceeded = "RequestLimitExceeded.UinLimitExceeded"
        case resourceNotFound_GroupNotExist = "ResourceNotFound.GroupNotExist"
        case resourceNotFound_IdentityNotExist = "ResourceNotFound.IdentityNotExist"
        case resourceNotFound_NotFound = "ResourceNotFound.NotFound"
        case resourceNotFound_PolicyIdNotFound = "ResourceNotFound.PolicyIdNotFound"
        case resourceNotFound_SecretNotExist = "ResourceNotFound.SecretNotExist"
        case resourceNotFound_UserNotExist = "ResourceNotFound.UserNotExist"
        case unauthorizedOperation = "UnauthorizedOperation"
        case unauthorizedOperation_DeleteApiKey = "UnauthorizedOperation.DeleteApiKey"
    }

    /// Error domains affliated to ``TCCamError``.
    public static var domains: [TCErrorType.Type] {
        [
            AuthFailure.self,
            FailedOperation.self,
            InternalError.self,
            InvalidParameter.self,
            InvalidParameterValue.self,
            LimitExceeded.self,
            OperationDenied.self,
            RequestLimitExceeded.self,
            ResourceNotFound.self,
            UnauthorizedOperation.self
        ]
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

    /// 没有权限。
    public static var authFailure_UnauthorizedOperation: TCCamError {
        TCCamError(.authFailure_UnauthorizedOperation)
    }

    /// 操作失败。
    public static var failedOperation: TCCamError {
        TCCamError(.failedOperation)
    }

    /// 操作访问密钥错误。
    public static var failedOperation_Accesskey: TCCamError {
        TCCamError(.failedOperation_Accesskey)
    }

    /// 用户策略数超过上限。
    public static var failedOperation_PolicyFull: TCCamError {
        TCCamError(.failedOperation_PolicyFull)
    }

    /// PolicyName字段指定的策略名已存在。
    public static var failedOperation_PolicyNameInUse: TCCamError {
        TCCamError(.failedOperation_PolicyNameInUse)
    }

    /// 该策略版本已经是默认策略版本。
    public static var failedOperation_PolicyVersionAlreadyDefault: TCCamError {
        TCCamError(.failedOperation_PolicyVersionAlreadyDefault)
    }

    /// 策略版本数已经达到上限。
    public static var failedOperation_PolicyVersionFull: TCCamError {
        TCCamError(.failedOperation_PolicyVersionFull)
    }

    /// 绑定标签失败。
    public static var failedOperation_TagResourceFailed: TCCamError {
        TCCamError(.failedOperation_TagResourceFailed)
    }

    /// 解绑标签失败。
    public static var failedOperation_UnTagResourceFailed: TCCamError {
        TCCamError(.failedOperation_UnTagResourceFailed)
    }

    /// 用户未绑定手机。
    public static var failedOperation_UserNotBindPhone: TCCamError {
        TCCamError(.failedOperation_UserNotBindPhone)
    }

    /// 用户未绑定微信。
    public static var failedOperation_UserNotBindWechat: TCCamError {
        TCCamError(.failedOperation_UserNotBindWechat)
    }

    /// 设置的用户没有权限。
    public static var failedOperation_UserUnbindNoPermission: TCCamError {
        TCCamError(.failedOperation_UserUnbindNoPermission)
    }

    /// 内部错误。
    public static var internalError: TCCamError {
        TCCamError(.internalError)
    }

    /// 内部错误。
    public static var internalError_SystemError: TCCamError {
        TCCamError(.internalError_SystemError)
    }

    /// 参数错误。
    public static var invalidParameter: TCCamError {
        TCCamError(.invalidParameter)
    }

    /// OIDC签名公钥错误。
    public static var invalidParameterValue_IdentityKeyError: TCCamError {
        TCCamError(.invalidParameterValue_IdentityKeyError)
    }

    /// 身份提供商URL错误。
    public static var invalidParameterValue_IdentityUrlError: TCCamError {
        TCCamError(.invalidParameterValue_IdentityUrlError)
    }

    /// 身份提供商元数据文档错误。
    public static var invalidParameterValue_MetadataError: TCCamError {
        TCCamError(.invalidParameterValue_MetadataError)
    }

    /// 身份提供商名称错误。
    public static var invalidParameterValue_NameError: TCCamError {
        TCCamError(.invalidParameterValue_NameError)
    }

    /// 策略文档的Action字段不合法。
    public static var invalidParameter_ActionError: TCCamError {
        TCCamError(.invalidParameter_ActionError)
    }

    /// 策略语法中操作不存在。
    public static var invalidParameter_ActionMiss: TCCamError {
        TCCamError(.invalidParameter_ActionMiss)
    }

    /// 策略语法中操作不存在。
    public static var invalidParameter_ActionNotExist: TCCamError {
        TCCamError(.invalidParameter_ActionNotExist)
    }

    /// 策略语法中操作服务不存在。
    public static var invalidParameter_ActionServiceNotExist: TCCamError {
        TCCamError(.invalidParameter_ActionServiceNotExist)
    }

    /// principal字段的授权对象关联策略数已达到上限。
    public static var invalidParameter_AttachmentFull: TCCamError {
        TCCamError(.invalidParameter_AttachmentFull)
    }

    /// 策略语法中条件内容不正确。
    public static var invalidParameter_ConditionContentError: TCCamError {
        TCCamError(.invalidParameter_ConditionContentError)
    }

    /// 策略文档的condition字段不合法。
    public static var invalidParameter_ConditionError: TCCamError {
        TCCamError(.invalidParameter_ConditionError)
    }

    /// 策略语法中条件操作符不正确。
    public static var invalidParameter_ConditionTypeError: TCCamError {
        TCCamError(.invalidParameter_ConditionTypeError)
    }

    /// 任务不存在。
    public static var invalidParameter_DeletionTaskNotExist: TCCamError {
        TCCamError(.invalidParameter_DeletionTaskNotExist)
    }

    /// Description入参长度不能大于300字节。
    public static var invalidParameter_DescriptionLengthOverlimit: TCCamError {
        TCCamError(.invalidParameter_DescriptionLengthOverlimit)
    }

    /// 策略文档的Effect字段不合法。
    public static var invalidParameter_EffectError: TCCamError {
        TCCamError(.invalidParameter_EffectError)
    }

    /// EntityFilter字段不合法。
    public static var invalidParameter_EntityFilterError: TCCamError {
        TCCamError(.invalidParameter_EntityFilterError)
    }

    /// 用户组数量达到上限。
    public static var invalidParameter_GroupFull: TCCamError {
        TCCamError(.invalidParameter_GroupFull)
    }

    /// GroupId字段不合法。
    public static var invalidParameter_GroupIdError: TCCamError {
        TCCamError(.invalidParameter_GroupIdError)
    }

    /// 用户组名称重复。
    public static var invalidParameter_GroupNameInUse: TCCamError {
        TCCamError(.invalidParameter_GroupNameInUse)
    }

    /// 用户组不存在。
    public static var invalidParameter_GroupNotExist: TCCamError {
        TCCamError(.invalidParameter_GroupNotExist)
    }

    /// 用户组中的子用户数量达到上限。
    public static var invalidParameter_GroupUserFull: TCCamError {
        TCCamError(.invalidParameter_GroupUserFull)
    }

    /// 身份提供商名称已经使用。
    public static var invalidParameter_IdentityNameInUse: TCCamError {
        TCCamError(.invalidParameter_IdentityNameInUse)
    }

    /// Keyword字段不合法。
    public static var invalidParameter_KeywordError: TCCamError {
        TCCamError(.invalidParameter_KeywordError)
    }

    /// 多因子Token验证失败。
    public static var invalidParameter_MFATokenError: TCCamError {
        TCCamError(.invalidParameter_MFATokenError)
    }

    /// CAM不支持策略文档中所指定的资源类型。
    public static var invalidParameter_NotSupportProduct: TCCamError {
        TCCamError(.invalidParameter_NotSupportProduct)
    }

    /// 一次操作实体数过多。
    public static var invalidParameter_OperateEntitiesOverLimit: TCCamError {
        TCCamError(.invalidParameter_OperateEntitiesOverLimit)
    }

    /// 当前角色仅支持企业管理员操作，如需修改，请联系企业管理员。
    public static var invalidParameter_OrganizationRoleOperateError: TCCamError {
        TCCamError(.invalidParameter_OrganizationRoleOperateError)
    }

    /// 非法入参。
    public static var invalidParameter_ParamError: TCCamError {
        TCCamError(.invalidParameter_ParamError)
    }

    /// 密码不符合用户安全设置。
    public static var invalidParameter_PasswordViolatedRules: TCCamError {
        TCCamError(.invalidParameter_PasswordViolatedRules)
    }

    /// PolicyDocument字段不合法。
    public static var invalidParameter_PolicyDocumentError: TCCamError {
        TCCamError(.invalidParameter_PolicyDocumentError)
    }

    /// PolicyDocument字段超过长度限制。
    public static var invalidParameter_PolicyDocumentLengthOverLimit: TCCamError {
        TCCamError(.invalidParameter_PolicyDocumentLengthOverLimit)
    }

    /// 输入参数PolicyId不合法。
    public static var invalidParameter_PolicyIdError: TCCamError {
        TCCamError(.invalidParameter_PolicyIdError)
    }

    /// 策略ID不存在。
    public static var invalidParameter_PolicyIdNotExist: TCCamError {
        TCCamError(.invalidParameter_PolicyIdNotExist)
    }

    /// PolicyName字段不合法。
    public static var invalidParameter_PolicyNameError: TCCamError {
        TCCamError(.invalidParameter_PolicyNameError)
    }

    /// 策略版本不存在。
    public static var invalidParameter_PolicyVersionNotExists: TCCamError {
        TCCamError(.invalidParameter_PolicyVersionNotExists)
    }

    /// 策略文档的principal字段不合法。
    public static var invalidParameter_PrincipalError: TCCamError {
        TCCamError(.invalidParameter_PrincipalError)
    }

    /// 角色载体不允许跨站。
    public static var invalidParameter_PrincipalQcsCrossError: TCCamError {
        TCCamError(.invalidParameter_PrincipalQcsCrossError)
    }

    /// PrincipalQcsc错误。
    public static var invalidParameter_PrincipalQcsError: TCCamError {
        TCCamError(.invalidParameter_PrincipalQcsError)
    }

    /// PrincipalQcs不存在。
    public static var invalidParameter_PrincipalQcsNotExist: TCCamError {
        TCCamError(.invalidParameter_PrincipalQcsNotExist)
    }

    /// PrincipalService不存在。
    public static var invalidParameter_PrincipalServiceNotExist: TCCamError {
        TCCamError(.invalidParameter_PrincipalServiceNotExist)
    }

    /// 策略语法中资源内容不正确。
    public static var invalidParameter_ResourceContentError: TCCamError {
        TCCamError(.invalidParameter_ResourceContentError)
    }

    /// 策略文档的Resource字段不合法。
    public static var invalidParameter_ResourceError: TCCamError {
        TCCamError(.invalidParameter_ResourceError)
    }

    /// 策略语法中资源项目不正确。
    public static var invalidParameter_ResourceProjectError: TCCamError {
        TCCamError(.invalidParameter_ResourceProjectError)
    }

    /// 资源QCS错误。
    public static var invalidParameter_ResourceQcsError: TCCamError {
        TCCamError(.invalidParameter_ResourceQcsError)
    }

    /// 策略语法中资源地域不正确。
    public static var invalidParameter_ResourceRegionError: TCCamError {
        TCCamError(.invalidParameter_ResourceRegionError)
    }

    /// 策略语法中资源服务不存在。
    public static var invalidParameter_ResourceServiceNotExist: TCCamError {
        TCCamError(.invalidParameter_ResourceServiceNotExist)
    }

    /// 策略语法中资源所属主账号不正确。
    public static var invalidParameter_ResourceUinError: TCCamError {
        TCCamError(.invalidParameter_ResourceUinError)
    }

    /// 角色数量达到上限。
    public static var invalidParameter_RoleFull: TCCamError {
        TCCamError(.invalidParameter_RoleFull)
    }

    /// 角色名不合法。
    public static var invalidParameter_RoleNameError: TCCamError {
        TCCamError(.invalidParameter_RoleNameError)
    }

    /// 相同名称的角色已存在。
    public static var invalidParameter_RoleNameInUse: TCCamError {
        TCCamError(.invalidParameter_RoleNameInUse)
    }

    /// 角色不存在。
    public static var invalidParameter_RoleNotExist: TCCamError {
        TCCamError(.invalidParameter_RoleNotExist)
    }

    /// Scope字段不合法。
    public static var invalidParameter_ScopeError: TCCamError {
        TCCamError(.invalidParameter_ScopeError)
    }

    /// 查询关键字长度错误。
    public static var invalidParameter_SearchKeywordLengthError: TCCamError {
        TCCamError(.invalidParameter_SearchKeywordLengthError)
    }

    /// 权限边界不能用服务相关策略。
    public static var invalidParameter_ServiceLinkedPolicyCantInPermissionBoundary: TCCamError {
        TCCamError(.invalidParameter_ServiceLinkedPolicyCantInPermissionBoundary)
    }

    /// 服务相关角色不能使用权限边界。
    public static var invalidParameter_ServiceLinkedRoleCantUsePermissionBoundary: TCCamError {
        TCCamError(.invalidParameter_ServiceLinkedRoleCantUsePermissionBoundary)
    }

    /// ServiceType字段不合法。
    public static var invalidParameter_ServiceTypeError: TCCamError {
        TCCamError(.invalidParameter_ServiceTypeError)
    }

    /// 策略文档的Statement字段不合法。
    public static var invalidParameter_StatementError: TCCamError {
        TCCamError(.invalidParameter_StatementError)
    }

    /// 子帐号数量达到上限。
    public static var invalidParameter_SubUserFull: TCCamError {
        TCCamError(.invalidParameter_SubUserFull)
    }

    /// 子用户名称重复。
    public static var invalidParameter_SubUserNameInUse: TCCamError {
        TCCamError(.invalidParameter_SubUserNameInUse)
    }

    /// 超出标签限制。
    public static var invalidParameter_TagLimitExceeded: TCCamError {
        TCCamError(.invalidParameter_TagLimitExceeded)
    }

    /// 标签参数错误。
    public static var invalidParameter_TagParamError: TCCamError {
        TCCamError(.invalidParameter_TagParamError)
    }

    /// Uin字段不合法。
    public static var invalidParameter_UinError: TCCamError {
        TCCamError(.invalidParameter_UinError)
    }

    /// 子用户加入的用户组数量达到上限。
    public static var invalidParameter_UserGroupFull: TCCamError {
        TCCamError(.invalidParameter_UserGroupFull)
    }

    /// 用户名不合法。
    public static var invalidParameter_UserNameIllegal: TCCamError {
        TCCamError(.invalidParameter_UserNameIllegal)
    }

    /// 用户对象不存在。
    public static var invalidParameter_UserNotExist: TCCamError {
        TCCamError(.invalidParameter_UserNotExist)
    }

    /// 用户的Uin和Uid不能都为空。
    public static var invalidParameter_UserUinAndUinNotAllNull: TCCamError {
        TCCamError(.invalidParameter_UserUinAndUinNotAllNull)
    }

    /// 策略文档的Version字段不合法。
    public static var invalidParameter_VersionError: TCCamError {
        TCCamError(.invalidParameter_VersionError)
    }

    /// 身份提供商已达到上限。
    public static var limitExceeded_IdentityFull: TCCamError {
        TCCamError(.limitExceeded_IdentityFull)
    }

    /// 每个账号最多支持两个AccessKey。
    public static var operationDenied_AccessKeyOverLimit: TCCamError {
        TCCamError(.operationDenied_AccessKeyOverLimit)
    }

    /// 存在未删除的API密钥。
    public static var operationDenied_HaveKeys: TCCamError {
        TCCamError(.operationDenied_HaveKeys)
    }

    /// 子用户不允许操作主账号密钥。
    public static var operationDenied_SubUin: TCCamError {
        TCCamError(.operationDenied_SubUin)
    }

    /// 被操作密钥与账号不匹配。
    public static var operationDenied_UinNotMatch: TCCamError {
        TCCamError(.operationDenied_UinNotMatch)
    }

    /// 创建子用户频率超过限制。
    public static var requestLimitExceeded_CreateUser: TCCamError {
        TCCamError(.requestLimitExceeded_CreateUser)
    }

    /// 用户账号超出了限制。
    public static var requestLimitExceeded_UinLimitExceeded: TCCamError {
        TCCamError(.requestLimitExceeded_UinLimitExceeded)
    }

    /// 用户组不存在。
    public static var resourceNotFound_GroupNotExist: TCCamError {
        TCCamError(.resourceNotFound_GroupNotExist)
    }

    /// 身份提供商不存在。
    public static var resourceNotFound_IdentityNotExist: TCCamError {
        TCCamError(.resourceNotFound_IdentityNotExist)
    }

    /// 资源不存在。
    public static var resourceNotFound_NotFound: TCCamError {
        TCCamError(.resourceNotFound_NotFound)
    }

    /// PolicyId指定的资源不存在。
    public static var resourceNotFound_PolicyIdNotFound: TCCamError {
        TCCamError(.resourceNotFound_PolicyIdNotFound)
    }

    /// 密钥不存在。
    public static var resourceNotFound_SecretNotExist: TCCamError {
        TCCamError(.resourceNotFound_SecretNotExist)
    }

    /// 用户不存在。
    public static var resourceNotFound_UserNotExist: TCCamError {
        TCCamError(.resourceNotFound_UserNotExist)
    }

    /// 未授权操作。
    public static var unauthorizedOperation: TCCamError {
        TCCamError(.unauthorizedOperation)
    }

    /// 没有删除API密钥权限。
    public static var unauthorizedOperation_DeleteApiKey: TCCamError {
        TCCamError(.unauthorizedOperation_DeleteApiKey)
    }

    public func asCamError() -> TCCamError {
        return self
    }
}
