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

/// Service error type returned by `Organization`.
public protocol TCOrganizationErrorType: TCPlatformErrorType {
    /// Get the service error as ``TCOrganizationError``.
    ///
    /// - Returns: ``TCOrganizationError`` that holds the same error code and context.
    func asOrganizationError() -> TCOrganizationError
}

public struct TCOrganizationError: TCOrganizationErrorType {
    enum Code: String {
        case failedOperation_AuthInfoEmpty = "FailedOperation.AuthInfoEmpty"
        case failedOperation_AuthNotEnterprise = "FailedOperation.AuthNotEnterprise"
        case failedOperation_CreateAccount = "FailedOperation.CreateAccount"
        case failedOperation_CreateMemberAuthOverLimit = "FailedOperation.CreateMemberAuthOverLimit"
        case failedOperation_CreatePolicy = "FailedOperation.CreatePolicy"
        case failedOperation_CreateRecordAlreadySuccess = "FailedOperation.CreateRecordAlreadySuccess"
        case failedOperation_CreateRecordNotExist = "FailedOperation.CreateRecordNotExist"
        case failedOperation_CreateRole = "FailedOperation.CreateRole"
        case failedOperation_DisableQuitSelfCreatedOrganization = "FailedOperation.DisableQuitSelfCreatedOrganization"
        case failedOperation_GetAuthInfo = "FailedOperation.GetAuthInfo"
        case failedOperation_MemberExistDelegatePayerNotAllowDelete = "FailedOperation.MemberExistDelegatePayerNotAllowDelete"
        case failedOperation_MemberIsDelegatePayerNotAllowDelete = "FailedOperation.MemberIsDelegatePayerNotAllowDelete"
        case failedOperation_MemberNameUsed = "FailedOperation.MemberNameUsed"
        case failedOperation_MemberPolicyNameExist = "FailedOperation.MemberPolicyNameExist"
        case failedOperation_MemberShareResource = "FailedOperation.MemberShareResource"
        case failedOperation_NodeNotEmpty = "FailedOperation.NodeNotEmpty"
        case failedOperation_OperateBillingPermissionErr = "FailedOperation.OperateBillingPermissionErr"
        case failedOperation_OperatePolicy = "FailedOperation.OperatePolicy"
        case failedOperation_OrganizationAuthManageNotAllowDelete = "FailedOperation.OrganizationAuthManageNotAllowDelete"
        case failedOperation_OrganizationMemberNameUsed = "FailedOperation.OrganizationMemberNameUsed"
        case failedOperation_OrganizationNodeDeleteOverLimit = "FailedOperation.OrganizationNodeDeleteOverLimit"
        case failedOperation_OrganizationNodeNameUsed = "FailedOperation.OrganizationNodeNameUsed"
        case failedOperation_OrganizationNodeNotEmpty = "FailedOperation.OrganizationNodeNotEmpty"
        case failedOperation_OrganizationNodeNotExist = "FailedOperation.OrganizationNodeNotExist"
        case failedOperation_OrganizationPermissionIllegal = "FailedOperation.OrganizationPermissionIllegal"
        case failedOperation_OrganizationPolicyIllegal = "FailedOperation.OrganizationPolicyIllegal"
        case failedOperation_PayUinIllegal = "FailedOperation.PayUinIllegal"
        case failedOperation_QuitShareUintError = "FailedOperation.QuitShareUintError"
        case failedOperation_ShareResourceMemberInUse = "FailedOperation.ShareResourceMemberInUse"
        case failedOperation_SomeUinsNotInOrganization = "FailedOperation.SomeUinsNotInOrganization"
        case failedOperation_SubAccountIdentityExist = "FailedOperation.SubAccountIdentityExist"
        case failedOperation_SubAccountNotExist = "FailedOperation.SubAccountNotExist"
        case internalError = "InternalError"
        case invalidParameter = "InvalidParameter"
        case limitExceeded_CreateMemberOverLimit = "LimitExceeded.CreateMemberOverLimit"
        case limitExceeded_NodeDepthExceedLimit = "LimitExceeded.NodeDepthExceedLimit"
        case limitExceeded_NodeExceedLimit = "LimitExceeded.NodeExceedLimit"
        case limitExceeded_OrganizationMemberOverLimit = "LimitExceeded.OrganizationMemberOverLimit"
        case resourceNotFound_MemberIdentityNotExist = "ResourceNotFound.MemberIdentityNotExist"
        case resourceNotFound_MemberNotExist = "ResourceNotFound.MemberNotExist"
        case resourceNotFound_MemberPolicyNotExist = "ResourceNotFound.MemberPolicyNotExist"
        case resourceNotFound_OrganizationMemberNotExist = "ResourceNotFound.OrganizationMemberNotExist"
        case resourceNotFound_OrganizationNodeNotExist = "ResourceNotFound.OrganizationNodeNotExist"
        case resourceNotFound_OrganizationNotExist = "ResourceNotFound.OrganizationNotExist"
        case resourceNotFound_OrganizationServiceNotExist = "ResourceNotFound.OrganizationServiceNotExist"
        case unsupportedOperation = "UnsupportedOperation"
        case unsupportedOperation_AddDelegatePayerNotAllow = "UnsupportedOperation.AddDelegatePayerNotAllow"
        case unsupportedOperation_AddDiscountInheritNotAllow = "UnsupportedOperation.AddDiscountInheritNotAllow"
        case unsupportedOperation_CreateMemberNotAllowDelete = "UnsupportedOperation.CreateMemberNotAllowDelete"
        case unsupportedOperation_InconsistentUserTypes = "UnsupportedOperation.InconsistentUserTypes"
        case unsupportedOperation_ManagementSystemError = "UnsupportedOperation.ManagementSystemError"
        case unsupportedOperation_MemberAccountArrears = "UnsupportedOperation.MemberAccountArrears"
        case unsupportedOperation_MemberDiscountInheritExisted = "UnsupportedOperation.MemberDiscountInheritExisted"
        case unsupportedOperation_MemberExistAccountLevelDiscountInherit = "UnsupportedOperation.MemberExistAccountLevelDiscountInherit"
        case unsupportedOperation_MemberExistOperateProcessNotAllowDelete = "UnsupportedOperation.MemberExistOperateProcessNotAllowDelete"
        case unsupportedOperation_MemberExistServiceNotAllowDelete = "UnsupportedOperation.MemberExistServiceNotAllowDelete"
        case unsupportedOperation_MemberIsAgent = "UnsupportedOperation.MemberIsAgent"
        case unsupportedOperation_OrderInProgressExisted = "UnsupportedOperation.OrderInProgressExisted"
        case unsupportedOperation_OwnerDiscountInheritExisted = "UnsupportedOperation.OwnerDiscountInheritExisted"
        case unsupportedOperation_PayerArrearsAndNoCreditAccount = "UnsupportedOperation.PayerArrearsAndNoCreditAccount"
        case unsupportedOperation_PayerExistAccountLevelDiscountInherit = "UnsupportedOperation.PayerExistAccountLevelDiscountInherit"
    }

