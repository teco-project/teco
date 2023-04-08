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

extension TCPostgresError {
    public struct FailedOperation: TCPostgresErrorType {
        enum Code: String {
            case allocateQuotasError = "FailedOperation.AllocateQuotasError"
            case baseNetworkAccessError = "FailedOperation.BaseNetworkAccessError"
            case camAuthFailed = "FailedOperation.CamAuthFailed"
            case camCheckResourceError = "FailedOperation.CamCheckResourceError"
            case camCheckResourceFailed = "FailedOperation.CamCheckResourceFailed"
            case camSigAndAuthError = "FailedOperation.CamSigAndAuthError"
            case cdbCgwConnectError = "FailedOperation.CdbCgwConnectError"
            case cmqResponseError = "FailedOperation.CMQResponseError"
            case createBasicNetworkDeniedError = "FailedOperation.CreateBasicNetworkDeniedError"
            case createOrderFailed = "FailedOperation.CreateOrderFailed"
            case databaseAccessError = "FailedOperation.DatabaseAccessError"
            case databaseAffectedError = "FailedOperation.DatabaseAffectedError"
            case deleteAllRoute = "FailedOperation.DeleteAllRoute"
            case deleteResourceProjectTagError = "FailedOperation.DeleteResourceProjectTagError"
            case deleteResourcesToTagError = "FailedOperation.DeleteResourcesToTagError"
            case esConnectError = "FailedOperation.ESConnectError"
            case esQueryError = "FailedOperation.ESQueryError"
            case failedOperationError = "FailedOperation.FailedOperationError"
            case flowCreateError = "FailedOperation.FlowCreateError"
            case getInstanceByResourceIdError = "FailedOperation.GetInstanceByResourceIdError"
            case getPurchaseRecordFailed = "FailedOperation.GetPurchaseRecordFailed"
            case getSubnetError = "FailedOperation.GetSubnetError"
            case getVpcInfoError = "FailedOperation.GetVpcInfoError"
            case illegalROInstanceNum = "FailedOperation.IllegalROInstanceNum"
            case invalidAccountStatus = "FailedOperation.InvalidAccountStatus"
            case invalidTradeOperate = "FailedOperation.InvalidTradeOperate"
            case limitOperation = "FailedOperation.LimitOperation"
            case masterInstanceQueryError = "FailedOperation.MasterInstanceQueryError"
            case modifyROGroupError = "FailedOperation.ModifyROGroupError"
            case networkNumLimitError = "FailedOperation.NetworkNumLimitError"
            case operateFrequencyLimitedError = "FailedOperation.OperateFrequencyLimitedError"
            case ossAccessError = "FailedOperation.OssAccessError"
            case ossOperationFailed = "FailedOperation.OssOperationFailed"
            case payOrderFailed = "FailedOperation.PayOrderFailed"
            case postPaidUnblockError = "FailedOperation.PostPaidUnblockError"
            case presignedURLGetError = "FailedOperation.PresignedURLGetError"
            case queryDealFailed = "FailedOperation.QueryDealFailed"
            case queryInstanceBatchError = "FailedOperation.QueryInstanceBatchError"
            case queryPriceFailed = "FailedOperation.QueryPriceFailed"
            case querySpecBySpecCodeError = "FailedOperation.QuerySpecBySpecCodeError"
            case querySpecError = "FailedOperation.QuerySpecError"
            case queryTradeStatusError = "FailedOperation.QueryTradeStatusError"
            case queryVpcFailed = "FailedOperation.QueryVpcFailed"
            case queryVpcFalied = "FailedOperation.QueryVpcFalied"
            case roGroupCannotBeDeletedError = "FailedOperation.ROGroupCannotBeDeletedError"
            case roGroupMasterInstanceNotRight = "FailedOperation.ROGroupMasterInstanceNotRight"
            case roGroupNotFoundError = "FailedOperation.ROGroupNotFoundError"
            case roGroupNumExceedError = "FailedOperation.ROGroupNumExceedError"
            case roInstanceHasInROGroupError = "FailedOperation.ROInstanceHasInROGroupError"
            case serverlessNotSupportedError = "FailedOperation.ServerlessNotSupportedError"
            case serviceAccessError = "FailedOperation.ServiceAccessError"
            case setAutoRenewFlagError = "FailedOperation.SetAutoRenewFlagError"
            case storageMemoryCheckError = "FailedOperation.StorageMemoryCheckError"
            case storePathSplitError = "FailedOperation.StorePathSplitError"
            case tradeAccessError = "FailedOperation.TradeAccessError"
            case tradeCreateError = "FailedOperation.TradeCreateError"
            case tradePayOrdersError = "FailedOperation.TradePayOrdersError"
            case tradeQueryOrderError = "FailedOperation.TradeQueryOrderError"
            case tradeQueryPriceError = "FailedOperation.TradeQueryPriceError"
            case updateResourceProjectTagValueError = "FailedOperation.UpdateResourceProjectTagValueError"
            case vpcResetServiceError = "FailedOperation.VPCResetServiceError"
            case vpcUpdateRouteError = "FailedOperation.VPCUpdateRouteError"
            case whitelistConnectError = "FailedOperation.WhitelistConnectError"
            case other = "FailedOperation"
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

