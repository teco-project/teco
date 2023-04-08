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

extension TCDcdbError {
    public struct FailedOperation: TCDcdbErrorType {
        enum Code: String {
            case addInstanceInfoFailed = "FailedOperation.AddInstanceInfoFailed"
            case applyVipFailed = "FailedOperation.ApplyVipFailed"
            case associateSecurityGroupsFailed = "FailedOperation.AssociateSecurityGroupsFailed"
            case authNoStrategy = "FailedOperation.AuthNoStrategy"
            case clearInstanceInfoFailed = "FailedOperation.ClearInstanceInfoFailed"
            case copyRightError = "FailedOperation.CopyRightError"
            case createFlowFailed = "FailedOperation.CreateFlowFailed"
            case createOrderFailed = "FailedOperation.CreateOrderFailed"
            case createUserFailed = "FailedOperation.CreateUserFailed"
            case deleteUserFailed = "FailedOperation.DeleteUserFailed"
            case disassociateSecurityGroupsFailed = "FailedOperation.DisassociateSecurityGroupsFailed"
            case getSecurityGroupDetailFailed = "FailedOperation.GetSecurityGroupDetailFailed"
            case modifyRightFailed = "FailedOperation.ModifyRightFailed"
            case msgQueueOperationFailed = "FailedOperation.MsgQueueOperationFailed"
            case ossIsolateInstanceFailed = "FailedOperation.OssIsolateInstanceFailed"
            case ossOperationFailed = "FailedOperation.OssOperationFailed"
            case payFailed = "FailedOperation.PayFailed"
            case resetPasswordFailed = "FailedOperation.ResetPasswordFailed"
            case setRuleLocationFailed = "FailedOperation.SetRuleLocationFailed"
            case setSvcLocationFailed = "FailedOperation.SetSvcLocationFailed"
            case sgChangeVip = "FailedOperation.SGChangeVip"
            case tagDryRunError = "FailedOperation.TagDryRunError"
            case updateInstanceInfoFailed = "FailedOperation.UpdateInstanceInfoFailed"
            case userNotAuthed = "FailedOperation.UserNotAuthed"
            case vipNotChange = "FailedOperation.VipNotChange"
            case vpcAddServiceFailed = "FailedOperation.VpcAddServiceFailed"
            case vpcUpdateRouteFailed = "FailedOperation.VpcUpdateRouteFailed"
            case wanStatusAbnormal = "FailedOperation.WanStatusAbnormal"
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

        /// 实例安全组信息添加失败。
        public static var addInstanceInfoFailed: FailedOperation {
            FailedOperation(.addInstanceInfoFailed)
        }

        /// 申请VIP失败。
        public static var applyVipFailed: FailedOperation {
            FailedOperation(.applyVipFailed)
        }

        /// 绑定安全组失败。
        public static var associateSecurityGroupsFailed: FailedOperation {
            FailedOperation(.associateSecurityGroupsFailed)
        }

        /// 鉴权失败。
        public static var authNoStrategy: FailedOperation {
            FailedOperation(.authNoStrategy)
        }

        /// 实例安全组信息清除失败。
        public static var clearInstanceInfoFailed: FailedOperation {
            FailedOperation(.clearInstanceInfoFailed)
        }

        /// 复制账号权限出错。
        public static var copyRightError: FailedOperation {
            FailedOperation(.copyRightError)
        }

        /// 创建流程失败。
        public static var createFlowFailed: FailedOperation {
            FailedOperation(.createFlowFailed)
        }

        /// 创建订单失败。
        public static var createOrderFailed: FailedOperation {
            FailedOperation(.createOrderFailed)
        }

        /// 创建账号失败。
        public static var createUserFailed: FailedOperation {
            FailedOperation(.createUserFailed)
        }

        /// 删除账号失败。
        public static var deleteUserFailed: FailedOperation {
            FailedOperation(.deleteUserFailed)
        }

        /// 解绑安全组失败。
        public static var disassociateSecurityGroupsFailed: FailedOperation {
            FailedOperation(.disassociateSecurityGroupsFailed)
        }

        /// 拉取安全组详情失败。
        public static var getSecurityGroupDetailFailed: FailedOperation {
            FailedOperation(.getSecurityGroupDetailFailed)
        }

        /// 修改账号权限失败。
        public static var modifyRightFailed: FailedOperation {
            FailedOperation(.modifyRightFailed)
        }

        /// 消息队列操作失败。
        public static var msgQueueOperationFailed: FailedOperation {
            FailedOperation(.msgQueueOperationFailed)
        }

        /// 隔离实例失败。
        public static var ossIsolateInstanceFailed: FailedOperation {
            FailedOperation(.ossIsolateInstanceFailed)
        }