    /// Error domains affliated to ``TCOrganizationError``.
    public static var domains: [TCErrorType.Type] {
        [FailedOperation.self, LimitExceeded.self, ResourceNotFound.self, UnsupportedOperation.self]
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

    /// 用户未实名。
    public static var failedOperation_AuthInfoEmpty: TCOrganizationError {
        TCOrganizationError(.failedOperation_AuthInfoEmpty)
    }

    /// 用户非企业实名。
    public static var failedOperation_AuthNotEnterprise: TCOrganizationError {
        TCOrganizationError(.failedOperation_AuthNotEnterprise)
    }

    /// 创建成员异常。
    public static var failedOperation_CreateAccount: TCOrganizationError {
        TCOrganizationError(.failedOperation_CreateAccount)
    }

    /// 账号实名认证超过上限。
    public static var failedOperation_CreateMemberAuthOverLimit: TCOrganizationError {
        TCOrganizationError(.failedOperation_CreateMemberAuthOverLimit)
    }

    /// 创建测试失败。
    public static var failedOperation_CreatePolicy: TCOrganizationError {
        TCOrganizationError(.failedOperation_CreatePolicy)
    }

    /// 创建已成功。
    public static var failedOperation_CreateRecordAlreadySuccess: TCOrganizationError {
        TCOrganizationError(.failedOperation_CreateRecordAlreadySuccess)
    }

    /// 创建记录不存在。
    public static var failedOperation_CreateRecordNotExist: TCOrganizationError {
        TCOrganizationError(.failedOperation_CreateRecordNotExist)
    }

    /// 创建角色异常。
    public static var failedOperation_CreateRole: TCOrganizationError {
        TCOrganizationError(.failedOperation_CreateRole)
    }

    /// 不能退出自己创业的企业组织。
    public static var failedOperation_DisableQuitSelfCreatedOrganization: TCOrganizationError {
        TCOrganizationError(.failedOperation_DisableQuitSelfCreatedOrganization)
    }

    /// 查询实名信息出错。
    public static var failedOperation_GetAuthInfo: TCOrganizationError {
        TCOrganizationError(.failedOperation_GetAuthInfo)
    }

    /// 成员存在代付者,不允许删除。
    public static var failedOperation_MemberExistDelegatePayerNotAllowDelete: TCOrganizationError {
        TCOrganizationError(.failedOperation_MemberExistDelegatePayerNotAllowDelete)
    }

    /// 成员是代付者，不允许删除。
    public static var failedOperation_MemberIsDelegatePayerNotAllowDelete: TCOrganizationError {
        TCOrganizationError(.failedOperation_MemberIsDelegatePayerNotAllowDelete)
    }

    /// 名字已经被使用。
    public static var failedOperation_MemberNameUsed: TCOrganizationError {
        TCOrganizationError(.failedOperation_MemberNameUsed)
    }

    /// 成员授权策略名已存在。
    public static var failedOperation_MemberPolicyNameExist: TCOrganizationError {
        TCOrganizationError(.failedOperation_MemberPolicyNameExist)
    }

    /// 成员正在共享资源。
    public static var failedOperation_MemberShareResource: TCOrganizationError {
        TCOrganizationError(.failedOperation_MemberShareResource)
    }

    /// 企业组织单元成员不为空。
    public static var failedOperation_NodeNotEmpty: TCOrganizationError {
        TCOrganizationError(.failedOperation_NodeNotEmpty)
    }

    /// 操作计费侧成员权限错误。
    public static var failedOperation_OperateBillingPermissionErr: TCOrganizationError {
        TCOrganizationError(.failedOperation_OperateBillingPermissionErr)
    }

    /// 操作策略失败。
    public static var failedOperation_OperatePolicy: TCOrganizationError {
        TCOrganizationError(.failedOperation_OperatePolicy)
    }

    /// 成员是主体管理账号不允许删除。
    public static var failedOperation_OrganizationAuthManageNotAllowDelete: TCOrganizationError {
        TCOrganizationError(.failedOperation_OrganizationAuthManageNotAllowDelete)
    }

    /// 成员名已存在。
    public static var failedOperation_OrganizationMemberNameUsed: TCOrganizationError {
        TCOrganizationError(.failedOperation_OrganizationMemberNameUsed)
    }

    /// 删除节点超过上限。
    public static var failedOperation_OrganizationNodeDeleteOverLimit: TCOrganizationError {
        TCOrganizationError(.failedOperation_OrganizationNodeDeleteOverLimit)
    }

    /// 节点名已存在。
    public static var failedOperation_OrganizationNodeNameUsed: TCOrganizationError {
        TCOrganizationError(.failedOperation_OrganizationNodeNameUsed)
    }

    /// 组织节点不为空。
    public static var failedOperation_OrganizationNodeNotEmpty: TCOrganizationError {
        TCOrganizationError(.failedOperation_OrganizationNodeNotEmpty)
    }

    /// 组织节点不存在。
    public static var failedOperation_OrganizationNodeNotExist: TCOrganizationError {
        TCOrganizationError(.failedOperation_OrganizationNodeNotExist)
    }

    /// 组织权限不合法。
    public static var failedOperation_OrganizationPermissionIllegal: TCOrganizationError {
        TCOrganizationError(.failedOperation_OrganizationPermissionIllegal)
    }

    /// 组织策略不合法。
    public static var failedOperation_OrganizationPolicyIllegal: TCOrganizationError {
        TCOrganizationError(.failedOperation_OrganizationPolicyIllegal)
    }

    /// 代付者不合法。
    public static var failedOperation_PayUinIllegal: TCOrganizationError {
        TCOrganizationError(.failedOperation_PayUinIllegal)
    }

    /// 退出共享单元错误。
    public static var failedOperation_QuitShareUintError: TCOrganizationError {
        TCOrganizationError(.failedOperation_QuitShareUintError)
    }

    /// 成员正在使用共享资源。
    public static var failedOperation_ShareResourceMemberInUse: TCOrganizationError {
        TCOrganizationError(.failedOperation_ShareResourceMemberInUse)
    }

    /// 存在不属于当前组织的uin。
    public static var failedOperation_SomeUinsNotInOrganization: TCOrganizationError {
        TCOrganizationError(.failedOperation_SomeUinsNotInOrganization)
    }

    /// 子账号存在身份。
    public static var failedOperation_SubAccountIdentityExist: TCOrganizationError {
        TCOrganizationError(.failedOperation_SubAccountIdentityExist)
    }

    /// 子账号不存在。
    public static var failedOperation_SubAccountNotExist: TCOrganizationError {
        TCOrganizationError(.failedOperation_SubAccountNotExist)
    }

    /// 内部错误。
    public static var internalError: TCOrganizationError {
        TCOrganizationError(.internalError)
    }

    /// 参数错误。
    public static var invalidParameter: TCOrganizationError {
        TCOrganizationError(.invalidParameter)
    }

    /// 创建成员超过上限。
    public static var limitExceeded_CreateMemberOverLimit: TCOrganizationError {
        TCOrganizationError(.limitExceeded_CreateMemberOverLimit)
    }

    /// 企业组织单元层级太多。
    public static var limitExceeded_NodeDepthExceedLimit: TCOrganizationError {
        TCOrganizationError(.limitExceeded_NodeDepthExceedLimit)
    }

    /// 组织单元数量超过上限。
    public static var limitExceeded_NodeExceedLimit: TCOrganizationError {
        TCOrganizationError(.limitExceeded_NodeExceedLimit)
    }

    /// 成员超过上限。
    public static var limitExceeded_OrganizationMemberOverLimit: TCOrganizationError {
        TCOrganizationError(.limitExceeded_OrganizationMemberOverLimit)
    }

    /// 成员可授权身份不存在。
    public static var resourceNotFound_MemberIdentityNotExist: TCOrganizationError {
        TCOrganizationError(.resourceNotFound_MemberIdentityNotExist)
    }

    /// 成员不存在。
    public static var resourceNotFound_MemberNotExist: TCOrganizationError {
        TCOrganizationError(.resourceNotFound_MemberNotExist)
    }

    /// 组织成员策略不存在。
    public static var resourceNotFound_MemberPolicyNotExist: TCOrganizationError {
        TCOrganizationError(.resourceNotFound_MemberPolicyNotExist)
    }

    /// 组织成员不存在。
    public static var resourceNotFound_OrganizationMemberNotExist: TCOrganizationError {
        TCOrganizationError(.resourceNotFound_OrganizationMemberNotExist)
    }

    /// 组织节点不在。
    public static var resourceNotFound_OrganizationNodeNotExist: TCOrganizationError {
        TCOrganizationError(.resourceNotFound_OrganizationNodeNotExist)
    }

    /// 企业组织不存在。
    public static var resourceNotFound_OrganizationNotExist: TCOrganizationError {
        TCOrganizationError(.resourceNotFound_OrganizationNotExist)
    }

    /// 集团服务不存在。
    public static var resourceNotFound_OrganizationServiceNotExist: TCOrganizationError {
        TCOrganizationError(.resourceNotFound_OrganizationServiceNotExist)
    }

    /// 操作不支持。
    public static var unsupportedOperation: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation)
    }

    /// 不允许添加代付关系。
    public static var unsupportedOperation_AddDelegatePayerNotAllow: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_AddDelegatePayerNotAllow)
    }

    /// 不允许添加优惠继承关系。
    public static var unsupportedOperation_AddDiscountInheritNotAllow: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_AddDiscountInheritNotAllow)
    }

    /// 创建的成员不允许删除。
    public static var unsupportedOperation_CreateMemberNotAllowDelete: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_CreateMemberNotAllowDelete)
    }

    /// 用户类型不一致。
    public static var unsupportedOperation_InconsistentUserTypes: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_InconsistentUserTypes)
    }

    /// 调用经管系统报错。
    public static var unsupportedOperation_ManagementSystemError: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_ManagementSystemError)
    }

    /// 成员账户欠费。
    public static var unsupportedOperation_MemberAccountArrears: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_MemberAccountArrears)
    }

    /// 成员存在优惠继承。
    public static var unsupportedOperation_MemberDiscountInheritExisted: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_MemberDiscountInheritExisted)
    }

    /// 成员存在账户级优惠。
    public static var unsupportedOperation_MemberExistAccountLevelDiscountInherit: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_MemberExistAccountLevelDiscountInherit)
    }

    public static var unsupportedOperation_MemberExistOperateProcessNotAllowDelete: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_MemberExistOperateProcessNotAllowDelete)
    }

    /// 组织成员被委派集团服务，不允许退出。
    public static var unsupportedOperation_MemberExistServiceNotAllowDelete: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_MemberExistServiceNotAllowDelete)
    }

    /// 成员是代理商或代客。
    public static var unsupportedOperation_MemberIsAgent: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_MemberIsAgent)
    }

    /// 存在在途订单。
    public static var unsupportedOperation_OrderInProgressExisted: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_OrderInProgressExisted)
    }

    /// 管理员存在优惠继承。
    public static var unsupportedOperation_OwnerDiscountInheritExisted: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_OwnerDiscountInheritExisted)
    }

    /// 代付者欠费且未开通信用账户。
    public static var unsupportedOperation_PayerArrearsAndNoCreditAccount: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_PayerArrearsAndNoCreditAccount)
    }

    /// 代付者存在账户级优惠。
    public static var unsupportedOperation_PayerExistAccountLevelDiscountInherit: TCOrganizationError {
        TCOrganizationError(.unsupportedOperation_PayerExistAccountLevelDiscountInherit)
    }

    public func asOrganizationError() -> TCOrganizationError {
        return self
    }
}