        /// 申请资源标签的配额失败。
        ///
        /// 请前往标签控制台添加配额，如果持续不成功，请联系客服进行处理。
        public static var allocateQuotasError: FailedOperation {
            FailedOperation(.allocateQuotasError)
        }

        /// 访问基础网络服务失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var baseNetworkAccessError: FailedOperation {
            FailedOperation(.baseNetworkAccessError)
        }

        /// CAM鉴权失败。
        public static var camAuthFailed: FailedOperation {
            FailedOperation(.camAuthFailed)
        }

        /// 获取权限失败，请稍后重试。如果持续不成功，请联系客服进行处理。。
        public static var camCheckResourceError: FailedOperation {
            FailedOperation(.camCheckResourceError)
        }

        /// CAM资源检查失败。
        public static var camCheckResourceFailed: FailedOperation {
            FailedOperation(.camCheckResourceFailed)
        }

        /// 鉴权失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var camSigAndAuthError: FailedOperation {
            FailedOperation(.camSigAndAuthError)
        }

        /// 获取项目信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var cdbCgwConnectError: FailedOperation {
            FailedOperation(.cdbCgwConnectError)
        }

        /// 访问CMQ失败。
        public static var cmqResponseError: FailedOperation {
            FailedOperation(.cmqResponseError)
        }

        /// 不支持新增基础网络。
        public static var createBasicNetworkDeniedError: FailedOperation {
            FailedOperation(.createBasicNetworkDeniedError)
        }

        /// 创建续费订单失败。
        public static var createOrderFailed: FailedOperation {
            FailedOperation(.createOrderFailed)
        }

        /// 管控元数据库访问失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var databaseAccessError: FailedOperation {
            FailedOperation(.databaseAccessError)
        }

        /// 数据操作失败，请联系客服进行处理。
        public static var databaseAffectedError: FailedOperation {
            FailedOperation(.databaseAffectedError)
        }

        /// VPC删除路由失败。
        public static var deleteAllRoute: FailedOperation {
            FailedOperation(.deleteAllRoute)
        }

        /// 资源解绑项目失败。
        public static var deleteResourceProjectTagError: FailedOperation {
            FailedOperation(.deleteResourceProjectTagError)
        }

        /// 资源解绑标签失败。
        public static var deleteResourcesToTagError: FailedOperation {
            FailedOperation(.deleteResourcesToTagError)
        }

        /// ES访问失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var esConnectError: FailedOperation {
            FailedOperation(.esConnectError)
        }

        /// ES查询失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var esQueryError: FailedOperation {
            FailedOperation(.esQueryError)
        }

        /// 操作失败，请稍后重试。
        public static var failedOperationError: FailedOperation {
            FailedOperation(.failedOperationError)
        }

        /// 创建流程失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var flowCreateError: FailedOperation {
            FailedOperation(.flowCreateError)
        }

        /// 查询实例信息失败，请稍后重试。
        public static var getInstanceByResourceIdError: FailedOperation {
            FailedOperation(.getInstanceByResourceIdError)
        }

        /// 获取购买记录失败。
        public static var getPurchaseRecordFailed: FailedOperation {
            FailedOperation(.getPurchaseRecordFailed)
        }

        /// 获取VPC子网失败。
        public static var getSubnetError: FailedOperation {
            FailedOperation(.getSubnetError)
        }

        /// 获取VPC信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var getVpcInfoError: FailedOperation {
            FailedOperation(.getVpcInfoError)
        }

        /// 只读实例数目非法。
        public static var illegalROInstanceNum: FailedOperation {
            FailedOperation(.illegalROInstanceNum)
        }

        /// 当前账号状态不正确，不允许操作。
        public static var invalidAccountStatus: FailedOperation {
            FailedOperation(.invalidAccountStatus)
        }

        /// 计费相关错误，不允许对当前实例进行对应的新购/续费/配置变更操作。
        public static var invalidTradeOperate: FailedOperation {
            FailedOperation(.invalidTradeOperate)
        }

        /// 实例被限制操作。
        public static var limitOperation: FailedOperation {
            FailedOperation(.limitOperation)
        }

        /// 查询主实例信息失败。
        public static var masterInstanceQueryError: FailedOperation {
            FailedOperation(.masterInstanceQueryError)
        }

        /// 修改只读组配置失败。
        public static var modifyROGroupError: FailedOperation {
            FailedOperation(.modifyROGroupError)
        }

        /// 不符合资源所拥有的网络数量要求。
        public static var networkNumLimitError: FailedOperation {
            FailedOperation(.networkNumLimitError)
        }

        /// 操作超过频率限制，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var operateFrequencyLimitedError: FailedOperation {
            FailedOperation(.operateFrequencyLimitedError)
        }

        /// 访问管控服务失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var ossAccessError: FailedOperation {
            FailedOperation(.ossAccessError)
        }

        /// 请求后端接口失败。
        public static var ossOperationFailed: FailedOperation {
            FailedOperation(.ossOperationFailed)
        }

        /// 支付订单失败。
        public static var payOrderFailed: FailedOperation {
            FailedOperation(.payOrderFailed)
        }

        /// 按量计费实例账户解冻结失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var postPaidUnblockError: FailedOperation {
            FailedOperation(.postPaidUnblockError)
        }

        /// 获取预签名授权URL错误。
        public static var presignedURLGetError: FailedOperation {
            FailedOperation(.presignedURLGetError)
        }

        /// 查询订单信息失败。
        public static var queryDealFailed: FailedOperation {
            FailedOperation(.queryDealFailed)
        }

        /// 批量获取实例信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var queryInstanceBatchError: FailedOperation {
            FailedOperation(.queryInstanceBatchError)
        }

        /// 查询价格失败。
        public static var queryPriceFailed: FailedOperation {
            FailedOperation(.queryPriceFailed)
        }

        /// 查询规格信息失败。
        public static var querySpecBySpecCodeError: FailedOperation {
            FailedOperation(.querySpecBySpecCodeError)
        }

        /// 查询规格信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var querySpecError: FailedOperation {
            FailedOperation(.querySpecError)
        }

        /// 查询订单交易状态失败。
        public static var queryTradeStatusError: FailedOperation {
            FailedOperation(.queryTradeStatusError)
        }

        /// 查询VPC失败。
        public static var queryVpcFailed: FailedOperation {
            FailedOperation(.queryVpcFailed)
        }

        /// 获取VPC详情失败。
        public static var queryVpcFalied: FailedOperation {
            FailedOperation(.queryVpcFalied)
        }

        /// 只读组还有实例，该只读组不允许删除。
        public static var roGroupCannotBeDeletedError: FailedOperation {
            FailedOperation(.roGroupCannotBeDeletedError)
        }

        /// 只读组主实例信息不匹配。
        public static var roGroupMasterInstanceNotRight: FailedOperation {
            FailedOperation(.roGroupMasterInstanceNotRight)
        }

        /// 只读组不存在。
        public static var roGroupNotFoundError: FailedOperation {
            FailedOperation(.roGroupNotFoundError)
        }

        /// 只读组数量已经达到上限值。
        public static var roGroupNumExceedError: FailedOperation {
            FailedOperation(.roGroupNumExceedError)
        }

        /// 只读实例已在其他只读组。
        public static var roInstanceHasInROGroupError: FailedOperation {
            FailedOperation(.roInstanceHasInROGroupError)
        }

        /// Serverless实例不支持此操作。
        public static var serverlessNotSupportedError: FailedOperation {
            FailedOperation(.serverlessNotSupportedError)
        }

        /// 访问内部服务失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var serviceAccessError: FailedOperation {
            FailedOperation(.serviceAccessError)
        }

        /// 设置自动续费标记失败。
        public static var setAutoRenewFlagError: FailedOperation {
            FailedOperation(.setAutoRenewFlagError)
        }

        /// 实例升配时，存储或内存需要高于原实例规格。
        public static var storageMemoryCheckError: FailedOperation {
            FailedOperation(.storageMemoryCheckError)
        }

        /// 存储路径格式不正确。
        public static var storePathSplitError: FailedOperation {
            FailedOperation(.storePathSplitError)
        }

        /// 访问计费平台失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var tradeAccessError: FailedOperation {
            FailedOperation(.tradeAccessError)
        }

        /// 请求计费平台创建订单失败。
        public static var tradeCreateError: FailedOperation {
            FailedOperation(.tradeCreateError)
        }

        /// 请求支付订单失败。
        public static var tradePayOrdersError: FailedOperation {
            FailedOperation(.tradePayOrdersError)
        }

        /// 查询订单信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var tradeQueryOrderError: FailedOperation {
            FailedOperation(.tradeQueryOrderError)
        }

        /// 获取价格信息失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var tradeQueryPriceError: FailedOperation {
            FailedOperation(.tradeQueryPriceError)
        }

        /// 资源修改标签失败。
        public static var updateResourceProjectTagValueError: FailedOperation {
            FailedOperation(.updateResourceProjectTagValueError)
        }

        /// VPC设置失败。
        public static var vpcResetServiceError: FailedOperation {
            FailedOperation(.vpcResetServiceError)
        }

        /// VPC更新路由失败。
        public static var vpcUpdateRouteError: FailedOperation {
            FailedOperation(.vpcUpdateRouteError)
        }

        /// 查询白名单失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var whitelistConnectError: FailedOperation {
            FailedOperation(.whitelistConnectError)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asPostgresError() -> TCPostgresError {
            let code: TCPostgresError.Code
            switch self.error {
            case .allocateQuotasError:
                code = .failedOperation_AllocateQuotasError
            case .baseNetworkAccessError:
                code = .failedOperation_BaseNetworkAccessError
            case .camAuthFailed:
                code = .failedOperation_CamAuthFailed
            case .camCheckResourceError:
                code = .failedOperation_CamCheckResourceError
            case .camCheckResourceFailed:
                code = .failedOperation_CamCheckResourceFailed
            case .camSigAndAuthError:
                code = .failedOperation_CamSigAndAuthError
            case .cdbCgwConnectError:
                code = .failedOperation_CdbCgwConnectError
            case .cmqResponseError:
                code = .failedOperation_CMQResponseError
            case .createBasicNetworkDeniedError:
                code = .failedOperation_CreateBasicNetworkDeniedError
            case .createOrderFailed:
                code = .failedOperation_CreateOrderFailed
            case .databaseAccessError:
                code = .failedOperation_DatabaseAccessError
            case .databaseAffectedError:
                code = .failedOperation_DatabaseAffectedError
            case .deleteAllRoute:
                code = .failedOperation_DeleteAllRoute
            case .deleteResourceProjectTagError:
                code = .failedOperation_DeleteResourceProjectTagError
            case .deleteResourcesToTagError:
                code = .failedOperation_DeleteResourcesToTagError
            case .esConnectError:
                code = .failedOperation_ESConnectError
            case .esQueryError:
                code = .failedOperation_ESQueryError
            case .failedOperationError:
                code = .failedOperation_FailedOperationError
            case .flowCreateError:
                code = .failedOperation_FlowCreateError
            case .getInstanceByResourceIdError:
                code = .failedOperation_GetInstanceByResourceIdError
            case .getPurchaseRecordFailed:
                code = .failedOperation_GetPurchaseRecordFailed
            case .getSubnetError:
                code = .failedOperation_GetSubnetError
            case .getVpcInfoError:
                code = .failedOperation_GetVpcInfoError
            case .illegalROInstanceNum:
                code = .failedOperation_IllegalROInstanceNum
            case .invalidAccountStatus:
                code = .failedOperation_InvalidAccountStatus
            case .invalidTradeOperate:
                code = .failedOperation_InvalidTradeOperate
            case .limitOperation:
                code = .failedOperation_LimitOperation
            case .masterInstanceQueryError:
                code = .failedOperation_MasterInstanceQueryError
            case .modifyROGroupError:
                code = .failedOperation_ModifyROGroupError
            case .networkNumLimitError:
                code = .failedOperation_NetworkNumLimitError
            case .operateFrequencyLimitedError:
                code = .failedOperation_OperateFrequencyLimitedError
            case .ossAccessError:
                code = .failedOperation_OssAccessError
            case .ossOperationFailed:
                code = .failedOperation_OssOperationFailed
            case .payOrderFailed:
                code = .failedOperation_PayOrderFailed
            case .postPaidUnblockError:
                code = .failedOperation_PostPaidUnblockError
            case .presignedURLGetError:
                code = .failedOperation_PresignedURLGetError
            case .queryDealFailed:
                code = .failedOperation_QueryDealFailed
            case .queryInstanceBatchError:
                code = .failedOperation_QueryInstanceBatchError
            case .queryPriceFailed:
                code = .failedOperation_QueryPriceFailed
            case .querySpecBySpecCodeError:
                code = .failedOperation_QuerySpecBySpecCodeError
            case .querySpecError:
                code = .failedOperation_QuerySpecError
            case .queryTradeStatusError:
                code = .failedOperation_QueryTradeStatusError
            case .queryVpcFailed:
                code = .failedOperation_QueryVpcFailed
            case .queryVpcFalied:
                code = .failedOperation_QueryVpcFalied
            case .roGroupCannotBeDeletedError:
                code = .failedOperation_ROGroupCannotBeDeletedError
            case .roGroupMasterInstanceNotRight:
                code = .failedOperation_ROGroupMasterInstanceNotRight
            case .roGroupNotFoundError:
                code = .failedOperation_ROGroupNotFoundError
            case .roGroupNumExceedError:
                code = .failedOperation_ROGroupNumExceedError
            case .roInstanceHasInROGroupError:
                code = .failedOperation_ROInstanceHasInROGroupError
            case .serverlessNotSupportedError:
                code = .failedOperation_ServerlessNotSupportedError
            case .serviceAccessError:
                code = .failedOperation_ServiceAccessError
            case .setAutoRenewFlagError:
                code = .failedOperation_SetAutoRenewFlagError
            case .storageMemoryCheckError:
                code = .failedOperation_StorageMemoryCheckError
            case .storePathSplitError:
                code = .failedOperation_StorePathSplitError
            case .tradeAccessError:
                code = .failedOperation_TradeAccessError
            case .tradeCreateError:
                code = .failedOperation_TradeCreateError
            case .tradePayOrdersError:
                code = .failedOperation_TradePayOrdersError
            case .tradeQueryOrderError:
                code = .failedOperation_TradeQueryOrderError
            case .tradeQueryPriceError:
                code = .failedOperation_TradeQueryPriceError
            case .updateResourceProjectTagValueError:
                code = .failedOperation_UpdateResourceProjectTagValueError
            case .vpcResetServiceError:
                code = .failedOperation_VPCResetServiceError
            case .vpcUpdateRouteError:
                code = .failedOperation_VPCUpdateRouteError
            case .whitelistConnectError:
                code = .failedOperation_WhitelistConnectError
            case .other:
                code = .failedOperation
            }
            return TCPostgresError(code, context: self.context)
        }
    }
}