        /// 请求后端接口失败。
        public static var ossOperationFailed: FailedOperation {
            FailedOperation(.ossOperationFailed)
        }

        /// 支付订单失败。
        public static var payFailed: FailedOperation {
            FailedOperation(.payFailed)
        }

        /// 重置账号密码失败。
        public static var resetPasswordFailed: FailedOperation {
            FailedOperation(.resetPasswordFailed)
        }

        /// 设置规则失败。
        public static var setRuleLocationFailed: FailedOperation {
            FailedOperation(.setRuleLocationFailed)
        }

        /// 安全组规则下发失败。
        public static var setSvcLocationFailed: FailedOperation {
            FailedOperation(.setSvcLocationFailed)
        }

        /// 更新安全组失败。
        public static var sgChangeVip: FailedOperation {
            FailedOperation(.sgChangeVip)
        }

        /// 标签键值校验或鉴权失败。
        public static var tagDryRunError: FailedOperation {
            FailedOperation(.tagDryRunError)
        }

        /// 实例安全组信息更新失败。
        public static var updateInstanceInfoFailed: FailedOperation {
            FailedOperation(.updateInstanceInfoFailed)
        }

        /// 用户未实名认证。
        public static var userNotAuthed: FailedOperation {
            FailedOperation(.userNotAuthed)
        }

        /// VIP不能与之前一样。
        public static var vipNotChange: FailedOperation {
            FailedOperation(.vipNotChange)
        }

        /// VPC添加服务失败。
        public static var vpcAddServiceFailed: FailedOperation {
            FailedOperation(.vpcAddServiceFailed)
        }

        /// VPC更新路由失败。
        public static var vpcUpdateRouteFailed: FailedOperation {
            FailedOperation(.vpcUpdateRouteFailed)
        }

        /// 外网状态异常。
        public static var wanStatusAbnormal: FailedOperation {
            FailedOperation(.wanStatusAbnormal)
        }

        public func asDcdbError() -> TCDcdbError {
            let code: TCDcdbError.Code
            switch self.error {
            case .addInstanceInfoFailed:
                code = .failedOperation_AddInstanceInfoFailed
            case .applyVipFailed:
                code = .failedOperation_ApplyVipFailed
            case .associateSecurityGroupsFailed:
                code = .failedOperation_AssociateSecurityGroupsFailed
            case .authNoStrategy:
                code = .failedOperation_AuthNoStrategy
            case .clearInstanceInfoFailed:
                code = .failedOperation_ClearInstanceInfoFailed
            case .copyRightError:
                code = .failedOperation_CopyRightError
            case .createFlowFailed:
                code = .failedOperation_CreateFlowFailed
            case .createOrderFailed:
                code = .failedOperation_CreateOrderFailed
            case .createUserFailed:
                code = .failedOperation_CreateUserFailed
            case .deleteUserFailed:
                code = .failedOperation_DeleteUserFailed
            case .disassociateSecurityGroupsFailed:
                code = .failedOperation_DisassociateSecurityGroupsFailed
            case .getSecurityGroupDetailFailed:
                code = .failedOperation_GetSecurityGroupDetailFailed
            case .modifyRightFailed:
                code = .failedOperation_ModifyRightFailed
            case .msgQueueOperationFailed:
                code = .failedOperation_MsgQueueOperationFailed
            case .ossIsolateInstanceFailed:
                code = .failedOperation_OssIsolateInstanceFailed
            case .ossOperationFailed:
                code = .failedOperation_OssOperationFailed
            case .payFailed:
                code = .failedOperation_PayFailed
            case .resetPasswordFailed:
                code = .failedOperation_ResetPasswordFailed
            case .setRuleLocationFailed:
                code = .failedOperation_SetRuleLocationFailed
            case .setSvcLocationFailed:
                code = .failedOperation_SetSvcLocationFailed
            case .sgChangeVip:
                code = .failedOperation_SGChangeVip
            case .tagDryRunError:
                code = .failedOperation_TagDryRunError
            case .updateInstanceInfoFailed:
                code = .failedOperation_UpdateInstanceInfoFailed
            case .userNotAuthed:
                code = .failedOperation_UserNotAuthed
            case .vipNotChange:
                code = .failedOperation_VipNotChange
            case .vpcAddServiceFailed:
                code = .failedOperation_VpcAddServiceFailed
            case .vpcUpdateRouteFailed:
                code = .failedOperation_VpcUpdateRouteFailed
            case .wanStatusAbnormal:
                code = .failedOperation_WanStatusAbnormal
            }
            return TCDcdbError(code, context: self.context)
        }
    }
}
